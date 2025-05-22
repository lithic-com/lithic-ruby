# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#list
    class FinancialAccountListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #   List financial accounts for a given account_token or business_account_token
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute business_account_token
      #   List financial accounts for a given business_account_token
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!attribute type
      #   List financial accounts of a given type
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountListParams::Type, nil]
      optional :type, enum: -> { Lithic::FinancialAccountListParams::Type }

      # @!method initialize(account_token: nil, business_account_token: nil, type: nil, request_options: {})
      #   @param account_token [String] List financial accounts for a given account_token or business_account_token
      #
      #   @param business_account_token [String] List financial accounts for a given business_account_token
      #
      #   @param type [Symbol, Lithic::Models::FinancialAccountListParams::Type] List financial accounts of a given type
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # List financial accounts of a given type
      module Type
        extend Lithic::Internal::Type::Enum

        ISSUING = :ISSUING
        OPERATING = :OPERATING
        RESERVE = :RESERVE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
