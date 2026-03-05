# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#retrieve
    class ExternalBankAccountRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute external_bank_account_token
      #
      #   @return [String]
      required :external_bank_account_token, String

      # @!method initialize(external_bank_account_token:, request_options: {})
      #   @param external_bank_account_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
