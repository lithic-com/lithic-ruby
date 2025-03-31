# frozen_string_literal: true

module Lithic
  module Models
    module Cards
      class FinancialTransactionRetrieveParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute card_token
        #
        #   @return [String]
        required :card_token, String

        # @!parse
        #   # @param card_token [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(card_token:, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
