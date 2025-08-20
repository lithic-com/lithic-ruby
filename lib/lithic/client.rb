# frozen_string_literal: true

module Lithic
  class Client < Lithic::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # rubocop:disable Style/MutableConstant
    # @type [Hash{Symbol=>String}]
    ENVIRONMENTS = {production: "https://api.lithic.com", sandbox: "https://sandbox.lithic.com"}
    # rubocop:enable Style/MutableConstant

    # @return [String]
    attr_reader :api_key

    # @return [Lithic::Resources::Accounts]
    attr_reader :accounts

    # @return [Lithic::Resources::AccountHolders]
    attr_reader :account_holders

    # @return [Lithic::Resources::AuthRules]
    attr_reader :auth_rules

    # @return [Lithic::Resources::AuthStreamEnrollment]
    attr_reader :auth_stream_enrollment

    # @return [Lithic::Resources::TokenizationDecisioning]
    attr_reader :tokenization_decisioning

    # @return [Lithic::Resources::Tokenizations]
    attr_reader :tokenizations

    # @return [Lithic::Resources::Cards]
    attr_reader :cards

    # @return [Lithic::Resources::Balances]
    attr_reader :balances

    # @return [Lithic::Resources::AggregateBalances]
    attr_reader :aggregate_balances

    # @return [Lithic::Resources::Disputes]
    attr_reader :disputes

    # @return [Lithic::Resources::Events]
    attr_reader :events

    # @return [Lithic::Resources::Transfers]
    attr_reader :transfers

    # @return [Lithic::Resources::FinancialAccounts]
    attr_reader :financial_accounts

    # @return [Lithic::Resources::Transactions]
    attr_reader :transactions

    # @return [Lithic::Resources::ResponderEndpoints]
    attr_reader :responder_endpoints

    # @return [Lithic::Resources::ExternalBankAccounts]
    attr_reader :external_bank_accounts

    # @return [Lithic::Resources::Payments]
    attr_reader :payments

    # @return [Lithic::Resources::ThreeDS]
    attr_reader :three_ds

    # @return [Lithic::Resources::Reports]
    attr_reader :reports

    # @return [Lithic::Resources::CardPrograms]
    attr_reader :card_programs

    # @return [Lithic::Resources::DigitalCardArt]
    attr_reader :digital_card_art

    # @return [Lithic::Resources::BookTransfers]
    attr_reader :book_transfers

    # @return [Lithic::Resources::CreditProducts]
    attr_reader :credit_products

    # @return [Lithic::Resources::ExternalPayments]
    attr_reader :external_payments

    # @return [Lithic::Resources::ManagementOperations]
    attr_reader :management_operations

    # @return [Lithic::Resources::FundingEvents]
    attr_reader :funding_events

    # @return [Lithic::Resources::Fraud]
    attr_reader :fraud

    # @return [Lithic::Resources::NetworkPrograms]
    attr_reader :network_programs

    # @return [Lithic::Resources::AccountActivity]
    attr_reader :account_activity

    # Status of api
    #
    # @overload api_status(request_options: {})
    #
    # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
    #
    # @return [Lithic::Models::APIStatus]
    #
    # @see Lithic::Models::ClientAPIStatusParams
    def api_status(params = {})
      request(method: :get, path: "v1/status", model: Lithic::APIStatus, options: params[:request_options])
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"authorization" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["LITHIC_API_KEY"]`
    #
    # @param environment [:production, :sandbox, nil] Specifies the environment to use for the API.
    #
    # Each environment maps to a different base URL:
    #
    # - `production` corresponds to `https://api.lithic.com`
    # - `sandbox` corresponds to `https://sandbox.lithic.com`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["LITHIC_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["LITHIC_API_KEY"],
      environment: nil,
      base_url: ENV["LITHIC_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= Lithic::Client::ENVIRONMENTS.fetch(environment&.to_sym || :production) do
        message = "environment must be one of #{Lithic::Client::ENVIRONMENTS.keys}, got #{environment}"
        raise ArgumentError.new(message)
      end

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"LITHIC_API_KEY\"")
      end

      headers = {
        "x-lithic-pagination" => "cursor"
      }

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @accounts = Lithic::Resources::Accounts.new(client: self)
      @account_holders = Lithic::Resources::AccountHolders.new(client: self)
      @auth_rules = Lithic::Resources::AuthRules.new(client: self)
      @auth_stream_enrollment = Lithic::Resources::AuthStreamEnrollment.new(client: self)
      @tokenization_decisioning = Lithic::Resources::TokenizationDecisioning.new(client: self)
      @tokenizations = Lithic::Resources::Tokenizations.new(client: self)
      @cards = Lithic::Resources::Cards.new(client: self)
      @balances = Lithic::Resources::Balances.new(client: self)
      @aggregate_balances = Lithic::Resources::AggregateBalances.new(client: self)
      @disputes = Lithic::Resources::Disputes.new(client: self)
      @events = Lithic::Resources::Events.new(client: self)
      @transfers = Lithic::Resources::Transfers.new(client: self)
      @financial_accounts = Lithic::Resources::FinancialAccounts.new(client: self)
      @transactions = Lithic::Resources::Transactions.new(client: self)
      @responder_endpoints = Lithic::Resources::ResponderEndpoints.new(client: self)
      @external_bank_accounts = Lithic::Resources::ExternalBankAccounts.new(client: self)
      @payments = Lithic::Resources::Payments.new(client: self)
      @three_ds = Lithic::Resources::ThreeDS.new(client: self)
      @reports = Lithic::Resources::Reports.new(client: self)
      @card_programs = Lithic::Resources::CardPrograms.new(client: self)
      @digital_card_art = Lithic::Resources::DigitalCardArt.new(client: self)
      @book_transfers = Lithic::Resources::BookTransfers.new(client: self)
      @credit_products = Lithic::Resources::CreditProducts.new(client: self)
      @external_payments = Lithic::Resources::ExternalPayments.new(client: self)
      @management_operations = Lithic::Resources::ManagementOperations.new(client: self)
      @funding_events = Lithic::Resources::FundingEvents.new(client: self)
      @fraud = Lithic::Resources::Fraud.new(client: self)
      @network_programs = Lithic::Resources::NetworkPrograms.new(client: self)
      @account_activity = Lithic::Resources::AccountActivity.new(client: self)
    end
  end
end
