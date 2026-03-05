# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module V2
        # @see Lithic::Resources::AuthRules::V2::Backtests#create
        class BacktestCreateParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute auth_rule_token
          #
          #   @return [String]
          required :auth_rule_token, String

          # @!attribute end_
          #   The end time of the backtest.
          #
          #   @return [Time, nil]
          optional :end_, Time, api_name: :end

          # @!attribute start
          #   The start time of the backtest.
          #
          #   @return [Time, nil]
          optional :start, Time

          # @!method initialize(auth_rule_token:, end_: nil, start: nil, request_options: {})
          #   @param auth_rule_token [String]
          #
          #   @param end_ [Time] The end time of the backtest.
          #
          #   @param start [Time] The start time of the backtest.
          #
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
