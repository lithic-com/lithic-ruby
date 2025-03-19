# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestCreateResponse < Lithic::BaseModel
          # Auth Rule Backtest Token
          sig { returns(T.nilable(String)) }
          def backtest_token
          end

          sig { params(_: String).returns(String) }
          def backtest_token=(_)
          end

          sig { params(backtest_token: String).returns(T.attached_class) }
          def self.new(backtest_token: nil)
          end

          sig { override.returns({backtest_token: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
