# frozen_string_literal: true

module Lithic
  module Models
    class FinancialAccountChargeOffParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute reason
      #   Reason for the financial account being marked as Charged Off
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountChargeOffParams::Reason]
      required :reason, enum: -> { Lithic::Models::FinancialAccountChargeOffParams::Reason }

      # @!parse
      #   # @param reason [Symbol, Lithic::Models::FinancialAccountChargeOffParams::Reason]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(reason:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Reason for the financial account being marked as Charged Off
      module Reason
        extend Lithic::Enum

        DELINQUENT = :DELINQUENT
        FRAUD = :FRAUD

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
