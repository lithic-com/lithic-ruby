# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Events#list
    class EventListParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :begin_, Time, api_name: :begin

      # @!parse
      #   # @return [Time]
      #   attr_writer :begin_

      # @!attribute [r] end_
      #   Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :end_, Time, api_name: :end

      # @!parse
      #   # @return [Time]
      #   attr_writer :end_

      # @!attribute [r] ending_before
      #   A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @return [String, nil]
      optional :ending_before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ending_before

      # @!attribute [r] event_types
      #   Event types to filter events by.
      #
      #   @return [Array<Symbol, Lithic::Models::EventListParams::EventType>, nil]
      optional :event_types, -> { Lithic::ArrayOf[enum: Lithic::Models::EventListParams::EventType] }

      # @!parse
      #   # @return [Array<Symbol, Lithic::Models::EventListParams::EventType>]
      #   attr_writer :event_types

      # @!attribute [r] page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] starting_after
      #   A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :starting_after

      # @!attribute [r] with_content
      #   Whether to include the event payload content in the response.
      #
      #   @return [Boolean, nil]
      optional :with_content, Lithic::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :with_content

      # @!parse
      #   # @param begin_ [Time]
      #   # @param end_ [Time]
      #   # @param ending_before [String]
      #   # @param event_types [Array<Symbol, Lithic::Models::EventListParams::EventType>]
      #   # @param page_size [Integer]
      #   # @param starting_after [String]
      #   # @param with_content [Boolean]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     begin_: nil,
      #     end_: nil,
      #     ending_before: nil,
      #     event_types: nil,
      #     page_size: nil,
      #     starting_after: nil,
      #     with_content: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

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

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
