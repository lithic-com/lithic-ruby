# frozen_string_literal: true

module Lithic
  module Models
    module Transactions
      module Events
        # @see Lithic::Resources::Transactions::Events::EnhancedCommercialData#retrieve
        class EnhancedCommercialDataRetrieveParams < Lithic::Internal::Type::BaseModel
          # @!parse
          #   extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!parse
          #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(request_options: {}, **) = super

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
