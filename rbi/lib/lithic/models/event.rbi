# typed: strong

module Lithic
  module Models
    class Event < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # An RFC 3339 timestamp for when the event was created. UTC time zone.
      #
      #   If no timezone is specified, UTC will be used.
      sig { returns(Time) }
      attr_accessor :created

      # Event types:
      #
      #   - `account_holder.created` - Notification that a new account holder has been
      #     created and was not rejected.
      #   - `account_holder.updated` - Notification that an account holder was updated.
      #   - `account_holder.verification` - Notification than an account holder's identity
      #     verification is complete.
      #   - `card.created` - Notification that a card has been created.
      #   - `card.renewed` - Notification that a card has been renewed.
      #   - `card.reissued` - Notification that a card has been reissued.
      #   - `card.shipped` - Physical card shipment notification. See
      #     https://docs.lithic.com/docs/cards#physical-card-shipped-webhook.
      #   - `card.converted` - Notification that a virtual card has been converted to a
      #     physical card.
      #   - `card_transaction.updated` - Transaction Lifecycle webhook. See
      #     https://docs.lithic.com/docs/transaction-webhooks.
      #   - `dispute.updated` - A dispute has been updated.
      #   - `digital_wallet.tokenization_approval_request` - Card network's request to
      #     Lithic to activate a digital wallet token.
      #   - `digital_wallet.tokenization_result` - Notification of the end result of a
      #     tokenization, whether successful or failed.
      #   - `digital_wallet.tokenization_two_factor_authentication_code` - A code to be
      #     passed to an end user to complete digital wallet authentication. See
      #     https://docs.lithic.com/docs/tokenization-control#digital-wallet-tokenization-auth-code.
      #   - `digital_wallet.tokenization_two_factor_authentication_code_sent` -
      #     Notification that a two factor authentication code for activating a digital
      #     wallet has been sent to the end user.
      #   - `digital_wallet.tokenization_updated` - Notification that a digital wallet
      #     tokenization's status has changed.
      sig { returns(Lithic::Models::Event::EventType::TaggedSymbol) }
      attr_accessor :event_type

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :payload

      # A single event that affects the transaction state and lifecycle.
      sig do
        params(
          token: String,
          created: Time,
          event_type: Lithic::Models::Event::EventType::OrSymbol,
          payload: T::Hash[Symbol, T.anything]
        )
          .returns(T.attached_class)
      end
      def self.new(token:, created:, event_type:, payload:)
      end

      sig do
        override
          .returns(
            {
              token: String,
              created: Time,
              event_type: Lithic::Models::Event::EventType::TaggedSymbol,
              payload: T::Hash[Symbol, T.anything]
            }
          )
      end
      def to_hash
      end

      # Event types:
      #
      #   - `account_holder.created` - Notification that a new account holder has been
      #     created and was not rejected.
      #   - `account_holder.updated` - Notification that an account holder was updated.
      #   - `account_holder.verification` - Notification than an account holder's identity
      #     verification is complete.
      #   - `card.created` - Notification that a card has been created.
      #   - `card.renewed` - Notification that a card has been renewed.
      #   - `card.reissued` - Notification that a card has been reissued.
      #   - `card.shipped` - Physical card shipment notification. See
      #     https://docs.lithic.com/docs/cards#physical-card-shipped-webhook.
      #   - `card.converted` - Notification that a virtual card has been converted to a
      #     physical card.
      #   - `card_transaction.updated` - Transaction Lifecycle webhook. See
      #     https://docs.lithic.com/docs/transaction-webhooks.
      #   - `dispute.updated` - A dispute has been updated.
      #   - `digital_wallet.tokenization_approval_request` - Card network's request to
      #     Lithic to activate a digital wallet token.
      #   - `digital_wallet.tokenization_result` - Notification of the end result of a
      #     tokenization, whether successful or failed.
      #   - `digital_wallet.tokenization_two_factor_authentication_code` - A code to be
      #     passed to an end user to complete digital wallet authentication. See
      #     https://docs.lithic.com/docs/tokenization-control#digital-wallet-tokenization-auth-code.
      #   - `digital_wallet.tokenization_two_factor_authentication_code_sent` -
      #     Notification that a two factor authentication code for activating a digital
      #     wallet has been sent to the end user.
      #   - `digital_wallet.tokenization_updated` - Notification that a digital wallet
      #     tokenization's status has changed.
      module EventType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Event::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Event::EventType::TaggedSymbol) }

        ACCOUNT_HOLDER_CREATED = T.let(:"account_holder.created", Lithic::Models::Event::EventType::TaggedSymbol)
        ACCOUNT_HOLDER_UPDATED = T.let(:"account_holder.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        ACCOUNT_HOLDER_VERIFICATION =
          T.let(:"account_holder.verification", Lithic::Models::Event::EventType::TaggedSymbol)
        AUTH_RULES_PERFORMANCE_REPORT_CREATED =
          T.let(:"auth_rules.performance_report.created", Lithic::Models::Event::EventType::TaggedSymbol)
        BALANCE_UPDATED = T.let(:"balance.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        BOOK_TRANSFER_TRANSACTION_CREATED =
          T.let(:"book_transfer_transaction.created", Lithic::Models::Event::EventType::TaggedSymbol)
        CARD_CREATED = T.let(:"card.created", Lithic::Models::Event::EventType::TaggedSymbol)
        CARD_RENEWED = T.let(:"card.renewed", Lithic::Models::Event::EventType::TaggedSymbol)
        CARD_REISSUED = T.let(:"card.reissued", Lithic::Models::Event::EventType::TaggedSymbol)
        CARD_CONVERTED = T.let(:"card.converted", Lithic::Models::Event::EventType::TaggedSymbol)
        CARD_SHIPPED = T.let(:"card.shipped", Lithic::Models::Event::EventType::TaggedSymbol)
        CARD_TRANSACTION_UPDATED =
          T.let(:"card_transaction.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
          T.let(:"digital_wallet.tokenization_approval_request", Lithic::Models::Event::EventType::TaggedSymbol)
        DIGITAL_WALLET_TOKENIZATION_RESULT =
          T.let(:"digital_wallet.tokenization_result", Lithic::Models::Event::EventType::TaggedSymbol)
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          T.let(
            :"digital_wallet.tokenization_two_factor_authentication_code",
            Lithic::Models::Event::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          T.let(
            :"digital_wallet.tokenization_two_factor_authentication_code_sent",
            Lithic::Models::Event::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_UPDATED =
          T.let(:"digital_wallet.tokenization_updated", Lithic::Models::Event::EventType::TaggedSymbol)
        DISPUTE_UPDATED = T.let(:"dispute.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        DISPUTE_EVIDENCE_UPLOAD_FAILED =
          T.let(:"dispute_evidence.upload_failed", Lithic::Models::Event::EventType::TaggedSymbol)
        EXTERNAL_BANK_ACCOUNT_CREATED =
          T.let(:"external_bank_account.created", Lithic::Models::Event::EventType::TaggedSymbol)
        EXTERNAL_BANK_ACCOUNT_UPDATED =
          T.let(:"external_bank_account.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        EXTERNAL_PAYMENT_CREATED =
          T.let(:"external_payment.created", Lithic::Models::Event::EventType::TaggedSymbol)
        EXTERNAL_PAYMENT_UPDATED =
          T.let(:"external_payment.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        FINANCIAL_ACCOUNT_CREATED =
          T.let(:"financial_account.created", Lithic::Models::Event::EventType::TaggedSymbol)
        FINANCIAL_ACCOUNT_UPDATED =
          T.let(:"financial_account.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        LOAN_TAPE_CREATED = T.let(:"loan_tape.created", Lithic::Models::Event::EventType::TaggedSymbol)
        LOAN_TAPE_UPDATED = T.let(:"loan_tape.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        MANAGEMENT_OPERATION_CREATED =
          T.let(:"management_operation.created", Lithic::Models::Event::EventType::TaggedSymbol)
        MANAGEMENT_OPERATION_UPDATED =
          T.let(:"management_operation.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        PAYMENT_TRANSACTION_CREATED =
          T.let(:"payment_transaction.created", Lithic::Models::Event::EventType::TaggedSymbol)
        PAYMENT_TRANSACTION_UPDATED =
          T.let(:"payment_transaction.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        INTERNAL_TRANSACTION_CREATED =
          T.let(:"internal_transaction.created", Lithic::Models::Event::EventType::TaggedSymbol)
        INTERNAL_TRANSACTION_UPDATED =
          T.let(:"internal_transaction.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        SETTLEMENT_REPORT_UPDATED =
          T.let(:"settlement_report.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        STATEMENTS_CREATED = T.let(:"statements.created", Lithic::Models::Event::EventType::TaggedSymbol)
        THREE_DS_AUTHENTICATION_CREATED =
          T.let(:"three_ds_authentication.created", Lithic::Models::Event::EventType::TaggedSymbol)
        THREE_DS_AUTHENTICATION_UPDATED =
          T.let(:"three_ds_authentication.updated", Lithic::Models::Event::EventType::TaggedSymbol)
        TOKENIZATION_APPROVAL_REQUEST =
          T.let(:"tokenization.approval_request", Lithic::Models::Event::EventType::TaggedSymbol)
        TOKENIZATION_RESULT = T.let(:"tokenization.result", Lithic::Models::Event::EventType::TaggedSymbol)
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          T.let(:"tokenization.two_factor_authentication_code", Lithic::Models::Event::EventType::TaggedSymbol)
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          T.let(:"tokenization.two_factor_authentication_code_sent", Lithic::Models::Event::EventType::TaggedSymbol)
        TOKENIZATION_UPDATED = T.let(:"tokenization.updated", Lithic::Models::Event::EventType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Event::EventType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
