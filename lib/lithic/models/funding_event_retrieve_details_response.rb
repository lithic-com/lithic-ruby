# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FundingEvents#retrieve_details
    class FundingEventRetrieveDetailsResponse < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Unique token ID
      #
      #   @return [String]
      required :token, String

      # @!attribute settlement_details_url
      #   URL of the settlement details
      #
      #   @return [String]
      required :settlement_details_url, String

      # @!attribute settlement_summary_url
      #   URL of the settlement summary
      #
      #   @return [String]
      required :settlement_summary_url, String

      # @!method initialize(token:, settlement_details_url:, settlement_summary_url:)
      #   @param token [String] Unique token ID
      #
      #   @param settlement_details_url [String] URL of the settlement details
      #
      #   @param settlement_summary_url [String] URL of the settlement summary
    end
  end
end
