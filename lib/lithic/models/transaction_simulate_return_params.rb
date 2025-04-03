# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_return
    class TransactionSimulateReturnParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
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

      # @!parse
      #   # @param amount [Integer]
      #   # @param descriptor [String]
      #   # @param pan [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(amount:, descriptor:, pan:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
