# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestCreateParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::V2::BacktestCreateParams,
                Lithic::Internal::AnyHash
              )
            end

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
              request_options: Lithic::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The end time of the backtest.
            end_: nil,
            # The start time of the backtest.
            start: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                end_: Time,
                start: Time,
                request_options: Lithic::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
