# typed: strong

module Lithic
  module Models
    class MessageAttempt < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # An RFC 3339 timestamp for when the event was created. UTC time zone.
      #
      #   If no timezone is specified, UTC will be used.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # Globally unique identifier.
      sig { returns(String) }
      def event_subscription_token
      end

      sig { params(_: String).returns(String) }
      def event_subscription_token=(_)
      end

      # Globally unique identifier.
      sig { returns(String) }
      def event_token
      end

      sig { params(_: String).returns(String) }
      def event_token=(_)
      end

      # The response body from the event subscription's URL.
      sig { returns(String) }
      def response
      end

      sig { params(_: String).returns(String) }
      def response=(_)
      end

      # The response status code from the event subscription's URL.
      sig { returns(Integer) }
      def response_status_code
      end

      sig { params(_: Integer).returns(Integer) }
      def response_status_code=(_)
      end

      # The status of the event attempt.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(String) }
      def url
      end

      sig { params(_: String).returns(String) }
      def url=(_)
      end

      # A subscription to specific event types.
      sig do
        params(
          token: String,
          created: Time,
          event_subscription_token: String,
          event_token: String,
          response: String,
          response_status_code: Integer,
          status: Symbol,
          url: String
        )
          .returns(T.attached_class)
      end
      def self.new(token:, created:, event_subscription_token:, event_token:, response:, response_status_code:, status:, url:)
      end

      sig do
        override
          .returns(
            {
              token: String,
              created: Time,
              event_subscription_token: String,
              event_token: String,
              response: String,
              response_status_code: Integer,
              status: Symbol,
              url: String
            }
          )
      end
      def to_hash
      end

      # The status of the event attempt.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        FAILED = :FAILED
        PENDING = :PENDING
        SENDING = :SENDING
        SUCCESS = :SUCCESS
      end
    end
  end
end
