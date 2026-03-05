# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::CardBulkOrders#retrieve
    class CardBulkOrderRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute bulk_order_token
      #
      #   @return [String]
      required :bulk_order_token, String

      # @!method initialize(bulk_order_token:, request_options: {})
      #   @param bulk_order_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
