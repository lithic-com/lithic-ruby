# frozen_string_literal: true

module Lithic
  module Models
    class FinancialAccountCreateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute nickname
      #
      #   @return [String]
      required :nickname, String

      # @!attribute type
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountCreateParams::Type]
      required :type, enum: -> { Lithic::Models::FinancialAccountCreateParams::Type }

      # @!attribute [r] account_token
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] is_for_benefit_of
      #
      #   @return [Boolean, nil]
      optional :is_for_benefit_of, Lithic::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :is_for_benefit_of

      # @!attribute [r] idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String, api_name: :"Idempotency-Key"

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!parse
      #   # @param nickname [String]
      #   # @param type [Symbol, Lithic::Models::FinancialAccountCreateParams::Type]
      #   # @param account_token [String]
      #   # @param is_for_benefit_of [Boolean]
      #   # @param idempotency_key [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     nickname:,
      #     type:,
      #     account_token: nil,
      #     is_for_benefit_of: nil,
      #     idempotency_key: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      module Type
        extend Lithic::Enum

        OPERATING = :OPERATING

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
