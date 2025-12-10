# frozen_string_literal: true

module Lithic
  module Resources
    class Webhooks
      # Parses and verifies a webhook payload. Verifies the signature before parsing.
      #
      # @param payload [String] The raw webhook payload as a string
      # @param headers [Hash{String => String}] The webhook request headers
      # @param secret [String, nil] The webhook secret. If not provided, reads from LITHIC_WEBHOOK_SECRET environment variable.
      #
      # @return [Lithic::Models::AccountHolderCreatedWebhookEvent, Lithic::Models::ParsedWebhookEvent::KYBPayload, Lithic::Models::ParsedWebhookEvent::KYCPayload, Lithic::Models::ParsedWebhookEvent::LegacyPayload, Lithic::Models::AccountHolderVerificationWebhookEvent, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent, Lithic::Models::AsaRequestWebhookEvent, Lithic::Models::TokenizationDecisioningRequestWebhookEvent, Lithic::Models::AuthRulesBacktestReportCreatedWebhookEvent, Lithic::Models::BalanceUpdatedWebhookEvent, Lithic::Models::BookTransferTransactionCreatedWebhookEvent, Lithic::Models::BookTransferTransactionUpdatedWebhookEvent, Lithic::Models::CardCreatedWebhookEvent, Lithic::Models::CardConvertedWebhookEvent, Lithic::Models::CardRenewedWebhookEvent, Lithic::Models::CardReissuedWebhookEvent, Lithic::Models::CardShippedWebhookEvent, Lithic::Models::CardTransactionUpdatedWebhookEvent, Lithic::Models::CardTransactionEnhancedDataCreatedWebhookEvent, Lithic::Models::CardTransactionEnhancedDataUpdatedWebhookEvent, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent, Lithic::Models::DigitalWalletTokenizationResultWebhookEvent, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeSentWebhookEvent, Lithic::Models::DigitalWalletTokenizationUpdatedWebhookEvent, Lithic::Models::DisputeUpdatedWebhookEvent, Lithic::Models::DisputeEvidenceUploadFailedWebhookEvent, Lithic::Models::ExternalBankAccountCreatedWebhookEvent, Lithic::Models::ExternalBankAccountUpdatedWebhookEvent, Lithic::Models::ExternalPaymentCreatedWebhookEvent, Lithic::Models::ExternalPaymentUpdatedWebhookEvent, Lithic::Models::FinancialAccountCreatedWebhookEvent, Lithic::Models::FinancialAccountUpdatedWebhookEvent, Lithic::Models::FundingEventCreatedWebhookEvent, Lithic::Models::LoanTapeCreatedWebhookEvent, Lithic::Models::LoanTapeUpdatedWebhookEvent, Lithic::Models::ManagementOperationCreatedWebhookEvent, Lithic::Models::ManagementOperationUpdatedWebhookEvent, Lithic::Models::InternalTransactionCreatedWebhookEvent, Lithic::Models::InternalTransactionUpdatedWebhookEvent, Lithic::Models::NetworkTotalCreatedWebhookEvent, Lithic::Models::NetworkTotalUpdatedWebhookEvent, Lithic::Models::PaymentTransactionCreatedWebhookEvent, Lithic::Models::PaymentTransactionUpdatedWebhookEvent, Lithic::Models::SettlementReportUpdatedWebhookEvent, Lithic::Models::StatementsCreatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationCreatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationUpdatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent, Lithic::Models::TokenizationApprovalRequestWebhookEvent, Lithic::Models::TokenizationResultWebhookEvent, Lithic::Models::TokenizationTwoFactorAuthenticationCodeWebhookEvent, Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent, Lithic::Models::TokenizationUpdatedWebhookEvent, Lithic::Models::ThreeDSAuthentication, Lithic::Models::DisputeTransactionCreatedWebhookEvent, Lithic::Models::DisputeTransactionUpdatedWebhookEvent]
      #
      # @raise [ArgumentError] if secret is not provided and LITHIC_WEBHOOK_SECRET env var is not set
      # @raise [Lithic::Errors::MissingDependencyError] if the standardwebhooks gem is not installed
      # @raise [StandardWebhooks::WebhookVerificationError] if the signature is invalid
      #
      # @example
      #   event = lithic.webhooks.parse(
      #     request.body.read,
      #     headers: request.headers
      #   )
      def parse(payload, headers:, secret: nil)
        verified_json = verify_signature(payload: payload, headers: headers, secret: secret)
        Lithic::Internal::Type::Converter.coerce(Lithic::Models::ParsedWebhookEvent, verified_json)
      end

      # Parses a webhook payload without verifying the signature.
      #
      # WARNING: This method does not verify the webhook signature. Use only for testing or when
      # signature verification is not required.
      #
      # @param payload [String] The raw webhook payload as a string
      #
      # @return [Lithic::Models::AccountHolderCreatedWebhookEvent, Lithic::Models::ParsedWebhookEvent::KYBPayload, Lithic::Models::ParsedWebhookEvent::KYCPayload, Lithic::Models::ParsedWebhookEvent::LegacyPayload, Lithic::Models::AccountHolderVerificationWebhookEvent, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent, Lithic::Models::AsaRequestWebhookEvent, Lithic::Models::TokenizationDecisioningRequestWebhookEvent, Lithic::Models::AuthRulesBacktestReportCreatedWebhookEvent, Lithic::Models::BalanceUpdatedWebhookEvent, Lithic::Models::BookTransferTransactionCreatedWebhookEvent, Lithic::Models::BookTransferTransactionUpdatedWebhookEvent, Lithic::Models::CardCreatedWebhookEvent, Lithic::Models::CardConvertedWebhookEvent, Lithic::Models::CardRenewedWebhookEvent, Lithic::Models::CardReissuedWebhookEvent, Lithic::Models::CardShippedWebhookEvent, Lithic::Models::CardTransactionUpdatedWebhookEvent, Lithic::Models::CardTransactionEnhancedDataCreatedWebhookEvent, Lithic::Models::CardTransactionEnhancedDataUpdatedWebhookEvent, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent, Lithic::Models::DigitalWalletTokenizationResultWebhookEvent, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeSentWebhookEvent, Lithic::Models::DigitalWalletTokenizationUpdatedWebhookEvent, Lithic::Models::DisputeUpdatedWebhookEvent, Lithic::Models::DisputeEvidenceUploadFailedWebhookEvent, Lithic::Models::ExternalBankAccountCreatedWebhookEvent, Lithic::Models::ExternalBankAccountUpdatedWebhookEvent, Lithic::Models::ExternalPaymentCreatedWebhookEvent, Lithic::Models::ExternalPaymentUpdatedWebhookEvent, Lithic::Models::FinancialAccountCreatedWebhookEvent, Lithic::Models::FinancialAccountUpdatedWebhookEvent, Lithic::Models::FundingEventCreatedWebhookEvent, Lithic::Models::LoanTapeCreatedWebhookEvent, Lithic::Models::LoanTapeUpdatedWebhookEvent, Lithic::Models::ManagementOperationCreatedWebhookEvent, Lithic::Models::ManagementOperationUpdatedWebhookEvent, Lithic::Models::InternalTransactionCreatedWebhookEvent, Lithic::Models::InternalTransactionUpdatedWebhookEvent, Lithic::Models::NetworkTotalCreatedWebhookEvent, Lithic::Models::NetworkTotalUpdatedWebhookEvent, Lithic::Models::PaymentTransactionCreatedWebhookEvent, Lithic::Models::PaymentTransactionUpdatedWebhookEvent, Lithic::Models::SettlementReportUpdatedWebhookEvent, Lithic::Models::StatementsCreatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationCreatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationUpdatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent, Lithic::Models::TokenizationApprovalRequestWebhookEvent, Lithic::Models::TokenizationResultWebhookEvent, Lithic::Models::TokenizationTwoFactorAuthenticationCodeWebhookEvent, Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent, Lithic::Models::TokenizationUpdatedWebhookEvent, Lithic::Models::ThreeDSAuthentication, Lithic::Models::DisputeTransactionCreatedWebhookEvent, Lithic::Models::DisputeTransactionUpdatedWebhookEvent]
      def parse_unsafe(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        Lithic::Internal::Type::Converter.coerce(Lithic::Models::ParsedWebhookEvent, parsed)
      end

      # Verifies the signature of a webhook payload using the Standard Webhooks specification.
      #
      # @param payload [String] The raw webhook payload as a string
      # @param headers [Hash{String => String}] The webhook request headers
      # @param secret [String, nil] The webhook secret (with or without the "whsec_" prefix).
      #   If not provided, reads from LITHIC_WEBHOOK_SECRET environment variable.
      #
      # @return [Hash] The parsed webhook payload with symbolized keys
      #
      # @raise [ArgumentError] if secret is not provided and LITHIC_WEBHOOK_SECRET env var is not set
      # @raise [Lithic::Errors::MissingDependencyError] if the standardwebhooks gem is not installed
      # @raise [StandardWebhooks::WebhookVerificationError] if the signature is invalid
      #
      # @example
      #   json = lithic.webhooks.verify_signature(
      #     payload: request.body.read,
      #     headers: request.headers
      #   )
      #   puts json[:event_type]
      def verify_signature(payload:, headers:, secret: nil)
        secret ||= ENV["LITHIC_WEBHOOK_SECRET"]
        if secret.nil? || secret.empty?
          raise ArgumentError, "Webhook secret must be provided or set in LITHIC_WEBHOOK_SECRET environment variable"
        end

        begin
          require("standardwebhooks")
        rescue LoadError
          raise Lithic::Errors::MissingDependencyError.new(
            gem_name: "standardwebhooks",
            feature: "webhook signature verification"
          )
        end

        wh = StandardWebhooks::Webhook.new(secret)
        wh.verify(payload, headers)
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
