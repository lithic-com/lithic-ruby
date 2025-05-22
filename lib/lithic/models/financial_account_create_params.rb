# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#create
    class FinancialAccountCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute nickname
      #
      #   @return [String]
      required :nickname, String

      # @!attribute type
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountCreateParams::Type]
      required :type, enum: -> { Lithic::FinancialAccountCreateParams::Type }

      # @!attribute account_token
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute is_for_benefit_of
      #
      #   @return [Boolean, nil]
      optional :is_for_benefit_of, Lithic::Internal::Type::Boolean

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(nickname:, type:, account_token: nil, is_for_benefit_of: nil, idempotency_key: nil, request_options: {})
      #   @param nickname [String]
      #   @param type [Symbol, Lithic::Models::FinancialAccountCreateParams::Type]
      #   @param account_token [String]
      #   @param is_for_benefit_of [Boolean]
      #   @param idempotency_key [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module Type
        extend Lithic::Internal::Type::Enum

        OPERATING = :OPERATING

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
