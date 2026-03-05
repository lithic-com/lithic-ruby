# frozen_string_literal: true

module Lithic
  module Models
    module Reports
      module Settlement
        # @see Lithic::Resources::Reports::Settlement::NetworkTotals#retrieve
        class NetworkTotalRetrieveParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute token
          #
          #   @return [String]
          required :token, String

          # @!method initialize(token:, request_options: {})
          #   @param token [String]
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
