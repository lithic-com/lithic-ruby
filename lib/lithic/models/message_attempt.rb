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
      #   If no timezone is specified, UTC will be used.
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
      required :status, enum: -> { Lithic::MessageAttempt::Status }

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(token:, created:, event_subscription_token:, event_token:, response:, response_status_code:, status:, url:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::MessageAttempt} for more details.
      #
      #   A subscription to specific event types.
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param created [Time] An RFC 3339 timestamp for when the event was created. UTC time zone.
      #
      #   @param event_subscription_token [String] Globally unique identifier.
      #
      #   @param event_token [String] Globally unique identifier.
      #
      #   @param response [String] The response body from the event subscription's URL.
      #
      #   @param response_status_code [Integer] The response status code from the event subscription's URL.
      #
      #   @param status [Symbol, Lithic::Models::MessageAttempt::Status] The status of the event attempt.
      #
      #   @param url [String]

      # The status of the event attempt.
      #
      # @see Lithic::Models::MessageAttempt#status
      module Status
        extend Lithic::Internal::Type::Enum

        FAILED = :FAILED
        PENDING = :PENDING
        SENDING = :SENDING
        SUCCESS = :SUCCESS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
