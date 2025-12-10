# frozen_string_literal: true

module Lithic
  module Models
    class CardShippedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute bulk_order_token
      #   The token of the bulk order associated with this card shipment, if applicable.
      #
      #   @return [String, nil]
      required :bulk_order_token, String, nil?: true

      # @!attribute card_token
      #   The token of the card that was shipped.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card.shipped"]
      required :event_type, const: :"card.shipped"

      # @!attribute shipping_method
      #   The specific shipping method used to ship the card.
      #
      #   @return [Symbol, Lithic::Models::CardShippedWebhookEvent::ShippingMethod]
      required :shipping_method, enum: -> { Lithic::CardShippedWebhookEvent::ShippingMethod }

      # @!attribute tracking_number
      #   The tracking number of the shipment.
      #
      #   @return [String, nil]
      required :tracking_number, String, nil?: true

      # @!method initialize(bulk_order_token:, card_token:, shipping_method:, tracking_number:, event_type: :"card.shipped")
      #   @param bulk_order_token [String, nil] The token of the bulk order associated with this card shipment, if applicable.
      #
      #   @param card_token [String] The token of the card that was shipped.
      #
      #   @param shipping_method [Symbol, Lithic::Models::CardShippedWebhookEvent::ShippingMethod] The specific shipping method used to ship the card.
      #
      #   @param tracking_number [String, nil] The tracking number of the shipment.
      #
      #   @param event_type [Symbol, :"card.shipped"] The type of event that occurred.

      # The specific shipping method used to ship the card.
      #
      # @see Lithic::Models::CardShippedWebhookEvent#shipping_method
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        EX_US_EXPEDITED_WITH_TRACKING = :"Ex-US expedited with tracking"
        EX_US_STANDARD_WITH_TRACKING = :"Ex-US standard with tracking"
        EX_US_STANDARD_WITHOUT_TRACKING = :"Ex-US standard without tracking"
        FED_EX_2_DAYS = :"FedEx 2 days"
        FED_EX_EXPRESS = :"FedEx express"
        FED_EX_OVERNIGHT = :"FedEx overnight"
        USPS_PRIORITY = :"USPS priority"
        USPS_WITH_TRACKING = :"USPS with tracking"
        USPS_WITHOUT_TRACKING_ENVELOPE = :"USPS without tracking envelope"
        USPS_WITHOUT_TRACKING_ENVELOPE_NON_MACHINE = :"USPS without tracking envelope non-machine"
        USPS_WITHOUT_TRACKING_FLAT = :"USPS without tracking flat"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
