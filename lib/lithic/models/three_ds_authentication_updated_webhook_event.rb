# frozen_string_literal: true

module Lithic
  module Models
    class ThreeDSAuthenticationUpdatedWebhookEvent < Lithic::Models::ThreeDSAuthentication
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"three_ds_authentication.updated"]
      required :event_type, const: :"three_ds_authentication.updated"

      # @!method initialize(event_type: :"three_ds_authentication.updated")
      #   Represents a 3DS authentication
      #
      #   @param event_type [Symbol, :"three_ds_authentication.updated"] The type of event that occurred.
    end
  end
end
