# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module V2
        # @see Lithic::Resources::AuthRules::V2::Backtests#create
        class BacktestCreateResponse < Lithic::Internal::Type::BaseModel
          # @!attribute [r] backtest_token
          #   Auth Rule Backtest Token
          #
          #   @return [String, nil]
          optional :backtest_token, String

          # @!parse
          #   # @return [String]
          #   attr_writer :backtest_token

          # @!method initialize(backtest_token: nil)
          #   @param backtest_token [String]
        end
      end
    end
  end
end
