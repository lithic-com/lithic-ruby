# frozen_string_literal: true

module Lithic
  module Models
    module Cards
      # @see Lithic::Resources::Cards::AggregateBalances#list
      class AggregateBalanceListParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute [r] account_token
        #   Cardholder to retrieve aggregate balances for.
        #
        #   @return [String, nil]
        optional :account_token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :account_token

        # @!attribute [r] business_account_token
        #   Business to retrieve aggregate balances for.
        #
        #   @return [String, nil]
        optional :business_account_token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :business_account_token

        # @!method initialize(account_token: nil, business_account_token: nil, request_options: {})
        #   @param account_token [String]
        #   @param business_account_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
