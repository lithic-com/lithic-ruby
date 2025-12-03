# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::CardBulkOrders#update
    class CardBulkOrderUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute status
      #   Status to update the bulk order to. Use LOCKED to finalize the order
      #
      #   @return [Symbol, Lithic::Models::CardBulkOrderUpdateParams::Status]
      required :status, enum: -> { Lithic::CardBulkOrderUpdateParams::Status }

      # @!method initialize(status:, request_options: {})
      #   @param status [Symbol, Lithic::Models::CardBulkOrderUpdateParams::Status] Status to update the bulk order to. Use LOCKED to finalize the order
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Status to update the bulk order to. Use LOCKED to finalize the order
      module Status
        extend Lithic::Internal::Type::Enum

        LOCKED = :LOCKED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
