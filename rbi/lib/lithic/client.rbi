# typed: strong

module Lithic
  class Client < Lithic::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {production: "https://api.lithic.com", sandbox: "https://sandbox.lithic.com"},
        T::Hash[Symbol, String]
      )

    sig { returns(String) }
    def api_key
    end

    sig { returns(Lithic::Resources::Accounts) }
    def accounts
    end

    sig { returns(Lithic::Resources::AccountHolders) }
    def account_holders
    end

    sig { returns(Lithic::Resources::AuthRules) }
    def auth_rules
    end

    sig { returns(Lithic::Resources::AuthStreamEnrollment) }
    def auth_stream_enrollment
    end

    sig { returns(Lithic::Resources::TokenizationDecisioning) }
    def tokenization_decisioning
    end

    sig { returns(Lithic::Resources::Tokenizations) }
    def tokenizations
    end

    sig { returns(Lithic::Resources::Cards) }
    def cards
    end

    sig { returns(Lithic::Resources::Balances) }
    def balances
    end

    sig { returns(Lithic::Resources::AggregateBalances) }
    def aggregate_balances
    end

    sig { returns(Lithic::Resources::Disputes) }
    def disputes
    end

    sig { returns(Lithic::Resources::Events) }
    def events
    end

    sig { returns(Lithic::Resources::Transfers) }
    def transfers
    end

    sig { returns(Lithic::Resources::FinancialAccounts) }
    def financial_accounts
    end

    sig { returns(Lithic::Resources::Transactions) }
    def transactions
    end

    sig { returns(Lithic::Resources::ResponderEndpoints) }
    def responder_endpoints
    end

    sig { returns(Lithic::Resources::ExternalBankAccounts) }
    def external_bank_accounts
    end

    sig { returns(Lithic::Resources::Payments) }
    def payments
    end

    sig { returns(Lithic::Resources::ThreeDS) }
    def three_ds
    end

    sig { returns(Lithic::Resources::Reports) }
    def reports
    end

    sig { returns(Lithic::Resources::CardPrograms) }
    def card_programs
    end

    sig { returns(Lithic::Resources::DigitalCardArt) }
    def digital_card_art
    end

    sig { returns(Lithic::Resources::BookTransfers) }
    def book_transfers
    end

    sig { returns(Lithic::Resources::CreditProducts) }
    def credit_products
    end

    sig { returns(Lithic::Resources::ExternalPayments) }
    def external_payments
    end

    sig { returns(Lithic::Resources::ManagementOperations) }
    def management_operations
    end

    # Status of api
    sig do
      params(request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)))
        .returns(Lithic::Models::APIStatus)
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
        environment: NilClass,
        base_url: T.nilable(String),
        api_key: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Specifies the environment to use for the API.
      #
      #   Each environment maps to a different base URL:
      #
      #   - `production` corresponds to `https://api.lithic.com`
      #   - `sandbox` corresponds to `https://sandbox.lithic.com`
      environment: nil,
      # Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
      base_url: nil,
      # Defaults to `ENV["LITHIC_API_KEY"]`
      api_key: ENV["LITHIC_API_KEY"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
