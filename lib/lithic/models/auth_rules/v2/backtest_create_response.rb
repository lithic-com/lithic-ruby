# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module V2
        # @see Lithic::Resources::AuthRules::V2::Backtests#create
        class BacktestCreateResponse < Lithic::Internal::Type::BaseModel
          # @!attribute backtest_token
          #   Auth Rule Backtest Token
          #
          #   @return [String, nil]
          optional :backtest_token, String

          # @!method initialize(backtest_token: nil)
          #   @param backtest_token [String] Auth Rule Backtest Token
        end
      end
    end
  end
end
