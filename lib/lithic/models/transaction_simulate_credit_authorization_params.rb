# frozen_string_literal: true

module Lithic
  module Models
    class TransactionSimulateCreditAuthorizationParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute amount
      #   Amount (in cents). Any value entered will be converted into a negative amount in
      #     the simulated transaction. For example, entering 100 in this field will appear
      #     as a -100 amount in the transaction.
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

      # @!attribute [r] mcc
      #   Merchant category code for the transaction to be simulated. A four-digit number
      #     listed in ISO 18245. Supported merchant category codes can be found
      #     [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!parse
      #   # @return [String]
      #   attr_writer :mcc

      # @!attribute [r] merchant_acceptor_id
      #   Unique identifier to identify the payment card acceptor.
      #
      #   @return [String, nil]
      optional :merchant_acceptor_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :merchant_acceptor_id

      # @!parse
      #   # @param amount [Integer]
      #   # @param descriptor [String]
      #   # @param pan [String]
      #   # @param mcc [String]
      #   # @param merchant_acceptor_id [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(amount:, descriptor:, pan:, mcc: nil, merchant_acceptor_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
