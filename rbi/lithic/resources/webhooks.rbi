# typed: strong

module Lithic
  module Resources
    class Webhooks
      sig do
        params(payload: String).returns(
          T.any(
            Lithic::AccountHolderCreatedWebhookEvent,
            Lithic::ParsedWebhookEvent::KYBPayload,
            Lithic::ParsedWebhookEvent::KYCPayload,
            Lithic::ParsedWebhookEvent::LegacyPayload,
            Lithic::AccountHolderVerificationWebhookEvent,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent,
            Lithic::TokenizationDecisioningRequestWebhookEvent,
            Lithic::AuthRulesBacktestReportCreatedWebhookEvent,
            Lithic::BalanceUpdatedWebhookEvent,
            Lithic::BookTransferTransactionCreatedWebhookEvent,
            Lithic::BookTransferTransactionUpdatedWebhookEvent,
            Lithic::CardCreatedWebhookEvent,
            Lithic::CardConvertedWebhookEvent,
            Lithic::CardRenewedWebhookEvent,
            Lithic::CardReissuedWebhookEvent,
            Lithic::CardShippedWebhookEvent,
            Lithic::CardUpdatedWebhookEvent,
            Lithic::CardTransactionUpdatedWebhookEvent,
            Lithic::CardTransactionEnhancedDataCreatedWebhookEvent,
            Lithic::CardTransactionEnhancedDataUpdatedWebhookEvent,
            Lithic::DigitalWalletTokenizationApprovalRequestWebhookEvent,
            Lithic::DigitalWalletTokenizationResultWebhookEvent,
            Lithic::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent,
            Lithic::DigitalWalletTokenizationTwoFactorAuthenticationCodeSentWebhookEvent,
            Lithic::DigitalWalletTokenizationUpdatedWebhookEvent,
            Lithic::DisputeUpdatedWebhookEvent,
            Lithic::DisputeEvidenceUploadFailedWebhookEvent,
            Lithic::ExternalBankAccountCreatedWebhookEvent,
            Lithic::ExternalBankAccountUpdatedWebhookEvent,
            Lithic::ExternalPaymentCreatedWebhookEvent,
            Lithic::ExternalPaymentUpdatedWebhookEvent,
            Lithic::FinancialAccountCreatedWebhookEvent,
            Lithic::FinancialAccountUpdatedWebhookEvent,
            Lithic::FundingEventCreatedWebhookEvent,
            Lithic::LoanTapeCreatedWebhookEvent,
            Lithic::LoanTapeUpdatedWebhookEvent,
            Lithic::ManagementOperationCreatedWebhookEvent,
            Lithic::ManagementOperationUpdatedWebhookEvent,
            Lithic::InternalTransactionCreatedWebhookEvent,
            Lithic::InternalTransactionUpdatedWebhookEvent,
            Lithic::NetworkTotalCreatedWebhookEvent,
            Lithic::NetworkTotalUpdatedWebhookEvent,
            Lithic::PaymentTransactionCreatedWebhookEvent,
            Lithic::PaymentTransactionUpdatedWebhookEvent,
            Lithic::SettlementReportUpdatedWebhookEvent,
            Lithic::StatementsCreatedWebhookEvent,
            Lithic::ThreeDSAuthenticationCreatedWebhookEvent,
            Lithic::ThreeDSAuthenticationUpdatedWebhookEvent,
            Lithic::ThreeDSAuthenticationChallengeWebhookEvent,
            Lithic::TokenizationApprovalRequestWebhookEvent,
            Lithic::TokenizationResultWebhookEvent,
            Lithic::TokenizationTwoFactorAuthenticationCodeWebhookEvent,
            Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent,
            Lithic::TokenizationUpdatedWebhookEvent,
            Lithic::ThreeDSAuthenticationApprovalRequestWebhookEvent,
            Lithic::DisputeTransactionCreatedWebhookEvent,
            Lithic::DisputeTransactionUpdatedWebhookEvent
          )
        )
      end
      def parsed(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
