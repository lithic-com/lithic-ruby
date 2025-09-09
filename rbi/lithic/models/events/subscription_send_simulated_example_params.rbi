# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionSendSimulatedExampleParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::Events::SubscriptionSendSimulatedExampleParams,
              Lithic::Internal::AnyHash
            )
          end

        # Event type to send example message for.
        sig do
          returns(
            T.nilable(
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::OrSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        sig do
          params(
            event_type:
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Event type to send example message for.
          event_type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              event_type:
                Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Event type to send example message for.
        module EventType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_HOLDER_CREATED =
            T.let(
              :"account_holder.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          ACCOUNT_HOLDER_UPDATED =
            T.let(
              :"account_holder.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          ACCOUNT_HOLDER_VERIFICATION =
            T.let(
              :"account_holder.verification",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          AUTH_RULES_PERFORMANCE_REPORT_CREATED =
            T.let(
              :"auth_rules.performance_report.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          BALANCE_UPDATED =
            T.let(
              :"balance.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          BOOK_TRANSFER_TRANSACTION_CREATED =
            T.let(
              :"book_transfer_transaction.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_CREATED =
            T.let(
              :"card.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_RENEWED =
            T.let(
              :"card.renewed",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_REISSUED =
            T.let(
              :"card.reissued",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_CONVERTED =
            T.let(
              :"card.converted",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_SHIPPED =
            T.let(
              :"card.shipped",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          CARD_TRANSACTION_UPDATED =
            T.let(
              :"card_transaction.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
            T.let(
              :"digital_wallet.tokenization_approval_request",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_RESULT =
            T.let(
              :"digital_wallet.tokenization_result",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
            T.let(
              :"digital_wallet.tokenization_two_factor_authentication_code",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
            T.let(
              :"digital_wallet.tokenization_two_factor_authentication_code_sent",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_UPDATED =
            T.let(
              :"digital_wallet.tokenization_updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DISPUTE_UPDATED =
            T.let(
              :"dispute.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DISPUTE_EVIDENCE_UPLOAD_FAILED =
            T.let(
              :"dispute_evidence.upload_failed",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DISPUTE_TRANSACTION_CREATED =
            T.let(
              :"dispute_transaction.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          DISPUTE_TRANSACTION_UPDATED =
            T.let(
              :"dispute_transaction.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          EXTERNAL_BANK_ACCOUNT_CREATED =
            T.let(
              :"external_bank_account.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          EXTERNAL_BANK_ACCOUNT_UPDATED =
            T.let(
              :"external_bank_account.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          EXTERNAL_PAYMENT_CREATED =
            T.let(
              :"external_payment.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          EXTERNAL_PAYMENT_UPDATED =
            T.let(
              :"external_payment.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          FINANCIAL_ACCOUNT_CREATED =
            T.let(
              :"financial_account.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          FINANCIAL_ACCOUNT_UPDATED =
            T.let(
              :"financial_account.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          FUNDING_EVENT_CREATED =
            T.let(
              :"funding_event.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          LOAN_TAPE_CREATED =
            T.let(
              :"loan_tape.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          LOAN_TAPE_UPDATED =
            T.let(
              :"loan_tape.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          MANAGEMENT_OPERATION_CREATED =
            T.let(
              :"management_operation.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          MANAGEMENT_OPERATION_UPDATED =
            T.let(
              :"management_operation.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          NETWORK_TOTAL_CREATED =
            T.let(
              :"network_total.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          NETWORK_TOTAL_UPDATED =
            T.let(
              :"network_total.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          PAYMENT_TRANSACTION_CREATED =
            T.let(
              :"payment_transaction.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          PAYMENT_TRANSACTION_UPDATED =
            T.let(
              :"payment_transaction.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          INTERNAL_TRANSACTION_CREATED =
            T.let(
              :"internal_transaction.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          INTERNAL_TRANSACTION_UPDATED =
            T.let(
              :"internal_transaction.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          SETTLEMENT_REPORT_UPDATED =
            T.let(
              :"settlement_report.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          STATEMENTS_CREATED =
            T.let(
              :"statements.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION_CREATED =
            T.let(
              :"three_ds_authentication.created",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION_UPDATED =
            T.let(
              :"three_ds_authentication.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_APPROVAL_REQUEST =
            T.let(
              :"tokenization.approval_request",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_RESULT =
            T.let(
              :"tokenization.result",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
            T.let(
              :"tokenization.two_factor_authentication_code",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
            T.let(
              :"tokenization.two_factor_authentication_code_sent",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )
          TOKENIZATION_UPDATED =
            T.let(
              :"tokenization.updated",
              Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
