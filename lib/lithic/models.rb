# frozen_string_literal: true

module Lithic
  [Lithic::Internal::Type::BaseModel, *Lithic::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Lithic::Internal::AnyHash) } }
  end

  Lithic::Internal::Util.walk_namespaces(Lithic::Models).each do |mod|
    case mod
    in Lithic::Internal::Type::Enum | Lithic::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Lithic::Internal::Util.walk_namespaces(Lithic::Models)
                        .lazy
                        .grep(Lithic::Internal::Type::Union)
                        .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Account = Lithic::Models::Account

  AccountActivityListParams = Lithic::Models::AccountActivityListParams

  AccountActivityRetrieveTransactionParams = Lithic::Models::AccountActivityRetrieveTransactionParams

  AccountFinancialAccountType = Lithic::Models::AccountFinancialAccountType

  AccountHolder = Lithic::Models::AccountHolder

  AccountHolderCreatedWebhookEvent = Lithic::Models::AccountHolderCreatedWebhookEvent

  AccountHolderCreateParams = Lithic::Models::AccountHolderCreateParams

  AccountHolderDocumentUpdatedWebhookEvent = Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent

  AccountHolderListDocumentsParams = Lithic::Models::AccountHolderListDocumentsParams

  AccountHolderListParams = Lithic::Models::AccountHolderListParams

  AccountHolderRetrieveDocumentParams = Lithic::Models::AccountHolderRetrieveDocumentParams

  AccountHolderRetrieveParams = Lithic::Models::AccountHolderRetrieveParams

  AccountHolderSimulateEnrollmentDocumentReviewParams =
    Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams

  AccountHolderSimulateEnrollmentReviewParams = Lithic::Models::AccountHolderSimulateEnrollmentReviewParams

  AccountHolderUpdatedWebhookEvent = Lithic::Models::AccountHolderUpdatedWebhookEvent

  AccountHolderUpdateParams = Lithic::Models::AccountHolderUpdateParams

  AccountHolderUploadDocumentParams = Lithic::Models::AccountHolderUploadDocumentParams

  AccountHolderVerificationWebhookEvent = Lithic::Models::AccountHolderVerificationWebhookEvent

  AccountListParams = Lithic::Models::AccountListParams

  AccountRetrieveParams = Lithic::Models::AccountRetrieveParams

  AccountRetrieveSpendLimitsParams = Lithic::Models::AccountRetrieveSpendLimitsParams

  AccountSpendLimits = Lithic::Models::AccountSpendLimits

  AccountUpdateParams = Lithic::Models::AccountUpdateParams

  Address = Lithic::Models::Address

  AddressUpdate = Lithic::Models::AddressUpdate

  APIStatus = Lithic::Models::APIStatus

  AsaRequestWebhookEvent = Lithic::Models::AsaRequestWebhookEvent

  AuthRules = Lithic::Models::AuthRules

  AuthRulesBacktestReportCreatedWebhookEvent = Lithic::Models::AuthRulesBacktestReportCreatedWebhookEvent

  AuthStreamEnrollmentRetrieveSecretParams = Lithic::Models::AuthStreamEnrollmentRetrieveSecretParams

  AuthStreamEnrollmentRotateSecretParams = Lithic::Models::AuthStreamEnrollmentRotateSecretParams

  AuthStreamSecret = Lithic::Models::AuthStreamSecret

  Balance = Lithic::Models::Balance

  BalanceListParams = Lithic::Models::BalanceListParams

  BalanceUpdatedWebhookEvent = Lithic::Models::BalanceUpdatedWebhookEvent

  BookTransferCreateParams = Lithic::Models::BookTransferCreateParams

  BookTransferListParams = Lithic::Models::BookTransferListParams

  BookTransferResponse = Lithic::Models::BookTransferResponse

  BookTransferRetrieveParams = Lithic::Models::BookTransferRetrieveParams

  BookTransferRetryParams = Lithic::Models::BookTransferRetryParams

  BookTransferReverseParams = Lithic::Models::BookTransferReverseParams

  BookTransferTransactionCreatedWebhookEvent = Lithic::Models::BookTransferTransactionCreatedWebhookEvent

  BookTransferTransactionUpdatedWebhookEvent = Lithic::Models::BookTransferTransactionUpdatedWebhookEvent

  Card = Lithic::Models::Card

  CardBulkOrder = Lithic::Models::CardBulkOrder

  CardBulkOrderCreateParams = Lithic::Models::CardBulkOrderCreateParams

  CardBulkOrderListParams = Lithic::Models::CardBulkOrderListParams

  CardBulkOrderRetrieveParams = Lithic::Models::CardBulkOrderRetrieveParams

  CardBulkOrderUpdateParams = Lithic::Models::CardBulkOrderUpdateParams

  CardConvertedWebhookEvent = Lithic::Models::CardConvertedWebhookEvent

  CardConvertPhysicalParams = Lithic::Models::CardConvertPhysicalParams

  CardCreatedWebhookEvent = Lithic::Models::CardCreatedWebhookEvent

  CardCreateParams = Lithic::Models::CardCreateParams

  CardEmbedParams = Lithic::Models::CardEmbedParams

  CardholderAuthentication = Lithic::Models::CardholderAuthentication

  CardListParams = Lithic::Models::CardListParams

  CardProgram = Lithic::Models::CardProgram

  CardProgramListParams = Lithic::Models::CardProgramListParams

  CardProgramRetrieveParams = Lithic::Models::CardProgramRetrieveParams

  CardProvisionParams = Lithic::Models::CardProvisionParams

  CardReissuedWebhookEvent = Lithic::Models::CardReissuedWebhookEvent

  CardReissueParams = Lithic::Models::CardReissueParams

  CardRenewedWebhookEvent = Lithic::Models::CardRenewedWebhookEvent

  CardRenewParams = Lithic::Models::CardRenewParams

  CardRetrieveParams = Lithic::Models::CardRetrieveParams

  CardRetrieveSpendLimitsParams = Lithic::Models::CardRetrieveSpendLimitsParams

  Cards = Lithic::Models::Cards

  CardSearchByPanParams = Lithic::Models::CardSearchByPanParams

  CardShippedWebhookEvent = Lithic::Models::CardShippedWebhookEvent

  CardSpendLimits = Lithic::Models::CardSpendLimits

  CardTransactionEnhancedDataCreatedWebhookEvent =
    Lithic::Models::CardTransactionEnhancedDataCreatedWebhookEvent

  CardTransactionEnhancedDataUpdatedWebhookEvent =
    Lithic::Models::CardTransactionEnhancedDataUpdatedWebhookEvent

  CardTransactionUpdatedWebhookEvent = Lithic::Models::CardTransactionUpdatedWebhookEvent

  CardUpdateParams = Lithic::Models::CardUpdateParams

  CardWebProvisionParams = Lithic::Models::CardWebProvisionParams

  Carrier = Lithic::Models::Carrier

  CategoryDetails = Lithic::Models::CategoryDetails

  ClientAPIStatusParams = Lithic::Models::ClientAPIStatusParams

  CreditProducts = Lithic::Models::CreditProducts

  Currency = Lithic::Models::Currency

  Device = Lithic::Models::Device

  DigitalCardArtAPI = Lithic::Models::DigitalCardArtAPI

  DigitalCardArtListParams = Lithic::Models::DigitalCardArtListParams

  DigitalCardArtRetrieveParams = Lithic::Models::DigitalCardArtRetrieveParams

  DigitalWalletTokenizationApprovalRequestWebhookEvent =
    Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent

  DigitalWalletTokenizationResultWebhookEvent = Lithic::Models::DigitalWalletTokenizationResultWebhookEvent

  DigitalWalletTokenizationTwoFactorAuthenticationCodeSentWebhookEvent =
    Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeSentWebhookEvent

  DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent =
    Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent

  DigitalWalletTokenizationUpdatedWebhookEvent =
    Lithic::Models::DigitalWalletTokenizationUpdatedWebhookEvent

  DigitalWalletTokenMetadata = Lithic::Models::DigitalWalletTokenMetadata

  Dispute = Lithic::Models::Dispute

  DisputeCreateParams = Lithic::Models::DisputeCreateParams

  DisputeDeleteEvidenceParams = Lithic::Models::DisputeDeleteEvidenceParams

  DisputeDeleteParams = Lithic::Models::DisputeDeleteParams

  DisputeEvidence = Lithic::Models::DisputeEvidence

  DisputeEvidenceUploadFailedWebhookEvent = Lithic::Models::DisputeEvidenceUploadFailedWebhookEvent

  DisputeInitiateEvidenceUploadParams = Lithic::Models::DisputeInitiateEvidenceUploadParams

  DisputeListEvidencesParams = Lithic::Models::DisputeListEvidencesParams

  DisputeListParams = Lithic::Models::DisputeListParams

  DisputeRetrieveEvidenceParams = Lithic::Models::DisputeRetrieveEvidenceParams

  DisputeRetrieveParams = Lithic::Models::DisputeRetrieveParams

  DisputesV2ListParams = Lithic::Models::DisputesV2ListParams

  DisputesV2RetrieveParams = Lithic::Models::DisputesV2RetrieveParams

  DisputeTransactionCreatedWebhookEvent = Lithic::Models::DisputeTransactionCreatedWebhookEvent

  DisputeTransactionUpdatedWebhookEvent = Lithic::Models::DisputeTransactionUpdatedWebhookEvent

  DisputeUpdatedWebhookEvent = Lithic::Models::DisputeUpdatedWebhookEvent

  DisputeUpdateParams = Lithic::Models::DisputeUpdateParams

  DisputeV2 = Lithic::Models::DisputeV2

  Document = Lithic::Models::Document

  Event = Lithic::Models::Event

  EventListAttemptsParams = Lithic::Models::EventListAttemptsParams

  EventListParams = Lithic::Models::EventListParams

  EventRetrieveParams = Lithic::Models::EventRetrieveParams

  Events = Lithic::Models::Events

  EventSubscription = Lithic::Models::EventSubscription

  ExternalBankAccount = Lithic::Models::ExternalBankAccount

  ExternalBankAccountAddress = Lithic::Models::ExternalBankAccountAddress

  ExternalBankAccountCreatedWebhookEvent = Lithic::Models::ExternalBankAccountCreatedWebhookEvent

  ExternalBankAccountCreateParams = Lithic::Models::ExternalBankAccountCreateParams

  ExternalBankAccountListParams = Lithic::Models::ExternalBankAccountListParams

  ExternalBankAccountRetrieveParams = Lithic::Models::ExternalBankAccountRetrieveParams

  ExternalBankAccountRetryMicroDepositsParams = Lithic::Models::ExternalBankAccountRetryMicroDepositsParams

  ExternalBankAccountRetryPrenoteParams = Lithic::Models::ExternalBankAccountRetryPrenoteParams

  ExternalBankAccounts = Lithic::Models::ExternalBankAccounts

  ExternalBankAccountUnpauseParams = Lithic::Models::ExternalBankAccountUnpauseParams

  ExternalBankAccountUpdatedWebhookEvent = Lithic::Models::ExternalBankAccountUpdatedWebhookEvent

  ExternalBankAccountUpdateParams = Lithic::Models::ExternalBankAccountUpdateParams

  ExternalPayment = Lithic::Models::ExternalPayment

  ExternalPaymentCancelParams = Lithic::Models::ExternalPaymentCancelParams

  ExternalPaymentCreatedWebhookEvent = Lithic::Models::ExternalPaymentCreatedWebhookEvent

  ExternalPaymentCreateParams = Lithic::Models::ExternalPaymentCreateParams

  ExternalPaymentListParams = Lithic::Models::ExternalPaymentListParams

  ExternalPaymentReleaseParams = Lithic::Models::ExternalPaymentReleaseParams

  ExternalPaymentRetrieveParams = Lithic::Models::ExternalPaymentRetrieveParams

  ExternalPaymentReverseParams = Lithic::Models::ExternalPaymentReverseParams

  ExternalPaymentSettleParams = Lithic::Models::ExternalPaymentSettleParams

  ExternalPaymentUpdatedWebhookEvent = Lithic::Models::ExternalPaymentUpdatedWebhookEvent

  ExternalResource = Lithic::Models::ExternalResource

  ExternalResourceType = Lithic::Models::ExternalResourceType

  FinancialAccount = Lithic::Models::FinancialAccount

  FinancialAccountBalance = Lithic::Models::FinancialAccountBalance

  FinancialAccountCreatedWebhookEvent = Lithic::Models::FinancialAccountCreatedWebhookEvent

  FinancialAccountCreateParams = Lithic::Models::FinancialAccountCreateParams

  FinancialAccountListParams = Lithic::Models::FinancialAccountListParams

  FinancialAccountRegisterAccountNumberParams = Lithic::Models::FinancialAccountRegisterAccountNumberParams

  FinancialAccountRetrieveParams = Lithic::Models::FinancialAccountRetrieveParams

  FinancialAccounts = Lithic::Models::FinancialAccounts

  FinancialAccountUpdatedWebhookEvent = Lithic::Models::FinancialAccountUpdatedWebhookEvent

  FinancialAccountUpdateParams = Lithic::Models::FinancialAccountUpdateParams

  FinancialAccountUpdateStatusParams = Lithic::Models::FinancialAccountUpdateStatusParams

  FinancialEvent = Lithic::Models::FinancialEvent

  FinancialTransaction = Lithic::Models::FinancialTransaction

  Fraud = Lithic::Models::Fraud

  FundingEvent = Lithic::Models::FundingEvent

  FundingEventCreatedWebhookEvent = Lithic::Models::FundingEventCreatedWebhookEvent

  FundingEventListParams = Lithic::Models::FundingEventListParams

  FundingEventRetrieveDetailsParams = Lithic::Models::FundingEventRetrieveDetailsParams

  FundingEventRetrieveParams = Lithic::Models::FundingEventRetrieveParams

  InstanceFinancialAccountType = Lithic::Models::InstanceFinancialAccountType

  InternalTransactionAPI = Lithic::Models::InternalTransactionAPI

  InternalTransactionCreatedWebhookEvent = Lithic::Models::InternalTransactionCreatedWebhookEvent

  InternalTransactionUpdatedWebhookEvent = Lithic::Models::InternalTransactionUpdatedWebhookEvent

  KYB = Lithic::Models::KYB

  KYBBusinessEntity = Lithic::Models::KYBBusinessEntity

  KYC = Lithic::Models::KYC

  KYCExempt = Lithic::Models::KYCExempt

  LoanTapeCreatedWebhookEvent = Lithic::Models::LoanTapeCreatedWebhookEvent

  LoanTapeUpdatedWebhookEvent = Lithic::Models::LoanTapeUpdatedWebhookEvent

  ManagementOperationCreatedWebhookEvent = Lithic::Models::ManagementOperationCreatedWebhookEvent

  ManagementOperationCreateParams = Lithic::Models::ManagementOperationCreateParams

  ManagementOperationListParams = Lithic::Models::ManagementOperationListParams

  ManagementOperationRetrieveParams = Lithic::Models::ManagementOperationRetrieveParams

  ManagementOperationReverseParams = Lithic::Models::ManagementOperationReverseParams

  ManagementOperationTransaction = Lithic::Models::ManagementOperationTransaction

  ManagementOperationUpdatedWebhookEvent = Lithic::Models::ManagementOperationUpdatedWebhookEvent

  Merchant = Lithic::Models::Merchant

  MessageAttempt = Lithic::Models::MessageAttempt

  NetworkProgram = Lithic::Models::NetworkProgram

  NetworkProgramListParams = Lithic::Models::NetworkProgramListParams

  NetworkProgramRetrieveParams = Lithic::Models::NetworkProgramRetrieveParams

  NetworkTotal = Lithic::Models::NetworkTotal

  NetworkTotalCreatedWebhookEvent = Lithic::Models::NetworkTotalCreatedWebhookEvent

  NetworkTotalUpdatedWebhookEvent = Lithic::Models::NetworkTotalUpdatedWebhookEvent

  NonPCICard = Lithic::Models::NonPCICard

  OwnerType = Lithic::Models::OwnerType

  ParsedWebhookEvent = Lithic::Models::ParsedWebhookEvent

  Payment = Lithic::Models::Payment

  PaymentCreateParams = Lithic::Models::PaymentCreateParams

  PaymentListParams = Lithic::Models::PaymentListParams

  PaymentRetrieveParams = Lithic::Models::PaymentRetrieveParams

  PaymentRetryParams = Lithic::Models::PaymentRetryParams

  PaymentReturnParams = Lithic::Models::PaymentReturnParams

  PaymentSimulateActionParams = Lithic::Models::PaymentSimulateActionParams

  PaymentSimulateReceiptParams = Lithic::Models::PaymentSimulateReceiptParams

  PaymentSimulateReleaseParams = Lithic::Models::PaymentSimulateReleaseParams

  PaymentSimulateReturnParams = Lithic::Models::PaymentSimulateReturnParams

  PaymentTransactionCreatedWebhookEvent = Lithic::Models::PaymentTransactionCreatedWebhookEvent

  PaymentTransactionUpdatedWebhookEvent = Lithic::Models::PaymentTransactionUpdatedWebhookEvent

  ProvisionResponse = Lithic::Models::ProvisionResponse

  Reports = Lithic::Models::Reports

  RequiredDocument = Lithic::Models::RequiredDocument

  ResponderEndpointCheckStatusParams = Lithic::Models::ResponderEndpointCheckStatusParams

  ResponderEndpointCreateParams = Lithic::Models::ResponderEndpointCreateParams

  ResponderEndpointDeleteParams = Lithic::Models::ResponderEndpointDeleteParams

  ResponderEndpointStatus = Lithic::Models::ResponderEndpointStatus

  SettlementDetail = Lithic::Models::SettlementDetail

  SettlementReport = Lithic::Models::SettlementReport

  SettlementReportUpdatedWebhookEvent = Lithic::Models::SettlementReportUpdatedWebhookEvent

  SettlementSummaryDetails = Lithic::Models::SettlementSummaryDetails

  ShippingAddress = Lithic::Models::ShippingAddress

  SpendLimitDuration = Lithic::Models::SpendLimitDuration

  StatementsCreatedWebhookEvent = Lithic::Models::StatementsCreatedWebhookEvent

  StatementTotals = Lithic::Models::StatementTotals

  ThreeDS = Lithic::Models::ThreeDS

  ThreeDSAuthentication = Lithic::Models::ThreeDSAuthentication

  ThreeDSAuthenticationChallengeWebhookEvent = Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent

  ThreeDSAuthenticationCreatedWebhookEvent = Lithic::Models::ThreeDSAuthenticationCreatedWebhookEvent

  ThreeDSAuthenticationUpdatedWebhookEvent = Lithic::Models::ThreeDSAuthenticationUpdatedWebhookEvent

  TokenInfo = Lithic::Models::TokenInfo

  Tokenization = Lithic::Models::Tokenization

  TokenizationActivateParams = Lithic::Models::TokenizationActivateParams

  TokenizationApprovalRequestWebhookEvent = Lithic::Models::TokenizationApprovalRequestWebhookEvent

  TokenizationDeactivateParams = Lithic::Models::TokenizationDeactivateParams

  TokenizationDecisioningRequestWebhookEvent = Lithic::Models::TokenizationDecisioningRequestWebhookEvent

  TokenizationDecisioningRetrieveSecretParams = Lithic::Models::TokenizationDecisioningRetrieveSecretParams

  TokenizationDecisioningRotateSecretParams = Lithic::Models::TokenizationDecisioningRotateSecretParams

  TokenizationDeclineReason = Lithic::Models::TokenizationDeclineReason

  TokenizationListParams = Lithic::Models::TokenizationListParams

  TokenizationPauseParams = Lithic::Models::TokenizationPauseParams

  TokenizationResendActivationCodeParams = Lithic::Models::TokenizationResendActivationCodeParams

  TokenizationResultWebhookEvent = Lithic::Models::TokenizationResultWebhookEvent

  TokenizationRetrieveParams = Lithic::Models::TokenizationRetrieveParams

  TokenizationRuleResult = Lithic::Models::TokenizationRuleResult

  TokenizationSecret = Lithic::Models::TokenizationSecret

  TokenizationSimulateParams = Lithic::Models::TokenizationSimulateParams

  TokenizationTfaReason = Lithic::Models::TokenizationTfaReason

  TokenizationTwoFactorAuthenticationCodeSentWebhookEvent =
    Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent

  TokenizationTwoFactorAuthenticationCodeWebhookEvent =
    Lithic::Models::TokenizationTwoFactorAuthenticationCodeWebhookEvent

  TokenizationUnpauseParams = Lithic::Models::TokenizationUnpauseParams

  TokenizationUpdateDigitalCardArtParams = Lithic::Models::TokenizationUpdateDigitalCardArtParams

  TokenizationUpdatedWebhookEvent = Lithic::Models::TokenizationUpdatedWebhookEvent

  Transaction = Lithic::Models::Transaction

  TransactionExpireAuthorizationParams = Lithic::Models::TransactionExpireAuthorizationParams

  TransactionListParams = Lithic::Models::TransactionListParams

  TransactionRetrieveParams = Lithic::Models::TransactionRetrieveParams

  Transactions = Lithic::Models::Transactions

  TransactionSimulateAuthorizationAdviceParams =
    Lithic::Models::TransactionSimulateAuthorizationAdviceParams

  TransactionSimulateAuthorizationParams = Lithic::Models::TransactionSimulateAuthorizationParams

  TransactionSimulateClearingParams = Lithic::Models::TransactionSimulateClearingParams

  TransactionSimulateCreditAuthorizationAdviceParams =
    Lithic::Models::TransactionSimulateCreditAuthorizationAdviceParams

  TransactionSimulateReturnParams = Lithic::Models::TransactionSimulateReturnParams

  TransactionSimulateReturnReversalParams = Lithic::Models::TransactionSimulateReturnReversalParams

  TransactionSimulateVoidParams = Lithic::Models::TransactionSimulateVoidParams

  Transfer = Lithic::Models::Transfer

  TransferCreateParams = Lithic::Models::TransferCreateParams

  TransferLimitListParams = Lithic::Models::TransferLimitListParams

  TransferLimitsResponse = Lithic::Models::TransferLimitsResponse

  VerificationMethod = Lithic::Models::VerificationMethod

  WalletDecisioningInfo = Lithic::Models::WalletDecisioningInfo

  WebhookParsedParams = Lithic::Models::WebhookParsedParams

  WirePartyDetails = Lithic::Models::WirePartyDetails
end
