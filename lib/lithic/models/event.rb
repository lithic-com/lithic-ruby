# frozen_string_literal: true

module Lithic
  module Models
    class Event < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute created
      #   An RFC 3339 timestamp for when the event was created. UTC time zone.
      #
      #     If no timezone is specified, UTC will be used.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute event_type
      #   Event types:
      #
      #     - `account_holder.created` - Notification that a new account holder has been
      #       created and was not rejected.
      #     - `account_holder.updated` - Notification that an account holder was updated.
      #     - `account_holder.verification` - Notification than an account holder's identity
      #       verification is complete.
      #     - `card.created` - Notification that a card has been created.
      #     - `card.renewed` - Notification that a card has been renewed.
      #     - `card.reissued` - Notification that a card has been reissued.
      #     - `card.shipped` - Physical card shipment notification. See
      #       https://docs.lithic.com/docs/cards#physical-card-shipped-webhook.
      #     - `card.converted` - Notification that a virtual card has been converted to a
      #       physical card.
      #     - `card_transaction.updated` - Transaction Lifecycle webhook. See
      #       https://docs.lithic.com/docs/transaction-webhooks.
      #     - `dispute.updated` - A dispute has been updated.
      #     - `digital_wallet.tokenization_approval_request` - Card network's request to
      #       Lithic to activate a digital wallet token.
      #     - `digital_wallet.tokenization_result` - Notification of the end result of a
      #       tokenization, whether successful or failed.
      #     - `digital_wallet.tokenization_two_factor_authentication_code` - A code to be
      #       passed to an end user to complete digital wallet authentication. See
      #       https://docs.lithic.com/docs/tokenization-control#digital-wallet-tokenization-auth-code.
      #     - `digital_wallet.tokenization_two_factor_authentication_code_sent` -
      #       Notification that a two factor authentication code for activating a digital
      #       wallet has been sent to the end user.
      #     - `digital_wallet.tokenization_updated` - Notification that a digital wallet
      #       tokenization's status has changed.
      #
      #   @return [Symbol, Lithic::Models::Event::EventType]
      required :event_type, enum: -> { Lithic::Models::Event::EventType }

      # @!attribute payload
      #
      #   @return [Hash{Symbol=>Object}]
      required :payload, Lithic::HashOf[Lithic::Unknown]

      # @!parse
      #   # A single event that affects the transaction state and lifecycle.
      #   #
      #   # @param token [String]
      #   # @param created [Time]
      #   # @param event_type [Symbol, Lithic::Models::Event::EventType]
      #   # @param payload [Hash{Symbol=>Object}]
      #   #
      #   def initialize(token:, created:, event_type:, payload:, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

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

        ACCOUNT_HOLDER_CREATED = :"account_holder.created"
        ACCOUNT_HOLDER_UPDATED = :"account_holder.updated"
        ACCOUNT_HOLDER_VERIFICATION = :"account_holder.verification"
        AUTH_RULES_PERFORMANCE_REPORT_CREATED = :"auth_rules.performance_report.created"
        BALANCE_UPDATED = :"balance.updated"
        BOOK_TRANSFER_TRANSACTION_CREATED = :"book_transfer_transaction.created"
        CARD_CREATED = :"card.created"
        CARD_RENEWED = :"card.renewed"
        CARD_REISSUED = :"card.reissued"
        CARD_CONVERTED = :"card.converted"
        CARD_SHIPPED = :"card.shipped"
        CARD_TRANSACTION_UPDATED = :"card_transaction.updated"
        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST = :"digital_wallet.tokenization_approval_request"
        DIGITAL_WALLET_TOKENIZATION_RESULT = :"digital_wallet.tokenization_result"
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          :"digital_wallet.tokenization_two_factor_authentication_code"
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          :"digital_wallet.tokenization_two_factor_authentication_code_sent"
        DIGITAL_WALLET_TOKENIZATION_UPDATED = :"digital_wallet.tokenization_updated"
        DISPUTE_UPDATED = :"dispute.updated"
        DISPUTE_EVIDENCE_UPLOAD_FAILED = :"dispute_evidence.upload_failed"
        EXTERNAL_BANK_ACCOUNT_CREATED = :"external_bank_account.created"
        EXTERNAL_BANK_ACCOUNT_UPDATED = :"external_bank_account.updated"
        EXTERNAL_PAYMENT_CREATED = :"external_payment.created"
        EXTERNAL_PAYMENT_UPDATED = :"external_payment.updated"
        FINANCIAL_ACCOUNT_CREATED = :"financial_account.created"
        FINANCIAL_ACCOUNT_UPDATED = :"financial_account.updated"
        LOAN_TAPE_CREATED = :"loan_tape.created"
        LOAN_TAPE_UPDATED = :"loan_tape.updated"
        MANAGEMENT_OPERATION_CREATED = :"management_operation.created"
        MANAGEMENT_OPERATION_UPDATED = :"management_operation.updated"
        PAYMENT_TRANSACTION_CREATED = :"payment_transaction.created"
        PAYMENT_TRANSACTION_UPDATED = :"payment_transaction.updated"
        INTERNAL_TRANSACTION_CREATED = :"internal_transaction.created"
        INTERNAL_TRANSACTION_UPDATED = :"internal_transaction.updated"
        SETTLEMENT_REPORT_UPDATED = :"settlement_report.updated"
        STATEMENTS_CREATED = :"statements.created"
        THREE_DS_AUTHENTICATION_CREATED = :"three_ds_authentication.created"
        THREE_DS_AUTHENTICATION_UPDATED = :"three_ds_authentication.updated"
        TOKENIZATION_APPROVAL_REQUEST = :"tokenization.approval_request"
        TOKENIZATION_RESULT = :"tokenization.result"
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE = :"tokenization.two_factor_authentication_code"
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT = :"tokenization.two_factor_authentication_code_sent"
        TOKENIZATION_UPDATED = :"tokenization.updated"

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
