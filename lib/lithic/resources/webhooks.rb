# frozen_string_literal: true

module Lithic
  module Resources
    class Webhooks
      # @param payload [String] The raw webhook payload as a string
      #
      # @return [Lithic::Models::AccountHolderCreatedWebhookEvent, Lithic::Models::ParsedWebhookEvent::KYBPayload, Lithic::Models::ParsedWebhookEvent::KYCPayload, Lithic::Models::ParsedWebhookEvent::LegacyPayload, Lithic::Models::AccountHolderVerificationWebhookEvent, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent, Lithic::Models::TokenizationDecisioningRequestWebhookEvent, Lithic::Models::AuthRulesBacktestReportCreatedWebhookEvent, Lithic::Models::BalanceUpdatedWebhookEvent, Lithic::Models::BookTransferTransactionCreatedWebhookEvent, Lithic::Models::BookTransferTransactionUpdatedWebhookEvent, Lithic::Models::CardCreatedWebhookEvent, Lithic::Models::CardConvertedWebhookEvent, Lithic::Models::CardRenewedWebhookEvent, Lithic::Models::CardReissuedWebhookEvent, Lithic::Models::CardShippedWebhookEvent, Lithic::Models::CardUpdatedWebhookEvent, Lithic::Models::CardTransactionUpdatedWebhookEvent, Lithic::Models::CardTransactionEnhancedDataCreatedWebhookEvent, Lithic::Models::CardTransactionEnhancedDataUpdatedWebhookEvent, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent, Lithic::Models::DigitalWalletTokenizationResultWebhookEvent, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeSentWebhookEvent, Lithic::Models::DigitalWalletTokenizationUpdatedWebhookEvent, Lithic::Models::DisputeUpdatedWebhookEvent, Lithic::Models::DisputeEvidenceUploadFailedWebhookEvent, Lithic::Models::ExternalBankAccountCreatedWebhookEvent, Lithic::Models::ExternalBankAccountUpdatedWebhookEvent, Lithic::Models::ExternalPaymentCreatedWebhookEvent, Lithic::Models::ExternalPaymentUpdatedWebhookEvent, Lithic::Models::FinancialAccountCreatedWebhookEvent, Lithic::Models::FinancialAccountUpdatedWebhookEvent, Lithic::Models::FundingEventCreatedWebhookEvent, Lithic::Models::LoanTapeCreatedWebhookEvent, Lithic::Models::LoanTapeUpdatedWebhookEvent, Lithic::Models::ManagementOperationCreatedWebhookEvent, Lithic::Models::ManagementOperationUpdatedWebhookEvent, Lithic::Models::InternalTransactionCreatedWebhookEvent, Lithic::Models::InternalTransactionUpdatedWebhookEvent, Lithic::Models::NetworkTotalCreatedWebhookEvent, Lithic::Models::NetworkTotalUpdatedWebhookEvent, Lithic::Models::PaymentTransactionCreatedWebhookEvent, Lithic::Models::PaymentTransactionUpdatedWebhookEvent, Lithic::Models::SettlementReportUpdatedWebhookEvent, Lithic::Models::StatementsCreatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationCreatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationUpdatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent, Lithic::Models::TokenizationApprovalRequestWebhookEvent, Lithic::Models::TokenizationResultWebhookEvent, Lithic::Models::TokenizationTwoFactorAuthenticationCodeWebhookEvent, Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent, Lithic::Models::TokenizationUpdatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationApprovalRequestWebhookEvent, Lithic::Models::DisputeTransactionCreatedWebhookEvent, Lithic::Models::DisputeTransactionUpdatedWebhookEvent]
      def parsed(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        Lithic::Internal::Type::Converter.coerce(Lithic::Models::ParsedWebhookEvent, parsed)
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
