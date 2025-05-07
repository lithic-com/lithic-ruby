# frozen_string_literal: true

module Lithic
  module Models
    module Transactions
      # @see Lithic::Resources::Transactions::EnhancedCommercialData#retrieve
      class EnhancedCommercialDataRetrieveResponse < Lithic::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Lithic::Transactions::Events::EnhancedData>]
        required :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::Transactions::Events::EnhancedData] }

        # @!method initialize(data:)
        #   @param data [Array<Lithic::Transactions::Events::EnhancedData>]
      end
    end
  end
end
