# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestCreateParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # The end time of the backtest.
          sig { returns(T.nilable(Time)) }
          attr_reader :end_

          sig { params(end_: Time).void }
          attr_writer :end_

          # The start time of the backtest.
          sig { returns(T.nilable(Time)) }
          attr_reader :start

          sig { params(start: Time).void }
          attr_writer :start

          sig do
            params(
              end_: Time,
              start: Time,
              request_options: T.any(
                Lithic::RequestOptions,
                Lithic::Internal::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The end time of the backtest.
            end_: nil,
            # The start time of the backtest.
            start: nil,
            request_options: {}
          ); end
          sig { override.returns({end_: Time, start: Time, request_options: Lithic::RequestOptions}) }
          def to_hash; end
        end
      end
    end
  end
end
