# frozen_string_literal: true

module Lithic
  module Models
    module Transactions
      # @see Lithic::Resources::Transactions::EnhancedCommercialData#retrieve
      class EnhancedCommercialDataRetrieveResponse < Lithic::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Lithic::Models::Transactions::Events::EnhancedData>]
        required :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Transactions::Events::EnhancedData] }

        # @!parse
        #   # @param data [Array<Lithic::Models::Transactions::Events::EnhancedData>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
