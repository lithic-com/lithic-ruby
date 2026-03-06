# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Holds#void
    class HoldVoidParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute hold_token
      #
      #   @return [String]
      required :hold_token, String

      # @!attribute memo
      #   Reason for voiding the hold
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!method initialize(hold_token:, memo: nil, request_options: {})
      #   @param hold_token [String]
      #
      #   @param memo [String, nil] Reason for voiding the hold
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
