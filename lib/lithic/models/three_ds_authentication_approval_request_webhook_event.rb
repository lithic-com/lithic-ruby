# frozen_string_literal: true

module Lithic
  module Models
    class ThreeDSAuthenticationApprovalRequestWebhookEvent < Lithic::Models::ThreeDSAuthentication
      # @!attribute event_type
      #
      #   @return [Symbol, :"three_ds_authentication.approval_request"]
      required :event_type, const: :"three_ds_authentication.approval_request"

      # @!method initialize(event_type: :"three_ds_authentication.approval_request")
      #   Represents a 3DS authentication
      #
      #   @param event_type [Symbol, :"three_ds_authentication.approval_request"]
    end
  end
end
