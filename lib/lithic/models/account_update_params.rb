# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Accounts#update
    class AccountUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

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

      # @!method initialize(daily_spend_limit: nil, lifetime_spend_limit: nil, monthly_spend_limit: nil, state: nil, verification_address: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::AccountUpdateParams} for more details.
      #
      #   @param daily_spend_limit [Integer] Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a $1
      #
      #   @param lifetime_spend_limit [Integer] Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
      #
      #   @param monthly_spend_limit [Integer] Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
      #
      #   @param state [Symbol, Lithic::Models::AccountUpdateParams::State] Account states.
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
