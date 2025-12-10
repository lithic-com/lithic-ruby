# typed: strong

module Lithic
  module Models
    class AccountHolderCreatedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::AccountHolderCreatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The token of the account_holder that was created.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # The token of the account that was created.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # When the account_holder was created
      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      sig { returns(T.nilable(T::Array[Lithic::RequiredDocument])) }
      attr_reader :required_documents

      sig do
        params(
          required_documents: T::Array[Lithic::RequiredDocument::OrHash]
        ).void
      end
      attr_writer :required_documents

      # The status of the account_holder that was created.
      sig do
        returns(
          T.nilable(
            Lithic::AccountHolderCreatedWebhookEvent::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: Lithic::AccountHolderCreatedWebhookEvent::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :status_reason

      sig { params(status_reason: T::Array[String]).void }
      attr_writer :status_reason

      sig do
        params(
          token: String,
          account_token: String,
          created: Time,
          required_documents: T::Array[Lithic::RequiredDocument::OrHash],
          status: Lithic::AccountHolderCreatedWebhookEvent::Status::OrSymbol,
          status_reason: T::Array[String],
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the account_holder that was created.
        token: nil,
        # The token of the account that was created.
        account_token: nil,
        # When the account_holder was created
        created: nil,
        required_documents: nil,
        # The status of the account_holder that was created.
        status: nil,
        status_reason: nil,
        # The type of event that occurred.
        event_type: :"account_holder.created"
      )
      end

      sig do
        override.returns(
          {
            event_type: Symbol,
            token: String,
            account_token: String,
            created: Time,
            required_documents: T::Array[Lithic::RequiredDocument],
            status:
              Lithic::AccountHolderCreatedWebhookEvent::Status::TaggedSymbol,
            status_reason: T::Array[String]
          }
        )
      end
      def to_hash
      end

      # The status of the account_holder that was created.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AccountHolderCreatedWebhookEvent::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPTED =
          T.let(
            :ACCEPTED,
            Lithic::AccountHolderCreatedWebhookEvent::Status::TaggedSymbol
          )
        PENDING_REVIEW =
          T.let(
            :PENDING_REVIEW,
            Lithic::AccountHolderCreatedWebhookEvent::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderCreatedWebhookEvent::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
