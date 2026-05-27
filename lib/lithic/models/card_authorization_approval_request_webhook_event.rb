# frozen_string_literal: true

module Lithic
  module Models
    class CardAuthorizationApprovalRequestWebhookEvent < Lithic::Models::CardAuthorization
      # @!attribute event_type
      #
      #   @return [Symbol, :"card_authorization.approval_request"]
      required :event_type, const: :"card_authorization.approval_request"

      # @!method initialize(event_type: :"card_authorization.approval_request")
      #   The Auth Stream Access request payload that was sent to the ASA responder.
      #
      #   @param event_type [Symbol, :"card_authorization.approval_request"]
    end
  end
end
