# typed: strong

module Lithic
  module Models
    class FundingEventRetrieveResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::FundingEventRetrieveResponse,
            Lithic::Internal::AnyHash
          )
        end

      # Unique token ID
      sig { returns(String) }
      attr_accessor :token

      # Collection resource type
      sig do
        returns(
          Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType::TaggedSymbol
        )
      end
      attr_accessor :collection_resource_type

      # IDs of collections
      sig { returns(T::Array[String]) }
      attr_accessor :collection_tokens

      # Time of the creation
      sig { returns(Time) }
      attr_accessor :created

      # Time of the high watermark
      sig { returns(Time) }
      attr_accessor :high_watermark

      # Time of the previous high watermark
      sig { returns(Time) }
      attr_accessor :previous_high_watermark

      # List of settlements
      sig do
        returns(
          T::Array[
            Lithic::Models::FundingEventRetrieveResponse::SettlementBreakdown
          ]
        )
      end
      attr_accessor :settlement_breakdowns

      # Time of the update
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(
          token: String,
          collection_resource_type:
            Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType::OrSymbol,
          collection_tokens: T::Array[String],
          created: Time,
          high_watermark: Time,
          previous_high_watermark: Time,
          settlement_breakdowns:
            T::Array[
              Lithic::Models::FundingEventRetrieveResponse::SettlementBreakdown::OrHash
            ],
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique token ID
        token:,
        # Collection resource type
        collection_resource_type:,
        # IDs of collections
        collection_tokens:,
        # Time of the creation
        created:,
        # Time of the high watermark
        high_watermark:,
        # Time of the previous high watermark
        previous_high_watermark:,
        # List of settlements
        settlement_breakdowns:,
        # Time of the update
        updated:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            collection_resource_type:
              Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType::TaggedSymbol,
            collection_tokens: T::Array[String],
            created: Time,
            high_watermark: Time,
            previous_high_watermark: Time,
            settlement_breakdowns:
              T::Array[
                Lithic::Models::FundingEventRetrieveResponse::SettlementBreakdown
              ],
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
              Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOOK_TRANSFER =
          T.let(
            :BOOK_TRANSFER,
            Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType::TaggedSymbol
          )
        PAYMENT =
          T.let(
            :PAYMENT,
            Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class SettlementBreakdown < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::FundingEventRetrieveResponse::SettlementBreakdown,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Date) }
        attr_accessor :settlement_date

        sig do
          params(amount: Integer, settlement_date: Date).returns(
            T.attached_class
          )
        end
        def self.new(amount:, settlement_date:)
        end

        sig { override.returns({ amount: Integer, settlement_date: Date }) }
        def to_hash
        end
      end
    end
  end
end
