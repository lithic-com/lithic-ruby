# typed: strong

module Lithic
  module Models
    class Event < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Lithic::Event, Lithic::Internal::AnyHash) }

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # An RFC 3339 timestamp for when the event was created. UTC time zone.
      #
      # If no timezone is specified, UTC will be used.
      sig { returns(Time) }
      attr_accessor :created

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
      sig { returns(Lithic::Event::EventType::TaggedSymbol) }
      attr_accessor :event_type

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :payload

      # A single event that affects the transaction state and lifecycle.
      sig do
        params(
          token: String,
          created: Time,
          event_type: Lithic::Event::EventType::OrSymbol,
          payload: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # An RFC 3339 timestamp for when the event was created. UTC time zone.
        #
        # If no timezone is specified, UTC will be used.
        created:,
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
        event_type:,
        payload:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            created: Time,
            event_type: Lithic::Event::EventType::TaggedSymbol,
            payload: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end

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

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Event::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_HOLDER_DOCUMENT_UPDATED =
          T.let(
            :"account_holder_document.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        ACCOUNT_HOLDER_CREATED =
          T.let(
            :"account_holder.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        ACCOUNT_HOLDER_UPDATED =
          T.let(
            :"account_holder.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        ACCOUNT_HOLDER_VERIFICATION =
          T.let(
            :"account_holder.verification",
            Lithic::Event::EventType::TaggedSymbol
          )
        AUTH_RULES_BACKTEST_REPORT_CREATED =
          T.let(
            :"auth_rules.backtest_report.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        BALANCE_UPDATED =
          T.let(:"balance.updated", Lithic::Event::EventType::TaggedSymbol)
        BOOK_TRANSFER_TRANSACTION_CREATED =
          T.let(
            :"book_transfer_transaction.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        BOOK_TRANSFER_TRANSACTION_UPDATED =
          T.let(
            :"book_transfer_transaction.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        CARD_TRANSACTION_ENHANCED_DATA_CREATED =
          T.let(
            :"card_transaction.enhanced_data.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        CARD_TRANSACTION_ENHANCED_DATA_UPDATED =
          T.let(
            :"card_transaction.enhanced_data.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        CARD_TRANSACTION_UPDATED =
          T.let(
            :"card_transaction.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        CARD_CONVERTED =
          T.let(:"card.converted", Lithic::Event::EventType::TaggedSymbol)
        CARD_CREATED =
          T.let(:"card.created", Lithic::Event::EventType::TaggedSymbol)
        CARD_REISSUED =
          T.let(:"card.reissued", Lithic::Event::EventType::TaggedSymbol)
        CARD_RENEWED =
          T.let(:"card.renewed", Lithic::Event::EventType::TaggedSymbol)
        CARD_SHIPPED =
          T.let(:"card.shipped", Lithic::Event::EventType::TaggedSymbol)
        CARD_UPDATED =
          T.let(:"card.updated", Lithic::Event::EventType::TaggedSymbol)
        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
          T.let(
            :"digital_wallet.tokenization_approval_request",
            Lithic::Event::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_RESULT =
          T.let(
            :"digital_wallet.tokenization_result",
            Lithic::Event::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          T.let(
            :"digital_wallet.tokenization_two_factor_authentication_code",
            Lithic::Event::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          T.let(
            :"digital_wallet.tokenization_two_factor_authentication_code_sent",
            Lithic::Event::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_UPDATED =
          T.let(
            :"digital_wallet.tokenization_updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        DISPUTE_EVIDENCE_UPLOAD_FAILED =
          T.let(
            :"dispute_evidence.upload_failed",
            Lithic::Event::EventType::TaggedSymbol
          )
        DISPUTE_TRANSACTION_CREATED =
          T.let(
            :"dispute_transaction.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        DISPUTE_TRANSACTION_UPDATED =
          T.let(
            :"dispute_transaction.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(:"dispute.updated", Lithic::Event::EventType::TaggedSymbol)
        EXTERNAL_BANK_ACCOUNT_CREATED =
          T.let(
            :"external_bank_account.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        EXTERNAL_BANK_ACCOUNT_UPDATED =
          T.let(
            :"external_bank_account.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        EXTERNAL_PAYMENT_CREATED =
          T.let(
            :"external_payment.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        EXTERNAL_PAYMENT_UPDATED =
          T.let(
            :"external_payment.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        FINANCIAL_ACCOUNT_CREATED =
          T.let(
            :"financial_account.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        FINANCIAL_ACCOUNT_UPDATED =
          T.let(
            :"financial_account.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        FUNDING_EVENT_CREATED =
          T.let(
            :"funding_event.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        INTERNAL_TRANSACTION_CREATED =
          T.let(
            :"internal_transaction.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        INTERNAL_TRANSACTION_UPDATED =
          T.let(
            :"internal_transaction.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        LOAN_TAPE_CREATED =
          T.let(:"loan_tape.created", Lithic::Event::EventType::TaggedSymbol)
        LOAN_TAPE_UPDATED =
          T.let(:"loan_tape.updated", Lithic::Event::EventType::TaggedSymbol)
        MANAGEMENT_OPERATION_CREATED =
          T.let(
            :"management_operation.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        MANAGEMENT_OPERATION_UPDATED =
          T.let(
            :"management_operation.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        NETWORK_TOTAL_CREATED =
          T.let(
            :"network_total.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        NETWORK_TOTAL_UPDATED =
          T.let(
            :"network_total.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        PAYMENT_TRANSACTION_CREATED =
          T.let(
            :"payment_transaction.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        PAYMENT_TRANSACTION_UPDATED =
          T.let(
            :"payment_transaction.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        SETTLEMENT_REPORT_UPDATED =
          T.let(
            :"settlement_report.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        STATEMENTS_CREATED =
          T.let(:"statements.created", Lithic::Event::EventType::TaggedSymbol)
        THREE_DS_AUTHENTICATION_CHALLENGE =
          T.let(
            :"three_ds_authentication.challenge",
            Lithic::Event::EventType::TaggedSymbol
          )
        THREE_DS_AUTHENTICATION_CREATED =
          T.let(
            :"three_ds_authentication.created",
            Lithic::Event::EventType::TaggedSymbol
          )
        THREE_DS_AUTHENTICATION_UPDATED =
          T.let(
            :"three_ds_authentication.updated",
            Lithic::Event::EventType::TaggedSymbol
          )
        TOKENIZATION_APPROVAL_REQUEST =
          T.let(
            :"tokenization.approval_request",
            Lithic::Event::EventType::TaggedSymbol
          )
        TOKENIZATION_RESULT =
          T.let(:"tokenization.result", Lithic::Event::EventType::TaggedSymbol)
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          T.let(
            :"tokenization.two_factor_authentication_code",
            Lithic::Event::EventType::TaggedSymbol
          )
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          T.let(
            :"tokenization.two_factor_authentication_code_sent",
            Lithic::Event::EventType::TaggedSymbol
          )
        TOKENIZATION_UPDATED =
          T.let(:"tokenization.updated", Lithic::Event::EventType::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Event::EventType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
