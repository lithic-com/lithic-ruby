# frozen_string_literal: true

module Lithic
  module Models
    module ExternalBankAccounts
      class MicroDepositCreateParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute micro_deposits
        #
        #   @return [Array<Integer>]
        required :micro_deposits, Lithic::ArrayOf[Integer]

        # @!parse
        #   # @param micro_deposits [Array<Integer>]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(micro_deposits:, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
