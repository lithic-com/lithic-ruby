# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Authentication#simulate
      class AuthenticationSimulateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute merchant
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant]
        required :merchant, -> { Lithic::ThreeDS::AuthenticationSimulateParams::Merchant }

        # @!attribute pan
        #   Sixteen digit card number.
        #
        #   @return [String]
        required :pan, String

        # @!attribute transaction
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction]
        required :transaction, -> { Lithic::ThreeDS::AuthenticationSimulateParams::Transaction }

        # @!attribute card_expiry_check
        #   When set will use the following values as part of the Simulated Authentication.
        #   When not set defaults to MATCH
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck, nil]
        optional :card_expiry_check,
                 enum: -> {
                   Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck
                 }

        # @!method initialize(merchant:, pan:, transaction:, card_expiry_check: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ThreeDS::AuthenticationSimulateParams} for more details.
        #
        #   @param merchant [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant]
        #
        #   @param pan [String] Sixteen digit card number.
        #
        #   @param transaction [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction]
        #
        #   @param card_expiry_check [Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck] When set will use the following values as part of the Simulated Authentication.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        class Merchant < Lithic::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier to identify the payment card acceptor. Corresponds to
          #   `merchant_acceptor_id` in authorization.
          #
          #   @return [String]
          required :id, String

          # @!attribute country
          #   Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
          #   (e.g. USA)
          #
          #   @return [String]
          required :country, String

          # @!attribute mcc
          #   Merchant category code for the transaction to be simulated. A four-digit number
          #   listed in ISO 18245. Supported merchant category codes can be found
          #   [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
          #
          #   @return [String]
          required :mcc, String

          # @!attribute name
          #   Merchant descriptor, corresponds to `descriptor` in authorization. If CHALLENGE
          #   keyword is included, Lithic will trigger a challenge.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, country:, mcc:, name:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant} for more
          #   details.
          #
          #   @param id [String] Unique identifier to identify the payment card acceptor. Corresponds to `merchan
          #
          #   @param country [String] Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format (
          #
          #   @param mcc [String] Merchant category code for the transaction to be simulated. A four-digit number
          #
          #   @param name [String] Merchant descriptor, corresponds to `descriptor` in authorization. If CHALLENGE
        end

        class Transaction < Lithic::Internal::Type::BaseModel
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

          # @!method initialize(amount:, currency:)
          #   @param amount [Integer] Amount (in cents) to authenticate.
          #
          #   @param currency [String] 3-character alphabetic ISO 4217 currency code.
        end

        # When set will use the following values as part of the Simulated Authentication.
        # When not set defaults to MATCH
        module CardExpiryCheck
          extend Lithic::Internal::Type::Enum

          MATCH = :MATCH
          MISMATCH = :MISMATCH
          NOT_PRESENT = :NOT_PRESENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
