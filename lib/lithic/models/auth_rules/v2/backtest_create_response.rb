# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestCreateResponse < Lithic::BaseModel
          # @!attribute [r] backtest_token
          #   Auth Rule Backtest Token
          #
          #   @return [String, nil]
          optional :backtest_token, String

          # @!parse
          #   # @return [String]
          #   attr_writer :backtest_token

          # @!parse
          #   # @param backtest_token [String]
          #   #
          #   def initialize(backtest_token: nil, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void
        end
      end
    end
  end
end
