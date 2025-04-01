# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Accounts#retrieve
    class Account < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier for the account. This is the same as the
      #     account_token returned by the enroll endpoint. If using this parameter, do not
      #     include pagination.
      #
      #   @return [String]
      required :token, String

      # @!attribute created
      #   Timestamp of when the account was created. For accounts created before
      #     2023-05-11, this field will be null.
      #
      #   @return [Time, nil]
      required :created, Time, nil?: true

      # @!attribute spend_limit
      #   Spend limit information for the user containing the daily, monthly, and lifetime
      #     spend limit of the account. Any charges to a card owned by this account will be
      #     declined once their transaction volume has surpassed the value in the applicable
      #     time limit (rolling). A lifetime limit of 0 indicates that the lifetime limit
      #     feature is disabled.
      #
      #   @return [Lithic::Models::Account::SpendLimit]
      required :spend_limit, -> { Lithic::Models::Account::SpendLimit }

      # @!attribute state
      #   Account state:
      #
      #     - `ACTIVE` - Account is able to transact and create new cards.
      #     - `PAUSED` - Account will not be able to transact or create new cards. It can be
      #       set back to `ACTIVE`.
      #     - `CLOSED` - Account will not be able to transact or create new cards. `CLOSED`
      #       accounts are also unable to be transitioned to `ACTIVE` or `PAUSED` states.
      #       `CLOSED` accounts result from failing to pass KYB/KYC or Lithic closing for
      #       risk/compliance reasons. Please contact
      #       [support@lithic.com](mailto:support@lithic.com) if you believe this was in
      #       error.
      #
      #   @return [Symbol, Lithic::Models::Account::State]
      required :state, enum: -> { Lithic::Models::Account::State }

      # @!attribute [r] account_holder
      #
      #   @return [Lithic::Models::Account::AccountHolder, nil]
      optional :account_holder, -> { Lithic::Models::Account::AccountHolder }

      # @!parse
      #   # @return [Lithic::Models::Account::AccountHolder]
      #   attr_writer :account_holder

      # @!attribute [r] auth_rule_tokens
      #   List of identifiers for the Auth Rule(s) that are applied on the account. This
      #     field is deprecated and will no longer be populated in the `account_holder`
      #     object. The key will be removed from the schema in a future release. Use the
      #     `/auth_rules` endpoints to fetch Auth Rule information instead.
      #
      #   @return [Array<String>, nil]
      optional :auth_rule_tokens, Lithic::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :auth_rule_tokens

      # @!attribute [r] cardholder_currency
      #   3-character alphabetic ISO 4217 code for the currency of the cardholder.
      #
      #   @return [String, nil]
      optional :cardholder_currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cardholder_currency

      # @!attribute [r] verification_address
      #
      #   @return [Lithic::Models::Account::VerificationAddress, nil]
      optional :verification_address, -> { Lithic::Models::Account::VerificationAddress }

      # @!parse
      #   # @return [Lithic::Models::Account::VerificationAddress]
      #   attr_writer :verification_address

      # @!parse
      #   # @param token [String]
      #   # @param created [Time, nil]
      #   # @param spend_limit [Lithic::Models::Account::SpendLimit]
      #   # @param state [Symbol, Lithic::Models::Account::State]
      #   # @param account_holder [Lithic::Models::Account::AccountHolder]
      #   # @param auth_rule_tokens [Array<String>]
      #   # @param cardholder_currency [String]
      #   # @param verification_address [Lithic::Models::Account::VerificationAddress]
      #   #
      #   def initialize(
      #     token:,
      #     created:,
      #     spend_limit:,
      #     state:,
      #     account_holder: nil,
      #     auth_rule_tokens: nil,
      #     cardholder_currency: nil,
      #     verification_address: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # @see Lithic::Models::Account#spend_limit
      class SpendLimit < Lithic::BaseModel
        # @!attribute daily
        #   Daily spend limit (in cents).
        #
        #   @return [Integer]
        required :daily, Integer

        # @!attribute lifetime
        #   Total spend limit over account lifetime (in cents).
        #
        #   @return [Integer]
        required :lifetime, Integer

        # @!attribute monthly
        #   Monthly spend limit (in cents).
        #
        #   @return [Integer]
        required :monthly, Integer

        # @!parse
        #   # Spend limit information for the user containing the daily, monthly, and lifetime
        #   #   spend limit of the account. Any charges to a card owned by this account will be
        #   #   declined once their transaction volume has surpassed the value in the applicable
        #   #   time limit (rolling). A lifetime limit of 0 indicates that the lifetime limit
        #   #   feature is disabled.
        #   #
        #   # @param daily [Integer]
        #   # @param lifetime [Integer]
        #   # @param monthly [Integer]
        #   #
        #   def initialize(daily:, lifetime:, monthly:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # Account state:
      #
      #   - `ACTIVE` - Account is able to transact and create new cards.
      #   - `PAUSED` - Account will not be able to transact or create new cards. It can be
      #     set back to `ACTIVE`.
      #   - `CLOSED` - Account will not be able to transact or create new cards. `CLOSED`
      #     accounts are also unable to be transitioned to `ACTIVE` or `PAUSED` states.
      #     `CLOSED` accounts result from failing to pass KYB/KYC or Lithic closing for
      #     risk/compliance reasons. Please contact
      #     [support@lithic.com](mailto:support@lithic.com) if you believe this was in
      #     error.
      #
      # @see Lithic::Models::Account#state
      module State
        extend Lithic::Enum

        ACTIVE = :ACTIVE
        PAUSED = :PAUSED
        CLOSED = :CLOSED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Lithic::Models::Account#account_holder
      class AccountHolder < Lithic::BaseModel
        # @!attribute token
        #   Globally unique identifier for the account holder.
        #
        #   @return [String]
        required :token, String

        # @!attribute business_account_token
        #   Only applicable for customers using the KYC-Exempt workflow to enroll authorized
        #     users of businesses. Account_token of the enrolled business associated with an
        #     enrolled AUTHORIZED_USER individual.
        #
        #   @return [String]
        required :business_account_token, String

        # @!attribute email
        #   Email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute phone_number
        #   Phone number of the individual.
        #
        #   @return [String]
        required :phone_number, String

        # @!parse
        #   # @param token [String]
        #   # @param business_account_token [String]
        #   # @param email [String]
        #   # @param phone_number [String]
        #   #
        #   def initialize(token:, business_account_token:, email:, phone_number:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # @deprecated
      #
      # @see Lithic::Models::Account#verification_address
      class VerificationAddress < Lithic::BaseModel
        # @!attribute address1
        #   Valid deliverable address (no PO boxes).
        #
        #   @return [String]
        required :address1, String

        # @!attribute city
        #   City name.
        #
        #   @return [String]
        required :city, String

        # @!attribute country
        #   Country name. Only USA is currently supported.
        #
        #   @return [String]
        required :country, String

        # @!attribute postal_code
        #   Valid postal code. Only USA postal codes (ZIP codes) are currently supported,
        #     entered as a five-digit postal code or nine-digit postal code (ZIP+4) using the
        #     format 12345-1234.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute state
        #   Valid state code. Only USA state codes are currently supported, entered in
        #     uppercase ISO 3166-2 two-character format.
        #
        #   @return [String]
        required :state, String

        # @!attribute [r] address2
        #   Unit or apartment number (if applicable).
        #
        #   @return [String, nil]
        optional :address2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :address2

        # @!parse
        #   # @param address1 [String]
        #   # @param city [String]
        #   # @param country [String]
        #   # @param postal_code [String]
        #   # @param state [String]
        #   # @param address2 [String]
        #   #
        #   def initialize(address1:, city:, country:, postal_code:, state:, address2: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
