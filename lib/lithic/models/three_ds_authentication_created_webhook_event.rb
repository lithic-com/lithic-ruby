# frozen_string_literal: true

module Lithic
  module Models
    class ThreeDSAuthenticationCreatedWebhookEvent < Lithic::Models::ThreeDSAuthentication
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"three_ds_authentication.created"]
      required :event_type, const: :"three_ds_authentication.created"

      # @!method initialize(event_type: :"three_ds_authentication.created")
      #   Represents a 3DS authentication
      #
      #   @param event_type [Symbol, :"three_ds_authentication.created"] The type of event that occurred.
    end
  end
end
