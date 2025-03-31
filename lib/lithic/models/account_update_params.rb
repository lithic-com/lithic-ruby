# frozen_string_literal: true

module Lithic
  module Models
    class AccountUpdateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] daily_spend_limit
      #   Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a
      #     $1,000 limit). By default the daily spend limit is set to $1,250.
      #
      #   @return [Integer, nil]
      optional :daily_spend_limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :daily_spend_limit

      # @!attribute [r] lifetime_spend_limit
      #   Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
      #     $1,000 limit). Once this limit is reached, no transactions will be accepted on
      #     any card created for this account until the limit is updated. Note that a spend
      #     limit of 0 is effectively no limit, and should only be used to reset or remove a
      #     prior limit. Only a limit of 1 or above will result in declined transactions due
      #     to checks against the account limit. This behavior differs from the daily spend
      #     limit and the monthly spend limit.
      #
      #   @return [Integer, nil]
      optional :lifetime_spend_limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :lifetime_spend_limit

      # @!attribute [r] monthly_spend_limit
      #   Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
      #     $1,000 limit). By default the monthly spend limit is set to $5,000.
      #
      #   @return [Integer, nil]
      optional :monthly_spend_limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :monthly_spend_limit

      # @!attribute [r] state
      #   Account states.
      #
      #   @return [Symbol, Lithic::Models::AccountUpdateParams::State, nil]
      optional :state, enum: -> { Lithic::Models::AccountUpdateParams::State }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountUpdateParams::State]
      #   attr_writer :state

      # @!attribute [r] verification_address
      #   Address used during Address Verification Service (AVS) checks during
      #     transactions if enabled via Auth Rules. This field is deprecated as AVS checks
      #     are no longer supported by Authorization Rules. The field will be removed from
      #     the schema in a future release.
      #
      #   @return [Lithic::Models::AccountUpdateParams::VerificationAddress, nil]
      optional :verification_address, -> { Lithic::Models::AccountUpdateParams::VerificationAddress }

      # @!parse
      #   # @return [Lithic::Models::AccountUpdateParams::VerificationAddress]
      #   attr_writer :verification_address

      # @!parse
      #   # @param daily_spend_limit [Integer]
      #   # @param lifetime_spend_limit [Integer]
      #   # @param monthly_spend_limit [Integer]
      #   # @param state [Symbol, Lithic::Models::AccountUpdateParams::State]
      #   # @param verification_address [Lithic::Models::AccountUpdateParams::VerificationAddress]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     daily_spend_limit: nil,
      #     lifetime_spend_limit: nil,
      #     monthly_spend_limit: nil,
      #     state: nil,
      #     verification_address: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Account states.
      module State
        extend Lithic::Enum

        ACTIVE = :ACTIVE
        PAUSED = :PAUSED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @deprecated
      class VerificationAddress < Lithic::BaseModel
        # @!attribute [r] address1
        #
        #   @return [String, nil]
        optional :address1, String

        # @!parse
        #   # @return [String]
        #   attr_writer :address1

        # @!attribute [r] address2
        #
        #   @return [String, nil]
        optional :address2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :address2

        # @!attribute [r] city
        #
        #   @return [String, nil]
        optional :city, String

        # @!parse
        #   # @return [String]
        #   attr_writer :city

        # @!attribute [r] country
        #
        #   @return [String, nil]
        optional :country, String

        # @!parse
        #   # @return [String]
        #   attr_writer :country

        # @!attribute [r] postal_code
        #
        #   @return [String, nil]
        optional :postal_code, String

        # @!parse
        #   # @return [String]
        #   attr_writer :postal_code

        # @!attribute [r] state
        #
        #   @return [String, nil]
        optional :state, String

        # @!parse
        #   # @return [String]
        #   attr_writer :state

        # @!parse
        #   # Address used during Address Verification Service (AVS) checks during
        #   #   transactions if enabled via Auth Rules. This field is deprecated as AVS checks
        #   #   are no longer supported by Authorization Rules. The field will be removed from
        #   #   the schema in a future release.
        #   #
        #   # @param address1 [String]
        #   # @param address2 [String]
        #   # @param city [String]
        #   # @param country [String]
        #   # @param postal_code [String]
        #   # @param state [String]
        #   #
        #   def initialize(address1: nil, address2: nil, city: nil, country: nil, postal_code: nil, state: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
