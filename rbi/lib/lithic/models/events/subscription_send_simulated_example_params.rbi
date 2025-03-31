# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionSendSimulatedExampleParams < Lithic::BaseModel
        extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # Event type to send example message for.
        sig { returns(T.nilable(Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::OrSymbol)) }
        attr_reader :event_type

        sig do
          params(event_type: Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::OrSymbol)
            .void
        end
        attr_writer :event_type

        sig do
          params(
            event_type: Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::OrSymbol,
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(event_type: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                event_type: Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::OrSymbol,
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash
        end

        # Event type to send example message for.
        module EventType
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol) }

          ACCOUNT_HOLDER_CREATED =
            T.let(
              :"account_holder.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          ACCOUNT_HOLDER_UPDATED =
            T.let(
              :"account_holder.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          ACCOUNT_HOLDER_VERIFICATION =
            T.let(
              :"account_holder.verification",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          AUTH_RULES_PERFORMANCE_REPORT_CREATED =
            T.let(
              :"auth_rules.performance_report.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          BALANCE_UPDATED =
            T.let(
              :"balance.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          BOOK_TRANSFER_TRANSACTION_CREATED =
            T.let(
              :"book_transfer_transaction.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_CREATED =
            T.let(
              :"card.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_RENEWED =
            T.let(
              :"card.renewed",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_REISSUED =
            T.let(
              :"card.reissued",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_CONVERTED =
            T.let(
              :"card.converted",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_SHIPPED =
            T.let(
              :"card.shipped",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_TRANSACTION_UPDATED =
            T.let(
              :"card_transaction.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
            T.let(
              :"digital_wallet.tokenization_approval_request",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_RESULT =
            T.let(
              :"digital_wallet.tokenization_result",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
            T.let(
              :"digital_wallet.tokenization_two_factor_authentication_code",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
            T.let(
              :"digital_wallet.tokenization_two_factor_authentication_code_sent",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_UPDATED =
            T.let(
              :"digital_wallet.tokenization_updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DISPUTE_UPDATED =
            T.let(
              :"dispute.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DISPUTE_EVIDENCE_UPLOAD_FAILED =
            T.let(
              :"dispute_evidence.upload_failed",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          EXTERNAL_BANK_ACCOUNT_CREATED =
            T.let(
              :"external_bank_account.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          EXTERNAL_BANK_ACCOUNT_UPDATED =
            T.let(
              :"external_bank_account.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          EXTERNAL_PAYMENT_CREATED =
            T.let(
              :"external_payment.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          EXTERNAL_PAYMENT_UPDATED =
            T.let(
              :"external_payment.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          FINANCIAL_ACCOUNT_CREATED =
            T.let(
              :"financial_account.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          FINANCIAL_ACCOUNT_UPDATED =
            T.let(
              :"financial_account.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          LOAN_TAPE_CREATED =
            T.let(
              :"loan_tape.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          LOAN_TAPE_UPDATED =
            T.let(
              :"loan_tape.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          MANAGEMENT_OPERATION_CREATED =
            T.let(
              :"management_operation.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          MANAGEMENT_OPERATION_UPDATED =
            T.let(
              :"management_operation.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          PAYMENT_TRANSACTION_CREATED =
            T.let(
              :"payment_transaction.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          PAYMENT_TRANSACTION_UPDATED =
            T.let(
              :"payment_transaction.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          INTERNAL_TRANSACTION_CREATED =
            T.let(
              :"internal_transaction.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          INTERNAL_TRANSACTION_UPDATED =
            T.let(
              :"internal_transaction.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          SETTLEMENT_REPORT_UPDATED =
            T.let(
              :"settlement_report.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          STATEMENTS_CREATED =
            T.let(
              :"statements.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION_CREATED =
            T.let(
              :"three_ds_authentication.created",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION_UPDATED =
            T.let(
              :"three_ds_authentication.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_APPROVAL_REQUEST =
            T.let(
              :"tokenization.approval_request",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_RESULT =
            T.let(
              :"tokenization.result",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
            T.let(
              :"tokenization.two_factor_authentication_code",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
            T.let(
              :"tokenization.two_factor_authentication_code_sent",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_UPDATED =
            T.let(
              :"tokenization.updated",
              Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )

          sig do
            override
              .returns(T::Array[Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol])
          end
          def self.values
          end
        end
      end
    end
  end
end
