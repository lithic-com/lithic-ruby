# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestCreateParams < Lithic::BaseModel
          extend Lithic::RequestParameters::Converter
          include Lithic::RequestParameters

          # The end time of the backtest.
          sig { returns(T.nilable(Time)) }
          def end_
          end

          sig { params(_: Time).returns(Time) }
          def end_=(_)
          end

          # The start time of the backtest.
          sig { returns(T.nilable(Time)) }
          def start
          end

          sig { params(_: Time).returns(Time) }
          def start=(_)
          end

          sig do
            params(
              end_: Time,
              start: Time,
              request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(end_: nil, start: nil, request_options: {})
          end

          sig { override.returns({end_: Time, start: Time, request_options: Lithic::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
