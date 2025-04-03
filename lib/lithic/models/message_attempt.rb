# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Events#list_attempts
    class MessageAttempt < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute created
      #   An RFC 3339 timestamp for when the event was created. UTC time zone.
      #
      #     If no timezone is specified, UTC will be used.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute event_subscription_token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :event_subscription_token, String

      # @!attribute event_token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :event_token, String

      # @!attribute response
      #   The response body from the event subscription's URL.
      #
      #   @return [String]
      required :response, String

      # @!attribute response_status_code
      #   The response status code from the event subscription's URL.
      #
      #   @return [Integer]
      required :response_status_code, Integer

      # @!attribute status
      #   The status of the event attempt.
      #
      #   @return [Symbol, Lithic::Models::MessageAttempt::Status]
      required :status, enum: -> { Lithic::Models::MessageAttempt::Status }

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!parse
      #   # A subscription to specific event types.
      #   #
      #   # @param token [String]
      #   # @param created [Time]
      #   # @param event_subscription_token [String]
      #   # @param event_token [String]
      #   # @param response [String]
      #   # @param response_status_code [Integer]
      #   # @param status [Symbol, Lithic::Models::MessageAttempt::Status]
      #   # @param url [String]
      #   #
      #   def initialize(
      #     token:,
      #     created:,
      #     event_subscription_token:,
      #     event_token:,
      #     response:,
      #     response_status_code:,
      #     status:,
      #     url:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # The status of the event attempt.
      #
      # @see Lithic::Models::MessageAttempt#status
      module Status
        extend Lithic::Internal::Type::Enum

        FAILED = :FAILED
        PENDING = :PENDING
        SENDING = :SENDING
        SUCCESS = :SUCCESS

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
