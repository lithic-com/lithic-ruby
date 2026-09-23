# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_return
    class TransactionSimulateReturnParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount (in cents) to authorize.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute descriptor
      #   Merchant descriptor.
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute pan
      #   Sixteen digit card number.
      #
      #   @return [String]
      required :pan, String

      # @!attribute billing_currency
      #   3-character alphabetic ISO 4217 currency code for the cardholder billing amount.
      #   Permitted values are USD, GBP, EUR and CAD, and any other ISO 4217 code returns
      #   a 422. Defaults to USD
      #
      #   @return [String, nil]
      optional :billing_currency, String

      # @!attribute settlement_currency
      #   3-character alphabetic ISO 4217 currency code for the settlement amount.
      #   Permitted values are USD, GBP, EUR and CAD, and any other ISO 4217 code returns
      #   a 422. Defaults to the value of billing_currency
      #
      #   @return [String, nil]
      optional :settlement_currency, String

      # @!method initialize(amount:, descriptor:, pan:, billing_currency: nil, settlement_currency: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TransactionSimulateReturnParams} for more details.
      #
      #   @param amount [Integer] Amount (in cents) to authorize.
      #
      #   @param descriptor [String] Merchant descriptor.
      #
      #   @param pan [String] Sixteen digit card number.
      #
      #   @param billing_currency [String] 3-character alphabetic ISO 4217 currency code for the cardholder billing amount.
      #
      #   @param settlement_currency [String] 3-character alphabetic ISO 4217 currency code for the settlement amount. Permitt
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
