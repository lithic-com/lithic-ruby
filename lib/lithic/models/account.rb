# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Accounts#retrieve
    class Account < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the account. This is the same as the
      #   account_token returned by the enroll endpoint. If using this parameter, do not
      #   include pagination.
      #
      #   @return [String]
      required :token, String

      # @!attribute created
      #   Timestamp of when the account was created.
      #
      #   @return [Time, nil]
      required :created, Time, nil?: true

      # @!attribute spend_limit
      #   Spend limit information for the user containing the daily, monthly, and lifetime
      #   spend limit of the account. Any charges to a card owned by this account will be
      #   declined once their transaction volume has surpassed the value in the applicable
      #   time limit (rolling). A lifetime limit of 0 indicates that the lifetime limit
      #   feature is disabled.
      #
      #   @return [Lithic::Models::Account::SpendLimit]
      required :spend_limit, -> { Lithic::Account::SpendLimit }

      # @!attribute state
      #   Account state:
      #
      #   - `ACTIVE` - Account is able to transact and create new cards.
      #   - `PAUSED` - Account will not be able to transact or create new cards. It can be
      #     set back to `ACTIVE`.
      #   - `CLOSED` - Account will not be able to transact or create new cards. `CLOSED`
      #     accounts are unable to be transitioned to `ACTIVE` or `PAUSED` states.
      #     Accounts can be manually set to `CLOSED`, or this can be done by Lithic due to
      #     failure to pass KYB/KYC or for risk/compliance reasons. Please contact
      #     [support@lithic.com](mailto:support@lithic.com) if you believe this was done
      #     by mistake.
      #
      #   @return [Symbol, Lithic::Models::Account::State]
      required :state, enum: -> { Lithic::Account::State }

      # @!attribute account_holder
      #
      #   @return [Lithic::Models::Account::AccountHolder, nil]
      optional :account_holder, -> { Lithic::Account::AccountHolder }

      # @!attribute auth_rule_tokens
      #   @deprecated
      #
      #   List of identifiers for the Auth Rule(s) that are applied on the account. This
      #   field is deprecated and will no longer be populated in the `account_holder`
      #   object. The key will be removed from the schema in a future release. Use the
      #   `/auth_rules` endpoints to fetch Auth Rule information instead.
      #
      #   @return [Array<String>, nil]
      optional :auth_rule_tokens, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute cardholder_currency
      #   3-character alphabetic ISO 4217 code for the currency of the cardholder.
      #
      #   @return [String, nil]
      optional :cardholder_currency, String

      # @!attribute comment
      #   Additional context or information related to the account.
      #
      #   @return [String, nil]
      optional :comment, String

      # @!attribute substatus
      #   Account state substatus values:
      #
      #   - `FRAUD_IDENTIFIED` - The account has been recognized as being created or used
      #     with stolen or fabricated identity information, encompassing both true
      #     identity theft and synthetic identities.
      #   - `SUSPICIOUS_ACTIVITY` - The account has exhibited suspicious behavior, such as
      #     unauthorized access or fraudulent transactions, necessitating further
      #     investigation.
      #   - `RISK_VIOLATION` - The account has been involved in deliberate misuse by the
      #     legitimate account holder. Examples include disputing valid transactions
      #     without cause, falsely claiming non-receipt of goods, or engaging in
      #     intentional bust-out schemes to exploit account services.
      #   - `END_USER_REQUEST` - The account holder has voluntarily requested the closure
      #     of the account for personal reasons. This encompasses situations such as
      #     bankruptcy, other financial considerations, or the account holder's death.
      #   - `ISSUER_REQUEST` - The issuer has initiated the closure of the account due to
      #     business strategy, risk management, inactivity, product changes, regulatory
      #     concerns, or violations of terms and conditions.
      #   - `NOT_ACTIVE` - The account has not had any transactions or payment activity
      #     within a specified period. This status applies to accounts that are paused or
      #     closed due to inactivity.
      #   - `INTERNAL_REVIEW` - The account is temporarily paused pending further internal
      #     review. In future implementations, this status may prevent clients from
      #     activating the account via APIs until the review is completed.
      #   - `OTHER` - The reason for the account's current status does not fall into any
      #     of the above categories. A comment should be provided to specify the
      #     particular reason.
      #
      #   @return [Symbol, Lithic::Models::Account::Substatus, nil]
      optional :substatus, enum: -> { Lithic::Account::Substatus }

      # @!attribute verification_address
      #   @deprecated
      #
      #   @return [Lithic::Models::Account::VerificationAddress, nil]
      optional :verification_address, -> { Lithic::Account::VerificationAddress }

      # @!method initialize(token:, created:, spend_limit:, state:, account_holder: nil, auth_rule_tokens: nil, cardholder_currency: nil, comment: nil, substatus: nil, verification_address: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Account}
      #   for more details.
      #
      #   @param token [String] Globally unique identifier for the account. This is the same as the account_toke
      #
      #   @param created [Time, nil] Timestamp of when the account was created.
      #
      #   @param spend_limit [Lithic::Models::Account::SpendLimit] Spend limit information for the user containing the daily, monthly, and lifetime
      #
      #   @param state [Symbol, Lithic::Models::Account::State] Account state:
      #
      #   @param account_holder [Lithic::Models::Account::AccountHolder]
      #
      #   @param auth_rule_tokens [Array<String>] List of identifiers for the Auth Rule(s) that are applied on the account.
      #
      #   @param cardholder_currency [String] 3-character alphabetic ISO 4217 code for the currency of the cardholder.
      #
      #   @param comment [String] Additional context or information related to the account.
      #
      #   @param substatus [Symbol, Lithic::Models::Account::Substatus] Account state substatus values:
      #
      #   @param verification_address [Lithic::Models::Account::VerificationAddress]

      # @see Lithic::Models::Account#spend_limit
      class SpendLimit < Lithic::Internal::Type::BaseModel
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

        # @!method initialize(daily:, lifetime:, monthly:)
        #   Spend limit information for the user containing the daily, monthly, and lifetime
        #   spend limit of the account. Any charges to a card owned by this account will be
        #   declined once their transaction volume has surpassed the value in the applicable
        #   time limit (rolling). A lifetime limit of 0 indicates that the lifetime limit
        #   feature is disabled.
        #
        #   @param daily [Integer] Daily spend limit (in cents).
        #
        #   @param lifetime [Integer] Total spend limit over account lifetime (in cents).
        #
        #   @param monthly [Integer] Monthly spend limit (in cents).
      end

      # Account state:
      #
      # - `ACTIVE` - Account is able to transact and create new cards.
      # - `PAUSED` - Account will not be able to transact or create new cards. It can be
      #   set back to `ACTIVE`.
      # - `CLOSED` - Account will not be able to transact or create new cards. `CLOSED`
      #   accounts are unable to be transitioned to `ACTIVE` or `PAUSED` states.
      #   Accounts can be manually set to `CLOSED`, or this can be done by Lithic due to
      #   failure to pass KYB/KYC or for risk/compliance reasons. Please contact
      #   [support@lithic.com](mailto:support@lithic.com) if you believe this was done
      #   by mistake.
      #
      # @see Lithic::Models::Account#state
      module State
        extend Lithic::Internal::Type::Enum

        ACTIVE = :ACTIVE
        PAUSED = :PAUSED
        CLOSED = :CLOSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::Account#account_holder
      class AccountHolder < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the account holder.
        #
        #   @return [String]
        required :token, String

        # @!attribute business_account_token
        #   Only applicable for customers using the KYC-Exempt workflow to enroll authorized
        #   users of businesses. Account_token of the enrolled business associated with an
        #   enrolled AUTHORIZED_USER individual.
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

        # @!method initialize(token:, business_account_token:, email:, phone_number:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Account::AccountHolder} for more details.
        #
        #   @param token [String] Globally unique identifier for the account holder.
        #
        #   @param business_account_token [String] Only applicable for customers using the KYC-Exempt workflow to enroll authorized
        #
        #   @param email [String] Email address.
        #
        #   @param phone_number [String] Phone number of the individual.
      end

      # Account state substatus values:
      #
      # - `FRAUD_IDENTIFIED` - The account has been recognized as being created or used
      #   with stolen or fabricated identity information, encompassing both true
      #   identity theft and synthetic identities.
      # - `SUSPICIOUS_ACTIVITY` - The account has exhibited suspicious behavior, such as
      #   unauthorized access or fraudulent transactions, necessitating further
      #   investigation.
      # - `RISK_VIOLATION` - The account has been involved in deliberate misuse by the
      #   legitimate account holder. Examples include disputing valid transactions
      #   without cause, falsely claiming non-receipt of goods, or engaging in
      #   intentional bust-out schemes to exploit account services.
      # - `END_USER_REQUEST` - The account holder has voluntarily requested the closure
      #   of the account for personal reasons. This encompasses situations such as
      #   bankruptcy, other financial considerations, or the account holder's death.
      # - `ISSUER_REQUEST` - The issuer has initiated the closure of the account due to
      #   business strategy, risk management, inactivity, product changes, regulatory
      #   concerns, or violations of terms and conditions.
      # - `NOT_ACTIVE` - The account has not had any transactions or payment activity
      #   within a specified period. This status applies to accounts that are paused or
      #   closed due to inactivity.
      # - `INTERNAL_REVIEW` - The account is temporarily paused pending further internal
      #   review. In future implementations, this status may prevent clients from
      #   activating the account via APIs until the review is completed.
      # - `OTHER` - The reason for the account's current status does not fall into any
      #   of the above categories. A comment should be provided to specify the
      #   particular reason.
      #
      # @see Lithic::Models::Account#substatus
      module Substatus
        extend Lithic::Internal::Type::Enum

        FRAUD_IDENTIFIED = :FRAUD_IDENTIFIED
        SUSPICIOUS_ACTIVITY = :SUSPICIOUS_ACTIVITY
        RISK_VIOLATION = :RISK_VIOLATION
        END_USER_REQUEST = :END_USER_REQUEST
        ISSUER_REQUEST = :ISSUER_REQUEST
        NOT_ACTIVE = :NOT_ACTIVE
        INTERNAL_REVIEW = :INTERNAL_REVIEW
        OTHER = :OTHER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @deprecated
      #
      # @see Lithic::Models::Account#verification_address
      class VerificationAddress < Lithic::Internal::Type::BaseModel
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
        #   entered as a five-digit postal code or nine-digit postal code (ZIP+4) using the
        #   format 12345-1234.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute state
        #   Valid state code. Only USA state codes are currently supported, entered in
        #   uppercase ISO 3166-2 two-character format.
        #
        #   @return [String]
        required :state, String

        # @!attribute address2
        #   Unit or apartment number (if applicable).
        #
        #   @return [String, nil]
        optional :address2, String

        # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Account::VerificationAddress} for more details.
        #
        #   @param address1 [String] Valid deliverable address (no PO boxes).
        #
        #   @param city [String] City name.
        #
        #   @param country [String] Country name. Only USA is currently supported.
        #
        #   @param postal_code [String] Valid postal code. Only USA postal codes (ZIP codes) are currently supported, en
        #
        #   @param state [String] Valid state code. Only USA state codes are currently supported, entered in upper
        #
        #   @param address2 [String] Unit or apartment number (if applicable).
      end
    end
  end
end
