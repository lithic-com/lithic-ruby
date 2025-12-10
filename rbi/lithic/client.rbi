# typed: strong

module Lithic
  class Client < Lithic::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {
          production: "https://api.lithic.com",
          sandbox: "https://sandbox.lithic.com"
        },
        T::Hash[Symbol, String]
      )

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Lithic::Resources::Accounts) }
    attr_reader :accounts

    sig { returns(Lithic::Resources::AccountHolders) }
    attr_reader :account_holders

    sig { returns(Lithic::Resources::AuthRules) }
    attr_reader :auth_rules

    sig { returns(Lithic::Resources::AuthStreamEnrollment) }
    attr_reader :auth_stream_enrollment

    sig { returns(Lithic::Resources::TokenizationDecisioning) }
    attr_reader :tokenization_decisioning

    sig { returns(Lithic::Resources::Tokenizations) }
    attr_reader :tokenizations

    sig { returns(Lithic::Resources::Cards) }
    attr_reader :cards

    sig { returns(Lithic::Resources::CardBulkOrders) }
    attr_reader :card_bulk_orders

    sig { returns(Lithic::Resources::Balances) }
    attr_reader :balances

    sig { returns(Lithic::Resources::AggregateBalances) }
    attr_reader :aggregate_balances

    sig { returns(Lithic::Resources::Disputes) }
    attr_reader :disputes

    sig { returns(Lithic::Resources::DisputesV2) }
    attr_reader :disputes_v2

    sig { returns(Lithic::Resources::Events) }
    attr_reader :events

    sig { returns(Lithic::Resources::Transfers) }
    attr_reader :transfers

    sig { returns(Lithic::Resources::FinancialAccounts) }
    attr_reader :financial_accounts

    sig { returns(Lithic::Resources::Transactions) }
    attr_reader :transactions

    sig { returns(Lithic::Resources::ResponderEndpoints) }
    attr_reader :responder_endpoints

    sig { returns(Lithic::Resources::ExternalBankAccounts) }
    attr_reader :external_bank_accounts

    sig { returns(Lithic::Resources::Payments) }
    attr_reader :payments

    sig { returns(Lithic::Resources::ThreeDS) }
    attr_reader :three_ds

    sig { returns(Lithic::Resources::Reports) }
    attr_reader :reports

    sig { returns(Lithic::Resources::CardPrograms) }
    attr_reader :card_programs

    sig { returns(Lithic::Resources::DigitalCardArt) }
    attr_reader :digital_card_art

    sig { returns(Lithic::Resources::BookTransfers) }
    attr_reader :book_transfers

    sig { returns(Lithic::Resources::CreditProducts) }
    attr_reader :credit_products

    sig { returns(Lithic::Resources::ExternalPayments) }
    attr_reader :external_payments

    sig { returns(Lithic::Resources::ManagementOperations) }
    attr_reader :management_operations

    sig { returns(Lithic::Resources::InternalTransaction) }
    attr_reader :internal_transaction

    sig { returns(Lithic::Resources::FundingEvents) }
    attr_reader :funding_events

    sig { returns(Lithic::Resources::Fraud) }
    attr_reader :fraud

    sig { returns(Lithic::Resources::NetworkPrograms) }
    attr_reader :network_programs

    sig { returns(Lithic::Resources::AccountActivity) }
    attr_reader :account_activity

    sig { returns(Lithic::Resources::Webhooks) }
    attr_reader :webhooks

    # Status of api
    sig do
      params(request_options: Lithic::RequestOptions::OrHash).returns(
        Lithic::APIStatus
      )
    end
    def api_status(request_options: {})
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        environment: T.nilable(T.any(Symbol, String)),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["LITHIC_API_KEY"]`
      api_key: ENV["LITHIC_API_KEY"],
      # Specifies the environment to use for the API.
      #
      # Each environment maps to a different base URL:
      #
      # - `production` corresponds to `https://api.lithic.com`
      # - `sandbox` corresponds to `https://sandbox.lithic.com`
      environment: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["LITHIC_BASE_URL"]`
      base_url: ENV["LITHIC_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Lithic::Client::DEFAULT_MAX_RETRIES,
      timeout: Lithic::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Lithic::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Lithic::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
