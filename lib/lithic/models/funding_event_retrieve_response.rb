# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FundingEvents#retrieve
    class FundingEventRetrieveResponse < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Unique token ID
      #
      #   @return [String]
      required :token, String

      # @!attribute collection_resource_type
      #   Collection resource type
      #
      #   @return [Symbol, Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType]
      required :collection_resource_type,
               enum: -> { Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType }

      # @!attribute collection_tokens
      #   IDs of collections
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

      # @!attribute previous_high_watermark
      #   Time of the previous high watermark
      #
      #   @return [Time]
      required :previous_high_watermark, Time

      # @!attribute settlement_breakdowns
      #   List of settlements
      #
      #   @return [Array<Lithic::Models::FundingEventRetrieveResponse::SettlementBreakdown>]
      required :settlement_breakdowns,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::FundingEventRetrieveResponse::SettlementBreakdown] }

      # @!attribute updated
      #   Time of the update
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, collection_resource_type:, collection_tokens:, created:, high_watermark:, previous_high_watermark:, settlement_breakdowns:, updated:)
      #   @param token [String] Unique token ID
      #
      #   @param collection_resource_type [Symbol, Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType] Collection resource type
      #
      #   @param collection_tokens [Array<String>] IDs of collections
      #
      #   @param created [Time] Time of the creation
      #
      #   @param high_watermark [Time] Time of the high watermark
      #
      #   @param previous_high_watermark [Time] Time of the previous high watermark
      #
      #   @param settlement_breakdowns [Array<Lithic::Models::FundingEventRetrieveResponse::SettlementBreakdown>] List of settlements
      #
      #   @param updated [Time] Time of the update

      # Collection resource type
      #
      # @see Lithic::Models::FundingEventRetrieveResponse#collection_resource_type
      module CollectionResourceType
        extend Lithic::Internal::Type::Enum

        BOOK_TRANSFER = :BOOK_TRANSFER
        PAYMENT = :PAYMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class SettlementBreakdown < Lithic::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute settlement_date
        #
        #   @return [Date]
        required :settlement_date, Date

        # @!method initialize(amount:, settlement_date:)
        #   @param amount [Integer]
        #   @param settlement_date [Date]
      end
    end
  end
end
