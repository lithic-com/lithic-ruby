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

        # @!method initialize(data:)
        #   @param data [Array<Lithic::Models::Transactions::Events::EnhancedData>]
      end
    end
  end
end
