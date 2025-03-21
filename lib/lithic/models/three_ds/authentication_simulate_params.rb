# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute merchant
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant]
        required :merchant, -> { Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant }

        # @!attribute pan
        #   Sixteen digit card number.
        #
        #   @return [String]
        required :pan, String

        # @!attribute transaction
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction]
        required :transaction, -> { Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction }

        # @!attribute [r] card_expiry_check
        #   When set will use the following values as part of the Simulated Authentication.
        #     When not set defaults to MATCH
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck, nil]
        optional :card_expiry_check,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck }

        # @!parse
        #   # @return [Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck]
        #   attr_writer :card_expiry_check

        # @!parse
        #   # @param merchant [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant]
        #   # @param pan [String]
        #   # @param transaction [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction]
        #   # @param card_expiry_check [Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(merchant:, pan:, transaction:, card_expiry_check: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        class Merchant < Lithic::BaseModel
          # @!attribute id
          #   Unique identifier to identify the payment card acceptor. Corresponds to
          #     `merchant_acceptor_id` in authorization.
          #
          #   @return [String]
          required :id, String

          # @!attribute country
          #   Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
          #     (e.g. USA)
          #
          #   @return [String]
          required :country, String

          # @!attribute mcc
          #   Merchant category code for the transaction to be simulated. A four-digit number
          #     listed in ISO 18245. Supported merchant category codes can be found
          #     [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
          #
          #   @return [String]
          required :mcc, String

          # @!attribute name
          #   Merchant descriptor, corresponds to `descriptor` in authorization. If CHALLENGE
          #     keyword is included, Lithic will trigger a challenge.
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param country [String]
          #   # @param mcc [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, country:, mcc:, name:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void
        end

        class Transaction < Lithic::BaseModel
          # @!attribute amount
          #   Amount (in cents) to authenticate.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   3-character alphabetic ISO 4217 currency code.
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param amount [Integer]
          #   # @param currency [String]
          #   #
          #   def initialize(amount:, currency:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void
        end

        # When set will use the following values as part of the Simulated Authentication.
        #   When not set defaults to MATCH
        module CardExpiryCheck
          extend Lithic::Enum

          MATCH = :MATCH
          MISMATCH = :MISMATCH
          NOT_PRESENT = :NOT_PRESENT

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
