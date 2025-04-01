# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::Subscriptions#send_simulated_example
      class SubscriptionSendSimulatedExampleParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute [r] event_type
        #   Event type to send example message for.
        #
        #   @return [Symbol, Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType, nil]
        optional :event_type,
                 enum: -> { Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType }

        # @!parse
        #   # @return [Symbol, Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType]
        #   attr_writer :event_type

        # @!parse
        #   # @param event_type [Symbol, Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(event_type: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # Event type to send example message for.
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
end
