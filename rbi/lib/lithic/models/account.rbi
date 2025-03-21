# typed: strong

module Lithic
  module Models
    class Account < Lithic::BaseModel
      # Globally unique identifier for the account. This is the same as the
      #   account_token returned by the enroll endpoint. If using this parameter, do not
      #   include pagination.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Timestamp of when the account was created. For accounts created before
      #   2023-05-11, this field will be null.
      sig { returns(T.nilable(Time)) }
      def created
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created=(_)
      end

      # Spend limit information for the user containing the daily, monthly, and lifetime
      #   spend limit of the account. Any charges to a card owned by this account will be
      #   declined once their transaction volume has surpassed the value in the applicable
      #   time limit (rolling). A lifetime limit of 0 indicates that the lifetime limit
      #   feature is disabled.
      sig { returns(Lithic::Models::Account::SpendLimit) }
      def spend_limit
      end

      sig do
        params(_: T.any(Lithic::Models::Account::SpendLimit, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Account::SpendLimit, Lithic::Util::AnyHash))
      end
      def spend_limit=(_)
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
      sig { returns(Lithic::Models::Account::State::TaggedSymbol) }
      def state
      end

      sig do
        params(_: Lithic::Models::Account::State::TaggedSymbol)
          .returns(Lithic::Models::Account::State::TaggedSymbol)
      end
      def state=(_)
      end

      sig { returns(T.nilable(Lithic::Models::Account::AccountHolder)) }
      def account_holder
      end

      sig do
        params(_: T.any(Lithic::Models::Account::AccountHolder, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Account::AccountHolder, Lithic::Util::AnyHash))
      end
      def account_holder=(_)
      end

      # List of identifiers for the Auth Rule(s) that are applied on the account. This
      #   field is deprecated and will no longer be populated in the `account_holder`
      #   object. The key will be removed from the schema in a future release. Use the
      #   `/auth_rules` endpoints to fetch Auth Rule information instead.
      sig { returns(T.nilable(T::Array[String])) }
      def auth_rule_tokens
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def auth_rule_tokens=(_)
      end

      # 3-character alphabetic ISO 4217 code for the currency of the cardholder.
      sig { returns(T.nilable(String)) }
      def cardholder_currency
      end

      sig { params(_: String).returns(String) }
      def cardholder_currency=(_)
      end

      sig { returns(T.nilable(Lithic::Models::Account::VerificationAddress)) }
      def verification_address
      end

      sig do
        params(_: T.any(Lithic::Models::Account::VerificationAddress, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Account::VerificationAddress, Lithic::Util::AnyHash))
      end
      def verification_address=(_)
      end

      sig do
        params(
          token: String,
          created: T.nilable(Time),
          spend_limit: T.any(Lithic::Models::Account::SpendLimit, Lithic::Util::AnyHash),
          state: Lithic::Models::Account::State::TaggedSymbol,
          account_holder: T.any(Lithic::Models::Account::AccountHolder, Lithic::Util::AnyHash),
          auth_rule_tokens: T::Array[String],
          cardholder_currency: String,
          verification_address: T.any(Lithic::Models::Account::VerificationAddress, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        created:,
        spend_limit:,
        state:,
        account_holder: nil,
        auth_rule_tokens: nil,
        cardholder_currency: nil,
        verification_address: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              created: T.nilable(Time),
              spend_limit: Lithic::Models::Account::SpendLimit,
              state: Lithic::Models::Account::State::TaggedSymbol,
              account_holder: Lithic::Models::Account::AccountHolder,
              auth_rule_tokens: T::Array[String],
              cardholder_currency: String,
              verification_address: Lithic::Models::Account::VerificationAddress
            }
          )
      end
      def to_hash
      end

      class SpendLimit < Lithic::BaseModel
        # Daily spend limit (in cents).
        sig { returns(Integer) }
        def daily
        end

        sig { params(_: Integer).returns(Integer) }
        def daily=(_)
        end

        # Total spend limit over account lifetime (in cents).
        sig { returns(Integer) }
        def lifetime
        end

        sig { params(_: Integer).returns(Integer) }
        def lifetime=(_)
        end

        # Monthly spend limit (in cents).
        sig { returns(Integer) }
        def monthly
        end

        sig { params(_: Integer).returns(Integer) }
        def monthly=(_)
        end

        # Spend limit information for the user containing the daily, monthly, and lifetime
        #   spend limit of the account. Any charges to a card owned by this account will be
        #   declined once their transaction volume has surpassed the value in the applicable
        #   time limit (rolling). A lifetime limit of 0 indicates that the lifetime limit
        #   feature is disabled.
        sig { params(daily: Integer, lifetime: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(daily:, lifetime:, monthly:)
        end

        sig { override.returns({daily: Integer, lifetime: Integer, monthly: Integer}) }
        def to_hash
        end
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
      module State
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Account::State) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Account::State::TaggedSymbol) }

        ACTIVE = T.let(:ACTIVE, Lithic::Models::Account::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::Account::State::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Models::Account::State::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::Account::State::TaggedSymbol]) }
          def values
          end
        end
      end

      class AccountHolder < Lithic::BaseModel
        # Globally unique identifier for the account holder.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
        #   users of businesses. Account_token of the enrolled business associated with an
        #   enrolled AUTHORIZED_USER individual.
        sig { returns(String) }
        def business_account_token
        end

        sig { params(_: String).returns(String) }
        def business_account_token=(_)
        end

        # Email address.
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Phone number of the individual.
        sig { returns(String) }
        def phone_number
        end

        sig { params(_: String).returns(String) }
        def phone_number=(_)
        end

        sig do
          params(token: String, business_account_token: String, email: String, phone_number: String)
            .returns(T.attached_class)
        end
        def self.new(token:, business_account_token:, email:, phone_number:)
        end

        sig do
          override.returns(
            {
              token: String,
              business_account_token: String,
              email: String,
              phone_number: String
            }
          )
        end
        def to_hash
        end
      end

      class VerificationAddress < Lithic::BaseModel
        # Valid deliverable address (no PO boxes).
        sig { returns(String) }
        def address1
        end

        sig { params(_: String).returns(String) }
        def address1=(_)
        end

        # City name.
        sig { returns(String) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        # Country name. Only USA is currently supported.
        sig { returns(String) }
        def country
        end

        sig { params(_: String).returns(String) }
        def country=(_)
        end

        # Valid postal code. Only USA postal codes (ZIP codes) are currently supported,
        #   entered as a five-digit postal code or nine-digit postal code (ZIP+4) using the
        #   format 12345-1234.
        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        # Valid state code. Only USA state codes are currently supported, entered in
        #   uppercase ISO 3166-2 two-character format.
        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        # Unit or apartment number (if applicable).
        sig { returns(T.nilable(String)) }
        def address2
        end

        sig { params(_: String).returns(String) }
        def address2=(_)
        end

        sig do
          params(
            address1: String,
            city: String,
            country: String,
            postal_code: String,
            state: String,
            address2: String
          )
            .returns(T.attached_class)
        end
        def self.new(address1:, city:, country:, postal_code:, state:, address2: nil)
        end

        sig do
          override
            .returns(
              {
                address1: String,
                city: String,
                country: String,
                postal_code: String,
                state: String,
                address2: String
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
