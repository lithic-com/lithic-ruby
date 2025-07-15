# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Accounts#update
    class AccountUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute comment
      #   Additional context or information related to the account.
      #
      #   @return [String, nil]
      optional :comment, String

      # @!attribute daily_spend_limit
      #   Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a
      #   $1,000 limit). By default the daily spend limit is set to $1,250.
      #
      #   @return [Integer, nil]
      optional :daily_spend_limit, Integer

      # @!attribute lifetime_spend_limit
      #   Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
      #   $1,000 limit). Once this limit is reached, no transactions will be accepted on
      #   any card created for this account until the limit is updated. Note that a spend
      #   limit of 0 is effectively no limit, and should only be used to reset or remove a
      #   prior limit. Only a limit of 1 or above will result in declined transactions due
      #   to checks against the account limit. This behavior differs from the daily spend
      #   limit and the monthly spend limit.
      #
      #   @return [Integer, nil]
      optional :lifetime_spend_limit, Integer

      # @!attribute monthly_spend_limit
      #   Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
      #   $1,000 limit). By default the monthly spend limit is set to $5,000.
      #
      #   @return [Integer, nil]
      optional :monthly_spend_limit, Integer

      # @!attribute state
      #   Account states.
      #
      #   @return [Symbol, Lithic::Models::AccountUpdateParams::State, nil]
      optional :state, enum: -> { Lithic::AccountUpdateParams::State }

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
      #   @return [Symbol, Lithic::Models::AccountUpdateParams::Substatus, nil]
      optional :substatus, enum: -> { Lithic::AccountUpdateParams::Substatus }

      # @!attribute verification_address
      #   @deprecated
      #
      #   Address used during Address Verification Service (AVS) checks during
      #   transactions if enabled via Auth Rules. This field is deprecated as AVS checks
      #   are no longer supported by Auth Rules. The field will be removed from the schema
      #   in a future release.
      #
      #   @return [Lithic::Models::AccountUpdateParams::VerificationAddress, nil]
      optional :verification_address, -> { Lithic::AccountUpdateParams::VerificationAddress }

      # @!method initialize(comment: nil, daily_spend_limit: nil, lifetime_spend_limit: nil, monthly_spend_limit: nil, state: nil, substatus: nil, verification_address: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::AccountUpdateParams} for more details.
      #
      #   @param comment [String] Additional context or information related to the account.
      #
      #   @param daily_spend_limit [Integer] Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a $1
      #
      #   @param lifetime_spend_limit [Integer] Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
      #
      #   @param monthly_spend_limit [Integer] Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
      #
      #   @param state [Symbol, Lithic::Models::AccountUpdateParams::State] Account states.
      #
      #   @param substatus [Symbol, Lithic::Models::AccountUpdateParams::Substatus] Account state substatus values:
      #
      #   @param verification_address [Lithic::Models::AccountUpdateParams::VerificationAddress] Address used during Address Verification Service (AVS) checks during transaction
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Account states.
      module State
        extend Lithic::Internal::Type::Enum

        ACTIVE = :ACTIVE
        PAUSED = :PAUSED
        CLOSED = :CLOSED

        # @!method self.values
        #   @return [Array<Symbol>]
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
      class VerificationAddress < Lithic::Internal::Type::BaseModel
        # @!attribute address1
        #
        #   @return [String, nil]
        optional :address1, String

        # @!attribute address2
        #
        #   @return [String, nil]
        optional :address2, String

        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute postal_code
        #
        #   @return [String, nil]
        optional :postal_code, String

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String

        # @!method initialize(address1: nil, address2: nil, city: nil, country: nil, postal_code: nil, state: nil)
        #   Address used during Address Verification Service (AVS) checks during
        #   transactions if enabled via Auth Rules. This field is deprecated as AVS checks
        #   are no longer supported by Auth Rules. The field will be removed from the schema
        #   in a future release.
        #
        #   @param address1 [String]
        #   @param address2 [String]
        #   @param city [String]
        #   @param country [String]
        #   @param postal_code [String]
        #   @param state [String]
      end
    end
  end
end
