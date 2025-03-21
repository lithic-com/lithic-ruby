# typed: strong

module Lithic
  module Models
    class MessageAttempt < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # An RFC 3339 timestamp for when the event was created. UTC time zone.
      #
      #   If no timezone is specified, UTC will be used.
      sig { returns(Time) }
      attr_accessor :created

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :event_subscription_token

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :event_token

      # The response body from the event subscription's URL.
      sig { returns(String) }
      attr_accessor :response

      # The response status code from the event subscription's URL.
      sig { returns(Integer) }
      attr_accessor :response_status_code

      # The status of the event attempt.
      sig { returns(Lithic::Models::MessageAttempt::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :url

      # A subscription to specific event types.
      sig do
        params(
          token: String,
          created: Time,
          event_subscription_token: String,
          event_token: String,
          response: String,
          response_status_code: Integer,
          status: Lithic::Models::MessageAttempt::Status::OrSymbol,
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
              status: Lithic::Models::MessageAttempt::Status::TaggedSymbol,
              url: String
            }
          )
      end
      def to_hash
      end

      # The status of the event attempt.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::MessageAttempt::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::MessageAttempt::Status::TaggedSymbol) }

        FAILED = T.let(:FAILED, Lithic::Models::MessageAttempt::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::MessageAttempt::Status::TaggedSymbol)
        SENDING = T.let(:SENDING, Lithic::Models::MessageAttempt::Status::TaggedSymbol)
        SUCCESS = T.let(:SUCCESS, Lithic::Models::MessageAttempt::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::MessageAttempt::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
