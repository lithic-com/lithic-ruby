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
      sig { returns(Lithic::Models::MessageAttempt::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Lithic::Models::MessageAttempt::Status::TaggedSymbol)
          .returns(Lithic::Models::MessageAttempt::Status::TaggedSymbol)
      end
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
          status: Lithic::Models::MessageAttempt::Status::TaggedSymbol,
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

        class << self
          sig { override.returns(T::Array[Lithic::Models::MessageAttempt::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
