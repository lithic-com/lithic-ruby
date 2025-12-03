# typed: strong

module Lithic
  module Models
    class CardBulkOrderUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::CardBulkOrderUpdateParams, Lithic::Internal::AnyHash)
        end

      # Status to update the bulk order to. Use LOCKED to finalize the order
      sig { returns(Lithic::CardBulkOrderUpdateParams::Status::OrSymbol) }
      attr_accessor :status

      sig do
        params(
          status: Lithic::CardBulkOrderUpdateParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status to update the bulk order to. Use LOCKED to finalize the order
        status:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Lithic::CardBulkOrderUpdateParams::Status::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status to update the bulk order to. Use LOCKED to finalize the order
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardBulkOrderUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCKED =
          T.let(
            :LOCKED,
            Lithic::CardBulkOrderUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::CardBulkOrderUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
