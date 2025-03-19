# frozen_string_literal: true

module Lithic
  module Models
    module Transactions
      class EnhancedCommercialDataRetrieveResponse < Lithic::BaseModel
        # @!attribute data
        #
        #   @return [Array<Lithic::Models::Transactions::Events::EnhancedData>]
        required :data, -> { Lithic::ArrayOf[Lithic::Models::Transactions::Events::EnhancedData] }

        # @!parse
        #   # @param data [Array<Lithic::Models::Transactions::Events::EnhancedData>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
