# frozen_string_literal: true

module Lithic
  module Models
    class AccountHolderVerificationWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"account_holder.verification"]
      required :event_type, const: :"account_holder.verification"

      # @!attribute token
      #   The token of the account_holder being verified.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute account_token
      #   The token of the account being verified.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute created
      #   When the account_holder verification status was updated
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute status
      #   The status of the account_holder that was created
      #
      #   @return [Symbol, Lithic::Models::AccountHolderVerificationWebhookEvent::Status, nil]
      optional :status, enum: -> { Lithic::AccountHolderVerificationWebhookEvent::Status }

      # @!attribute status_reasons
      #
      #   @return [Array<String>, nil]
      optional :status_reasons, Lithic::Internal::Type::ArrayOf[String]

      # @!method initialize(token: nil, account_token: nil, created: nil, status: nil, status_reasons: nil, event_type: :"account_holder.verification")
      #   @param token [String] The token of the account_holder being verified.
      #
      #   @param account_token [String] The token of the account being verified.
      #
      #   @param created [Time] When the account_holder verification status was updated
      #
      #   @param status [Symbol, Lithic::Models::AccountHolderVerificationWebhookEvent::Status] The status of the account_holder that was created
      #
      #   @param status_reasons [Array<String>]
      #
      #   @param event_type [Symbol, :"account_holder.verification"] The type of event that occurred.

      # The status of the account_holder that was created
      #
      # @see Lithic::Models::AccountHolderVerificationWebhookEvent#status
      module Status
        extend Lithic::Internal::Type::Enum

        ACCEPTED = :ACCEPTED
        PENDING_REVIEW = :PENDING_REVIEW
        REJECTED = :REJECTED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
