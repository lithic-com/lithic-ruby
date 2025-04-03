# frozen_string_literal: true

module Lithic
  module Models
    module ExternalBankAccounts
      # @see Lithic::Resources::ExternalBankAccounts::MicroDeposits#create
      class MicroDepositCreateParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute micro_deposits
        #
        #   @return [Array<Integer>]
        required :micro_deposits, Lithic::Internal::Type::ArrayOf[Integer]

        # @!parse
        #   # @param micro_deposits [Array<Integer>]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(micro_deposits:, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
