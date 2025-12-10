# typed: strong

module Lithic
  module Models
    class AccountHolderVerificationWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::AccountHolderVerificationWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The token of the account_holder being verified.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # The token of the account being verified.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # When the account_holder verification status was updated
      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      # The status of the account_holder that was created
      sig do
        returns(
          T.nilable(
            Lithic::AccountHolderVerificationWebhookEvent::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            Lithic::AccountHolderVerificationWebhookEvent::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :status_reasons

      sig { params(status_reasons: T::Array[String]).void }
      attr_writer :status_reasons

      sig do
        params(
          token: String,
          account_token: String,
          created: Time,
          status:
            Lithic::AccountHolderVerificationWebhookEvent::Status::OrSymbol,
          status_reasons: T::Array[String],
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the account_holder being verified.
        token: nil,
        # The token of the account being verified.
        account_token: nil,
        # When the account_holder verification status was updated
        created: nil,
        # The status of the account_holder that was created
        status: nil,
        status_reasons: nil,
        # The type of event that occurred.
        event_type: :"account_holder.verification"
      )
      end

      sig do
        override.returns(
          {
            event_type: Symbol,
            token: String,
            account_token: String,
            created: Time,
            status:
              Lithic::AccountHolderVerificationWebhookEvent::Status::TaggedSymbol,
            status_reasons: T::Array[String]
          }
        )
      end
      def to_hash
      end

      # The status of the account_holder that was created
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AccountHolderVerificationWebhookEvent::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPTED =
          T.let(
            :ACCEPTED,
            Lithic::AccountHolderVerificationWebhookEvent::Status::TaggedSymbol
          )
        PENDING_REVIEW =
          T.let(
            :PENDING_REVIEW,
            Lithic::AccountHolderVerificationWebhookEvent::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :REJECTED,
            Lithic::AccountHolderVerificationWebhookEvent::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderVerificationWebhookEvent::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
