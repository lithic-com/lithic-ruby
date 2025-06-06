# frozen_string_literal: true

module Lithic
  module Models
    module Transactions
      module Events
        # @see Lithic::Resources::Transactions::Events::EnhancedCommercialData#retrieve
        class EnhancedCommercialDataRetrieveParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
