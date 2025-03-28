# frozen_string_literal: true

module Lithic
  module Models
    module Cards
      class AggregateBalanceListParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

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

        # @!parse
        #   # @param account_token [String]
        #   # @param business_account_token [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(account_token: nil, business_account_token: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
