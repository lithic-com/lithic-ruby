# frozen_string_literal: true

module Lithic
  module Models
    class AccountHolderCreatedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"account_holder.created"]
      required :event_type, const: :"account_holder.created"

      # @!attribute token
      #   The token of the account_holder that was created.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute account_token
      #   The token of the account that was created.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute created
      #   When the account_holder was created
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute required_documents
      #
      #   @return [Array<Lithic::Models::RequiredDocument>, nil]
      optional :required_documents, -> { Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument] }

      # @!attribute status
      #   The status of the account_holder that was created.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderCreatedWebhookEvent::Status, nil]
      optional :status, enum: -> { Lithic::AccountHolderCreatedWebhookEvent::Status }

      # @!attribute status_reason
      #
      #   @return [Array<String>, nil]
      optional :status_reason, Lithic::Internal::Type::ArrayOf[String]

      # @!method initialize(token: nil, account_token: nil, created: nil, required_documents: nil, status: nil, status_reason: nil, event_type: :"account_holder.created")
      #   @param token [String] The token of the account_holder that was created.
      #
      #   @param account_token [String] The token of the account that was created.
      #
      #   @param created [Time] When the account_holder was created
      #
      #   @param required_documents [Array<Lithic::Models::RequiredDocument>]
      #
      #   @param status [Symbol, Lithic::Models::AccountHolderCreatedWebhookEvent::Status] The status of the account_holder that was created.
      #
      #   @param status_reason [Array<String>]
      #
      #   @param event_type [Symbol, :"account_holder.created"] The type of event that occurred.

      # The status of the account_holder that was created.
      #
      # @see Lithic::Models::AccountHolderCreatedWebhookEvent#status
      module Status
        extend Lithic::Internal::Type::Enum

        ACCEPTED = :ACCEPTED
        PENDING_REVIEW = :PENDING_REVIEW

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
