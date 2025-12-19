# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::TransferLimits#list
    class TransferLimitListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute date
      #   Date for which to retrieve transfer limits (ISO 8601 format)
      #
      #   @return [Date, nil]
      optional :date, Date

      # @!method initialize(date: nil, request_options: {})
      #   @param date [Date] Date for which to retrieve transfer limits (ISO 8601 format)
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
