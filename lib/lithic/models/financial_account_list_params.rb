# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#list
    class FinancialAccountListParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] account_token
      #   List financial accounts for a given account_token or business_account_token
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] business_account_token
      #   List financial accounts for a given business_account_token
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :business_account_token

      # @!attribute [r] type
      #   List financial accounts of a given type
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountListParams::Type, nil]
      optional :type, enum: -> { Lithic::Models::FinancialAccountListParams::Type }

      # @!parse
      #   # @return [Symbol, Lithic::Models::FinancialAccountListParams::Type]
      #   attr_writer :type

      # @!parse
      #   # @param account_token [String]
      #   # @param business_account_token [String]
      #   # @param type [Symbol, Lithic::Models::FinancialAccountListParams::Type]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_token: nil, business_account_token: nil, type: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # List financial accounts of a given type
      module Type
        extend Lithic::Enum

        ISSUING = :ISSUING
        OPERATING = :OPERATING
        RESERVE = :RESERVE

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
