# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::Events::SubscriptionUpdateParams,
              Lithic::Internal::AnyHash
            )
          end

        # URL to which event webhooks will be sent. URL must be a valid HTTPS address.
        sig { returns(String) }
        attr_accessor :url

        # Event subscription description.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Whether the event subscription is active (false) or inactive (true).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :disabled

        sig { params(disabled: T::Boolean).void }
        attr_writer :disabled

        # Indicates types of events that will be sent to this subscription. If left blank,
        # all types will be sent.
        sig do
          returns(
            T.nilable(
              T::Array[
                Lithic::Events::SubscriptionUpdateParams::EventType::OrSymbol
              ]
            )
          )
        end
        attr_reader :event_types

        sig do
          params(
            event_types:
              T::Array[
                Lithic::Events::SubscriptionUpdateParams::EventType::OrSymbol
              ]
          ).void
        end
        attr_writer :event_types

        sig do
          params(
            url: String,
            description: String,
            disabled: T::Boolean,
            event_types:
              T::Array[
                Lithic::Events::SubscriptionUpdateParams::EventType::OrSymbol
              ],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # URL to which event webhooks will be sent. URL must be a valid HTTPS address.
          url:,
          # Event subscription description.
          description: nil,
          # Whether the event subscription is active (false) or inactive (true).
          disabled: nil,
          # Indicates types of events that will be sent to this subscription. If left blank,
          # all types will be sent.
          event_types: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              url: String,
              description: String,
              disabled: T::Boolean,
              event_types:
                T::Array[
                  Lithic::Events::SubscriptionUpdateParams::EventType::OrSymbol
                ],
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        module EventType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Events::SubscriptionUpdateParams::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_HOLDER_CREATED =
            T.let(
              :"account_holder.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          ACCOUNT_HOLDER_UPDATED =
            T.let(
              :"account_holder.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          ACCOUNT_HOLDER_VERIFICATION =
            T.let(
              :"account_holder.verification",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          BALANCE_UPDATED =
            T.let(
              :"balance.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          BOOK_TRANSFER_TRANSACTION_CREATED =
            T.let(
              :"book_transfer_transaction.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          CARD_CREATED =
            T.let(
              :"card.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          CARD_RENEWED =
            T.let(
              :"card.renewed",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          CARD_REISSUED =
            T.let(
              :"card.reissued",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          CARD_CONVERTED =
            T.let(
              :"card.converted",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          CARD_SHIPPED =
            T.let(
              :"card.shipped",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          CARD_TRANSACTION_UPDATED =
            T.let(
              :"card_transaction.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
            T.let(
              :"digital_wallet.tokenization_approval_request",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_RESULT =
            T.let(
              :"digital_wallet.tokenization_result",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
            T.let(
              :"digital_wallet.tokenization_two_factor_authentication_code",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
            T.let(
              :"digital_wallet.tokenization_two_factor_authentication_code_sent",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_UPDATED =
            T.let(
              :"digital_wallet.tokenization_updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DISPUTE_UPDATED =
            T.let(
              :"dispute.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DISPUTE_EVIDENCE_UPLOAD_FAILED =
            T.let(
              :"dispute_evidence.upload_failed",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DISPUTE_TRANSACTION_CREATED =
            T.let(
              :"dispute_transaction.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          DISPUTE_TRANSACTION_UPDATED =
            T.let(
              :"dispute_transaction.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          EXTERNAL_BANK_ACCOUNT_CREATED =
            T.let(
              :"external_bank_account.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          EXTERNAL_BANK_ACCOUNT_UPDATED =
            T.let(
              :"external_bank_account.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          EXTERNAL_PAYMENT_CREATED =
            T.let(
              :"external_payment.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          EXTERNAL_PAYMENT_UPDATED =
            T.let(
              :"external_payment.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          FINANCIAL_ACCOUNT_CREATED =
            T.let(
              :"financial_account.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          FINANCIAL_ACCOUNT_UPDATED =
            T.let(
              :"financial_account.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          FUNDING_EVENT_CREATED =
            T.let(
              :"funding_event.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          LOAN_TAPE_CREATED =
            T.let(
              :"loan_tape.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          LOAN_TAPE_UPDATED =
            T.let(
              :"loan_tape.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          MANAGEMENT_OPERATION_CREATED =
            T.let(
              :"management_operation.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          MANAGEMENT_OPERATION_UPDATED =
            T.let(
              :"management_operation.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          NETWORK_TOTAL_CREATED =
            T.let(
              :"network_total.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          NETWORK_TOTAL_UPDATED =
            T.let(
              :"network_total.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          PAYMENT_TRANSACTION_CREATED =
            T.let(
              :"payment_transaction.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          PAYMENT_TRANSACTION_UPDATED =
            T.let(
              :"payment_transaction.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          INTERNAL_TRANSACTION_CREATED =
            T.let(
              :"internal_transaction.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          INTERNAL_TRANSACTION_UPDATED =
            T.let(
              :"internal_transaction.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          SETTLEMENT_REPORT_UPDATED =
            T.let(
              :"settlement_report.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          STATEMENTS_CREATED =
            T.let(
              :"statements.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION_CREATED =
            T.let(
              :"three_ds_authentication.created",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION_UPDATED =
            T.let(
              :"three_ds_authentication.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          TOKENIZATION_APPROVAL_REQUEST =
            T.let(
              :"tokenization.approval_request",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          TOKENIZATION_RESULT =
            T.let(
              :"tokenization.result",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
            T.let(
              :"tokenization.two_factor_authentication_code",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
            T.let(
              :"tokenization.two_factor_authentication_code_sent",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )
          TOKENIZATION_UPDATED =
            T.let(
              :"tokenization.updated",
              Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Events::SubscriptionUpdateParams::EventType::TaggedSymbol
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
