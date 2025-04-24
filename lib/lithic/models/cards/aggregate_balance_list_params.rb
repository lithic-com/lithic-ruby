# frozen_string_literal: true

module Lithic
  module Models
    module Cards
      # @see Lithic::Resources::Cards::AggregateBalances#list
      class AggregateBalanceListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute account_token
        #   Cardholder to retrieve aggregate balances for.
        #
        #   @return [String, nil]
        optional :account_token, String

        # @!attribute business_account_token
        #   Business to retrieve aggregate balances for.
        #
        #   @return [String, nil]
        optional :business_account_token, String

        # @!method initialize(account_token: nil, business_account_token: nil, request_options: {})
        #   @param account_token [String] Cardholder to retrieve aggregate balances for.
        #
        #   @param business_account_token [String] Business to retrieve aggregate balances for.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
