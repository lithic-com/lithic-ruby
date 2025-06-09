# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#register_account_number
    class FinancialAccountRegisterAccountNumberParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_number
      #
      #   @return [String]
      required :account_number, String

      # @!method initialize(account_number:, request_options: {})
      #   @param account_number [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
