# frozen_string_literal: true

module Lithic
  module Errors
    class Error < StandardError
      # @!parse
      #   # @return [StandardError, nil]
      #   attr_accessor :cause
    end

    class ConversionError < Lithic::Errors::Error
    end

    class APIError < Lithic::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < Lithic::Errors::APIError
      # @!parse
      #   # @return [nil]
      #   attr_accessor :status

      # @!parse
      #   # @return [nil]
      #   attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < Lithic::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < Lithic::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [Lithic::Errors::APIStatusError]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          Lithic::Errors::BadRequestError.new(**kwargs)
        in 401
          Lithic::Errors::AuthenticationError.new(**kwargs)
        in 403
          Lithic::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          Lithic::Errors::NotFoundError.new(**kwargs)
        in 409
          Lithic::Errors::ConflictError.new(**kwargs)
        in 422
          Lithic::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          Lithic::Errors::RateLimitError.new(**kwargs)
        in (500..)
          Lithic::Errors::InternalServerError.new(**kwargs)
        else
          Lithic::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )
      end
    end

    class BadRequestError < Lithic::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < Lithic::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < Lithic::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < Lithic::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < Lithic::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < Lithic::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < Lithic::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < Lithic::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end
end
