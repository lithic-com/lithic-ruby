# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#retry_micro_deposits
    class ExternalBankAccountRetryMicroDepositsParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] financial_account_token
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :financial_account_token

      # @!parse
      #   # @param financial_account_token [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(financial_account_token: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
