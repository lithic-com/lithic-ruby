# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Holds#retrieve
    class HoldRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute hold_token
      #
      #   @return [String]
      required :hold_token, String

      # @!method initialize(hold_token:, request_options: {})
      #   @param hold_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
