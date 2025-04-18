# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_credit_authorization
    class TransactionSimulateCreditAuthorizationParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount (in cents). Any value entered will be converted into a negative amount in
      #   the simulated transaction. For example, entering 100 in this field will appear
      #   as a -100 amount in the transaction.
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

      # @!attribute mcc
      #   Merchant category code for the transaction to be simulated. A four-digit number
      #   listed in ISO 18245. Supported merchant category codes can be found
      #   [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!attribute merchant_acceptor_id
      #   Unique identifier to identify the payment card acceptor.
      #
      #   @return [String, nil]
      optional :merchant_acceptor_id, String

      # @!method initialize(amount:, descriptor:, pan:, mcc: nil, merchant_acceptor_id: nil, request_options: {})
      #   @param amount [Integer]
      #   @param descriptor [String]
      #   @param pan [String]
      #   @param mcc [String]
      #   @param merchant_acceptor_id [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
