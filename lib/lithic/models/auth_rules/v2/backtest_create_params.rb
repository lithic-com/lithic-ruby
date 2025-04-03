# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module V2
        # @see Lithic::Resources::AuthRules::V2::Backtests#create
        class BacktestCreateParams < Lithic::BaseModel
          # @!parse
          #   extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute [r] end_
          #   The end time of the backtest.
          #
          #   @return [Time, nil]
          optional :end_, Time, api_name: :end

          # @!parse
          #   # @return [Time]
          #   attr_writer :end_

          # @!attribute [r] start
          #   The start time of the backtest.
          #
          #   @return [Time, nil]
          optional :start, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :start

          # @!parse
          #   # @param end_ [Time]
          #   # @param start [Time]
          #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(end_: nil, start: nil, request_options: {}, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void
        end
      end
    end
  end
end
