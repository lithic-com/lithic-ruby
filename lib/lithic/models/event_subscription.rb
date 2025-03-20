# frozen_string_literal: true

module Lithic
  module Models
    class EventSubscription < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute description
      #   A description of the subscription.
      #
      #   @return [String]
      required :description, String

      # @!attribute disabled
      #   Whether the subscription is disabled.
      #
      #   @return [Boolean]
      required :disabled, Lithic::BooleanModel

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute event_types
      #
      #   @return [Array<Symbol, Lithic::Models::EventSubscription::EventType>, nil]
      optional :event_types,
               -> { Lithic::ArrayOf[enum: Lithic::Models::EventSubscription::EventType] },
               nil?: true

      # @!parse
      #   # A subscription to specific event types.
      #   #
      #   # @param token [String]
      #   # @param description [String]
      #   # @param disabled [Boolean]
      #   # @param url [String]
      #   # @param event_types [Array<Symbol, Lithic::Models::EventSubscription::EventType>, nil]
      #   #
      #   def initialize(token:, description:, disabled:, url:, event_types: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

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

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
