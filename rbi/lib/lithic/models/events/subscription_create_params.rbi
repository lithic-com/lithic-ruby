# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionCreateParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # URL to which event webhooks will be sent. URL must be a valid HTTPS address.
        sig { returns(String) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

        # Event subscription description.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        # Whether the event subscription is active (false) or inactive (true).
        sig { returns(T.nilable(T::Boolean)) }
        def disabled
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def disabled=(_)
        end

        # Indicates types of events that will be sent to this subscription. If left blank,
        #   all types will be sent.
        sig { returns(T.nilable(T::Array[Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol])) }
        def event_types
        end

        sig do
          params(_: T::Array[Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol])
            .returns(T::Array[Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol])
        end
        def event_types=(_)
        end

        sig do
          params(
            url: String,
            description: String,
            disabled: T::Boolean,
            event_types: T::Array[Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol],
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(url:, description: nil, disabled: nil, event_types: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                url: String,
                description: String,
                disabled: T::Boolean,
                event_types: T::Array[Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol],
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash
        end

        module EventType
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Events::SubscriptionCreateParams::EventType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Events::SubscriptionCreateParams::EventType::TaggedSymbol) }

          ACCOUNT_HOLDER_CREATED =
            T.let(:"account_holder.created", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          ACCOUNT_HOLDER_UPDATED =
            T.let(:"account_holder.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          ACCOUNT_HOLDER_VERIFICATION =
            T.let(
              :"account_holder.verification",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          AUTH_RULES_PERFORMANCE_REPORT_CREATED =
            T.let(
              :"auth_rules.performance_report.created",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          BALANCE_UPDATED =
            T.let(:"balance.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          BOOK_TRANSFER_TRANSACTION_CREATED =
            T.let(
              :"book_transfer_transaction.created",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          CARD_CREATED =
            T.let(:"card.created", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          CARD_RENEWED =
            T.let(:"card.renewed", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          CARD_REISSUED =
            T.let(:"card.reissued", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          CARD_CONVERTED =
            T.let(:"card.converted", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          CARD_SHIPPED =
            T.let(:"card.shipped", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          CARD_TRANSACTION_UPDATED =
            T.let(:"card_transaction.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
            T.let(
              :"digital_wallet.tokenization_approval_request",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_RESULT =
            T.let(
              :"digital_wallet.tokenization_result",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
            T.let(
              :"digital_wallet.tokenization_two_factor_authentication_code",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
            T.let(
              :"digital_wallet.tokenization_two_factor_authentication_code_sent",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          DIGITAL_WALLET_TOKENIZATION_UPDATED =
            T.let(
              :"digital_wallet.tokenization_updated",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          DISPUTE_UPDATED =
            T.let(:"dispute.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          DISPUTE_EVIDENCE_UPLOAD_FAILED =
            T.let(
              :"dispute_evidence.upload_failed",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          EXTERNAL_BANK_ACCOUNT_CREATED =
            T.let(
              :"external_bank_account.created",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          EXTERNAL_BANK_ACCOUNT_UPDATED =
            T.let(
              :"external_bank_account.updated",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          EXTERNAL_PAYMENT_CREATED =
            T.let(:"external_payment.created", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          EXTERNAL_PAYMENT_UPDATED =
            T.let(:"external_payment.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          FINANCIAL_ACCOUNT_CREATED =
            T.let(:"financial_account.created", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          FINANCIAL_ACCOUNT_UPDATED =
            T.let(:"financial_account.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          LOAN_TAPE_CREATED =
            T.let(:"loan_tape.created", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          LOAN_TAPE_UPDATED =
            T.let(:"loan_tape.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          MANAGEMENT_OPERATION_CREATED =
            T.let(
              :"management_operation.created",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          MANAGEMENT_OPERATION_UPDATED =
            T.let(
              :"management_operation.updated",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          PAYMENT_TRANSACTION_CREATED =
            T.let(
              :"payment_transaction.created",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          PAYMENT_TRANSACTION_UPDATED =
            T.let(
              :"payment_transaction.updated",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          INTERNAL_TRANSACTION_CREATED =
            T.let(
              :"internal_transaction.created",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          INTERNAL_TRANSACTION_UPDATED =
            T.let(
              :"internal_transaction.updated",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          SETTLEMENT_REPORT_UPDATED =
            T.let(:"settlement_report.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          STATEMENTS_CREATED =
            T.let(:"statements.created", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          THREE_DS_AUTHENTICATION_CREATED =
            T.let(
              :"three_ds_authentication.created",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          THREE_DS_AUTHENTICATION_UPDATED =
            T.let(
              :"three_ds_authentication.updated",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          TOKENIZATION_APPROVAL_REQUEST =
            T.let(
              :"tokenization.approval_request",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          TOKENIZATION_RESULT =
            T.let(:"tokenization.result", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
          TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
            T.let(
              :"tokenization.two_factor_authentication_code",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
            T.let(
              :"tokenization.two_factor_authentication_code_sent",
              Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol
            )
          TOKENIZATION_UPDATED =
            T.let(:"tokenization.updated", Lithic::Models::Events::SubscriptionCreateParams::EventType::OrSymbol)
        end
      end
    end
  end
end
