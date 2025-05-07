# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestCreateResponse < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

          # Auth Rule Backtest Token
          sig { returns(T.nilable(String)) }
          attr_reader :backtest_token

          sig { params(backtest_token: String).void }
          attr_writer :backtest_token

          sig { params(backtest_token: String).returns(T.attached_class) }
          def self.new(
            # Auth Rule Backtest Token
            backtest_token: nil
          )
          end

          sig { override.returns({ backtest_token: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
