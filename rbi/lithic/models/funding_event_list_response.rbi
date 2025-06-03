# typed: strong

module Lithic
  module Models
    class FundingEventListResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::FundingEventListResponse,
            Lithic::Internal::AnyHash
          )
        end

      # Unique token ID
      sig { returns(String) }
      attr_accessor :token

      # Collection resource type
      sig do
        returns(
          Lithic::Models::FundingEventListResponse::CollectionResourceType::TaggedSymbol
        )
      end
      attr_accessor :collection_resource_type

      # IDs of collections, further information can be gathered from the appropriate
      # collection API based on collection_resource_type
      sig { returns(T::Array[String]) }
      attr_accessor :collection_tokens

      # Time of the creation
      sig { returns(Time) }
      attr_accessor :created

      # Time of the high watermark
      sig { returns(Time) }
      attr_accessor :high_watermark

      # Network settlement summary breakdown by network settlement date
      sig do
        returns(
          T::Array[
            Lithic::Models::FundingEventListResponse::NetworkSettlementSummary
          ]
        )
      end
      attr_accessor :network_settlement_summary

      # Time of the previous high watermark
      sig { returns(Time) }
      attr_accessor :previous_high_watermark

      # Time of the update
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(
          token: String,
          collection_resource_type:
            Lithic::Models::FundingEventListResponse::CollectionResourceType::OrSymbol,
          collection_tokens: T::Array[String],
          created: Time,
          high_watermark: Time,
          network_settlement_summary:
            T::Array[
              Lithic::Models::FundingEventListResponse::NetworkSettlementSummary::OrHash
            ],
          previous_high_watermark: Time,
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique token ID
        token:,
        # Collection resource type
        collection_resource_type:,
        # IDs of collections, further information can be gathered from the appropriate
        # collection API based on collection_resource_type
        collection_tokens:,
        # Time of the creation
        created:,
        # Time of the high watermark
        high_watermark:,
        # Network settlement summary breakdown by network settlement date
        network_settlement_summary:,
        # Time of the previous high watermark
        previous_high_watermark:,
        # Time of the update
        updated:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            collection_resource_type:
              Lithic::Models::FundingEventListResponse::CollectionResourceType::TaggedSymbol,
            collection_tokens: T::Array[String],
            created: Time,
            high_watermark: Time,
            network_settlement_summary:
              T::Array[
                Lithic::Models::FundingEventListResponse::NetworkSettlementSummary
              ],
            previous_high_watermark: Time,
            updated: Time
          }
        )
      end
      def to_hash
      end

      # Collection resource type
      module CollectionResourceType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::Models::FundingEventListResponse::CollectionResourceType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOOK_TRANSFER =
          T.let(
            :BOOK_TRANSFER,
            Lithic::Models::FundingEventListResponse::CollectionResourceType::TaggedSymbol
          )
        PAYMENT =
          T.let(
            :PAYMENT,
            Lithic::Models::FundingEventListResponse::CollectionResourceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::Models::FundingEventListResponse::CollectionResourceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class NetworkSettlementSummary < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::FundingEventListResponse::NetworkSettlementSummary,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(Date) }
        attr_accessor :network_settlement_date

        sig { returns(Integer) }
        attr_accessor :settled_gross_amount

        sig do
          params(
            network_settlement_date: Date,
            settled_gross_amount: Integer
          ).returns(T.attached_class)
        end
        def self.new(network_settlement_date:, settled_gross_amount:)
        end

        sig do
          override.returns(
            { network_settlement_date: Date, settled_gross_amount: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
