# frozen_string_literal: true

module Lithic
  module Models
    module ExternalBankAccounts
      # @see Lithic::Resources::ExternalBankAccounts::MicroDeposits#create
      class MicroDepositCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute micro_deposits
        #
        #   @return [Array<Integer>]
        required :micro_deposits, Lithic::Internal::Type::ArrayOf[Integer]

        # @!method initialize(micro_deposits:, request_options: {})
        #   @param micro_deposits [Array<Integer>]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
