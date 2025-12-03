# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FundingEvents#retrieve
    class FundingEvent < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Unique token ID
      #
      #   @return [String]
      required :token, String

      # @!attribute collection_resource_type
      #   Collection resource type
      #
      #   @return [Symbol, Lithic::Models::FundingEvent::CollectionResourceType]
      required :collection_resource_type, enum: -> { Lithic::FundingEvent::CollectionResourceType }

      # @!attribute collection_tokens
      #   IDs of collections, further information can be gathered from the appropriate
      #   collection API based on collection_resource_type
      #
      #   @return [Array<String>]
      required :collection_tokens, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute created
      #   Time of the creation
      #
      #   @return [Time]
      required :created, Time

      # @!attribute high_watermark
      #   Time of the high watermark
      #
      #   @return [Time]
      required :high_watermark, Time

      # @!attribute network_settlement_summary
      #   Network settlement summary breakdown by network settlement date
      #
      #   @return [Array<Lithic::Models::FundingEvent::NetworkSettlementSummary>]
      required :network_settlement_summary,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::FundingEvent::NetworkSettlementSummary] }

      # @!attribute previous_high_watermark
      #   Time of the previous high watermark
      #
      #   @return [Time]
      required :previous_high_watermark, Time

      # @!attribute updated
      #   Time of the update
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, collection_resource_type:, collection_tokens:, created:, high_watermark:, network_settlement_summary:, previous_high_watermark:, updated:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::FundingEvent} for more details.
      #
      #   @param token [String] Unique token ID
      #
      #   @param collection_resource_type [Symbol, Lithic::Models::FundingEvent::CollectionResourceType] Collection resource type
      #
      #   @param collection_tokens [Array<String>] IDs of collections, further information can be gathered from the appropriate col
      #
      #   @param created [Time] Time of the creation
      #
      #   @param high_watermark [Time] Time of the high watermark
      #
      #   @param network_settlement_summary [Array<Lithic::Models::FundingEvent::NetworkSettlementSummary>] Network settlement summary breakdown by network settlement date
      #
      #   @param previous_high_watermark [Time] Time of the previous high watermark
      #
      #   @param updated [Time] Time of the update

      # Collection resource type
      #
      # @see Lithic::Models::FundingEvent#collection_resource_type
      module CollectionResourceType
        extend Lithic::Internal::Type::Enum

        BOOK_TRANSFER = :BOOK_TRANSFER
        PAYMENT = :PAYMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class NetworkSettlementSummary < Lithic::Internal::Type::BaseModel
        # @!attribute network_settlement_date
        #
        #   @return [Date]
        required :network_settlement_date, Date

        # @!attribute settled_gross_amount
        #
        #   @return [Integer]
        required :settled_gross_amount, Integer

        # @!method initialize(network_settlement_date:, settled_gross_amount:)
        #   @param network_settlement_date [Date]
        #   @param settled_gross_amount [Integer]
      end
    end
  end
end
