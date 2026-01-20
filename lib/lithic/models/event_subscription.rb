# frozen_string_literal: true

module Lithic
  module Models
    class EventSubscription < Lithic::Internal::Type::BaseModel
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
      required :disabled, Lithic::Internal::Type::Boolean

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute event_types
      #
      #   @return [Array<Symbol, Lithic::Models::EventSubscription::EventType>, nil]
      optional :event_types,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::EventSubscription::EventType] },
               nil?: true

      # @!method initialize(token:, description:, disabled:, url:, event_types: nil)
      #   A subscription to specific event types.
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param description [String] A description of the subscription.
      #
      #   @param disabled [Boolean] Whether the subscription is disabled.
      #
      #   @param url [String]
      #
      #   @param event_types [Array<Symbol, Lithic::Models::EventSubscription::EventType>, nil]

      # The type of event that occurred. Possible values:
      #
      # - account_holder_document.updated: Occurs when an account holder's document
      #   upload status has been updated
      # - account_holder.created: Occurs when a new account_holder is created.
      # - account_holder.updated: Occurs when an account_holder is updated.
      # - account_holder.verification: Occurs when an asynchronous account_holder's
      #   verification is completed.
      # - auth_rules.backtest_report.created: Auth Rules backtest report created.
      # - balance.updated: Financial Account Balance Update
      # - book_transfer_transaction.created: Occurs when a book transfer transaction is
      #   created.
      # - book_transfer_transaction.updated: Occurs when a book transfer transaction is
      #   updated.
      # - card_transaction.enhanced_data.created: Occurs when L2/L3 enhanced commercial
      #   data is processed for a transaction event.
      # - card_transaction.enhanced_data.updated: Occurs when L2/L3 enhanced commercial
      #   data is reprocessed for a transaction event.
      # - card_transaction.updated: Occurs when a card transaction happens.
      # - card.converted: Occurs when a card is converted from virtual to physical
      #   cards.
      # - card.created: Occurs when a new card is created.
      # - card.reissued: Occurs when a card is reissued.
      # - card.renewed: Occurs when a card is renewed.
      # - card.shipped: Occurs when a card is shipped.
      # - card.updated: Occurs when a card is updated.
      # - digital_wallet.tokenization_approval_request: Occurs when a tokenization
      #   approval request is made. This event will be deprecated in the future. We
      #   recommend using `tokenization.approval_request` instead.
      # - digital_wallet.tokenization_result: Occurs when a tokenization request
      #   succeeded or failed.
      #
      # This event will be deprecated in the future. We recommend using
      # `tokenization.result` instead.
      #
      # - digital_wallet.tokenization_two_factor_authentication_code: Occurs when a
      #   tokenization request 2FA code is sent to the Lithic customer for self serve
      #   delivery.
      #
      # This event will be deprecated in the future. We recommend using
      # `tokenization.two_factor_authentication_code` instead.
      #
      # - digital_wallet.tokenization_two_factor_authentication_code_sent: Occurs when a
      #   tokenization request 2FA code is sent to our downstream messaging providers
      #   for delivery.
      #
      # This event will be deprecated in the future. We recommend using
      # `tokenization.two_factor_authentication_code_sent` instead.
      #
      # - digital_wallet.tokenization_updated: Occurs when a tokenization's status has
      #   changed.
      #
      # This event will be deprecated in the future. We recommend using
      # `tokenization.updated` instead.
      #
      # - dispute_evidence.upload_failed: Occurs when a dispute evidence upload fails.
      # - dispute_transaction.created: Occurs when a new dispute transaction is created
      # - dispute_transaction.updated: Occurs when a dispute transaction is updated
      # - dispute.updated: Occurs when a dispute is updated.
      # - external_bank_account.created: Occurs when an external bank account is
      #   created.
      # - external_bank_account.updated: Occurs when an external bank account is
      #   updated.
      # - external_payment.created: Occurs when an external payment is created.
      # - external_payment.updated: Occurs when an external payment is updated.
      # - financial_account.created: Occurs when a financial account is created.
      # - financial_account.updated: Occurs when a financial account is updated.
      # - funding_event.created: Occurs when a funding event is created.
      # - internal_transaction.created: Occurs when an internal adjustment is created.
      # - internal_transaction.updated: Occurs when an internal adjustment is updated.
      # - loan_tape.created: Occurs when a loan tape is created.
      # - loan_tape.updated: Occurs when a loan tape is updated.
      # - management_operation.created: Occurs when an management operation is created.
      # - management_operation.updated: Occurs when an management operation is updated.
      # - network_total.created: Occurs when a network total is created.
      # - network_total.updated: Occurs when a network total is updated.
      # - payment_transaction.created: Occurs when a payment transaction is created.
      # - payment_transaction.updated: Occurs when a payment transaction is updated.
      # - settlement_report.updated: Occurs when a settlement report is created or
      #   updated.
      # - statements.created: Occurs when a statement has been created
      # - three_ds_authentication.challenge: The `three_ds_authentication.challenge`
      #   event. Upon receiving this request, the Card Program should issue its own
      #   challenge to the cardholder. After a cardholder challenge is successfully
      #   completed, the Card Program needs to respond back to Lithic by call to
      #   [/v1/three_ds_decisioning/challenge_response](https://docs.lithic.com/reference/post_v1-three-ds-decisioning-challenge-response).
      #   Then the cardholder must navigate back to the merchant checkout flow to
      #   complete the transaction. Some merchants will include an `app_requestor_url`
      #   for app-based purchases; Lithic recommends triggering a redirect to that URL
      #   after the cardholder completes an app-based challenge.
      # - three_ds_authentication.created: Occurs when a 3DS authentication is created.
      # - three_ds_authentication.updated: Occurs when a 3DS authentication is updated
      #   (eg. challenge is completed).
      # - tokenization.approval_request: Occurs when a tokenization approval request is
      #   made.
      # - tokenization.result: Occurs when a tokenization request succeeded or failed.
      # - tokenization.two_factor_authentication_code: Occurs when a tokenization
      #   request 2FA code is sent to the Lithic customer for self serve delivery.
      # - tokenization.two_factor_authentication_code_sent: Occurs when a tokenization
      #   request 2FA code is sent to our downstream messaging providers for delivery.
      # - tokenization.updated: Occurs when a tokenization's status has changed.
      module EventType
        extend Lithic::Internal::Type::Enum

        ACCOUNT_HOLDER_DOCUMENT_UPDATED = :"account_holder_document.updated"
        ACCOUNT_HOLDER_CREATED = :"account_holder.created"
        ACCOUNT_HOLDER_UPDATED = :"account_holder.updated"
        ACCOUNT_HOLDER_VERIFICATION = :"account_holder.verification"
        AUTH_RULES_BACKTEST_REPORT_CREATED = :"auth_rules.backtest_report.created"
        BALANCE_UPDATED = :"balance.updated"
        BOOK_TRANSFER_TRANSACTION_CREATED = :"book_transfer_transaction.created"
        BOOK_TRANSFER_TRANSACTION_UPDATED = :"book_transfer_transaction.updated"
        CARD_TRANSACTION_ENHANCED_DATA_CREATED = :"card_transaction.enhanced_data.created"
        CARD_TRANSACTION_ENHANCED_DATA_UPDATED = :"card_transaction.enhanced_data.updated"
        CARD_TRANSACTION_UPDATED = :"card_transaction.updated"
        CARD_CONVERTED = :"card.converted"
        CARD_CREATED = :"card.created"
        CARD_REISSUED = :"card.reissued"
        CARD_RENEWED = :"card.renewed"
        CARD_SHIPPED = :"card.shipped"
        CARD_UPDATED = :"card.updated"
        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST = :"digital_wallet.tokenization_approval_request"
        DIGITAL_WALLET_TOKENIZATION_RESULT = :"digital_wallet.tokenization_result"
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          :"digital_wallet.tokenization_two_factor_authentication_code"
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          :"digital_wallet.tokenization_two_factor_authentication_code_sent"
        DIGITAL_WALLET_TOKENIZATION_UPDATED = :"digital_wallet.tokenization_updated"
        DISPUTE_EVIDENCE_UPLOAD_FAILED = :"dispute_evidence.upload_failed"
        DISPUTE_TRANSACTION_CREATED = :"dispute_transaction.created"
        DISPUTE_TRANSACTION_UPDATED = :"dispute_transaction.updated"
        DISPUTE_UPDATED = :"dispute.updated"
        EXTERNAL_BANK_ACCOUNT_CREATED = :"external_bank_account.created"
        EXTERNAL_BANK_ACCOUNT_UPDATED = :"external_bank_account.updated"
        EXTERNAL_PAYMENT_CREATED = :"external_payment.created"
        EXTERNAL_PAYMENT_UPDATED = :"external_payment.updated"
        FINANCIAL_ACCOUNT_CREATED = :"financial_account.created"
        FINANCIAL_ACCOUNT_UPDATED = :"financial_account.updated"
        FUNDING_EVENT_CREATED = :"funding_event.created"
        INTERNAL_TRANSACTION_CREATED = :"internal_transaction.created"
        INTERNAL_TRANSACTION_UPDATED = :"internal_transaction.updated"
        LOAN_TAPE_CREATED = :"loan_tape.created"
        LOAN_TAPE_UPDATED = :"loan_tape.updated"
        MANAGEMENT_OPERATION_CREATED = :"management_operation.created"
        MANAGEMENT_OPERATION_UPDATED = :"management_operation.updated"
        NETWORK_TOTAL_CREATED = :"network_total.created"
        NETWORK_TOTAL_UPDATED = :"network_total.updated"
        PAYMENT_TRANSACTION_CREATED = :"payment_transaction.created"
        PAYMENT_TRANSACTION_UPDATED = :"payment_transaction.updated"
        SETTLEMENT_REPORT_UPDATED = :"settlement_report.updated"
        STATEMENTS_CREATED = :"statements.created"
        THREE_DS_AUTHENTICATION_CHALLENGE = :"three_ds_authentication.challenge"
        THREE_DS_AUTHENTICATION_CREATED = :"three_ds_authentication.created"
        THREE_DS_AUTHENTICATION_UPDATED = :"three_ds_authentication.updated"
        TOKENIZATION_APPROVAL_REQUEST = :"tokenization.approval_request"
        TOKENIZATION_RESULT = :"tokenization.result"
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE = :"tokenization.two_factor_authentication_code"
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT = :"tokenization.two_factor_authentication_code_sent"
        TOKENIZATION_UPDATED = :"tokenization.updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
