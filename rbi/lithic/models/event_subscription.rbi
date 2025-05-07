# typed: strong

module Lithic
  module Models
    class EventSubscription < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # A description of the subscription.
      sig { returns(String) }
      attr_accessor :description

      # Whether the subscription is disabled.
      sig { returns(T::Boolean) }
      attr_accessor :disabled

      sig { returns(String) }
      attr_accessor :url

      sig do
        returns(
          T.nilable(
            T::Array[Lithic::EventSubscription::EventType::TaggedSymbol]
          )
        )
      end
      attr_accessor :event_types

      # A subscription to specific event types.
      sig do
        params(
          token: String,
          description: String,
          disabled: T::Boolean,
          url: String,
          event_types:
            T.nilable(T::Array[Lithic::EventSubscription::EventType::OrSymbol])
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # A description of the subscription.
        description:,
        # Whether the subscription is disabled.
        disabled:,
        url:,
        event_types: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            description: String,
            disabled: T::Boolean,
            url: String,
            event_types:
              T.nilable(
                T::Array[Lithic::EventSubscription::EventType::TaggedSymbol]
              )
          }
        )
      end
      def to_hash
      end

      module EventType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::EventSubscription::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_HOLDER_CREATED =
          T.let(
            :"account_holder.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        ACCOUNT_HOLDER_UPDATED =
          T.let(
            :"account_holder.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        ACCOUNT_HOLDER_VERIFICATION =
          T.let(
            :"account_holder.verification",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        AUTH_RULES_PERFORMANCE_REPORT_CREATED =
          T.let(
            :"auth_rules.performance_report.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        BALANCE_UPDATED =
          T.let(
            :"balance.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        BOOK_TRANSFER_TRANSACTION_CREATED =
          T.let(
            :"book_transfer_transaction.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        CARD_CREATED =
          T.let(
            :"card.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        CARD_RENEWED =
          T.let(
            :"card.renewed",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        CARD_REISSUED =
          T.let(
            :"card.reissued",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        CARD_CONVERTED =
          T.let(
            :"card.converted",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        CARD_SHIPPED =
          T.let(
            :"card.shipped",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        CARD_TRANSACTION_UPDATED =
          T.let(
            :"card_transaction.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
          T.let(
            :"digital_wallet.tokenization_approval_request",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_RESULT =
          T.let(
            :"digital_wallet.tokenization_result",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          T.let(
            :"digital_wallet.tokenization_two_factor_authentication_code",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          T.let(
            :"digital_wallet.tokenization_two_factor_authentication_code_sent",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_UPDATED =
          T.let(
            :"digital_wallet.tokenization_updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        DISPUTE_EVIDENCE_UPLOAD_FAILED =
          T.let(
            :"dispute_evidence.upload_failed",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        EXTERNAL_BANK_ACCOUNT_CREATED =
          T.let(
            :"external_bank_account.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        EXTERNAL_BANK_ACCOUNT_UPDATED =
          T.let(
            :"external_bank_account.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        EXTERNAL_PAYMENT_CREATED =
          T.let(
            :"external_payment.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        EXTERNAL_PAYMENT_UPDATED =
          T.let(
            :"external_payment.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        FINANCIAL_ACCOUNT_CREATED =
          T.let(
            :"financial_account.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        FINANCIAL_ACCOUNT_UPDATED =
          T.let(
            :"financial_account.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        LOAN_TAPE_CREATED =
          T.let(
            :"loan_tape.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        LOAN_TAPE_UPDATED =
          T.let(
            :"loan_tape.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        MANAGEMENT_OPERATION_CREATED =
          T.let(
            :"management_operation.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        MANAGEMENT_OPERATION_UPDATED =
          T.let(
            :"management_operation.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        PAYMENT_TRANSACTION_CREATED =
          T.let(
            :"payment_transaction.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        PAYMENT_TRANSACTION_UPDATED =
          T.let(
            :"payment_transaction.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        INTERNAL_TRANSACTION_CREATED =
          T.let(
            :"internal_transaction.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        INTERNAL_TRANSACTION_UPDATED =
          T.let(
            :"internal_transaction.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        SETTLEMENT_REPORT_UPDATED =
          T.let(
            :"settlement_report.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        STATEMENTS_CREATED =
          T.let(
            :"statements.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        THREE_DS_AUTHENTICATION_CREATED =
          T.let(
            :"three_ds_authentication.created",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        THREE_DS_AUTHENTICATION_UPDATED =
          T.let(
            :"three_ds_authentication.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        TOKENIZATION_APPROVAL_REQUEST =
          T.let(
            :"tokenization.approval_request",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        TOKENIZATION_RESULT =
          T.let(
            :"tokenization.result",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          T.let(
            :"tokenization.two_factor_authentication_code",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          T.let(
            :"tokenization.two_factor_authentication_code_sent",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )
        TOKENIZATION_UPDATED =
          T.let(
            :"tokenization.updated",
            Lithic::EventSubscription::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::EventSubscription::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
