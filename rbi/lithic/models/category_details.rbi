# typed: strong

module Lithic
  module Models
    class CategoryDetails < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CategoryDetails, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :balance_transfers

      sig { returns(String) }
      attr_accessor :cash_advances

      sig { returns(String) }
      attr_accessor :purchases

      sig do
        params(
          balance_transfers: String,
          cash_advances: String,
          purchases: String
        ).returns(T.attached_class)
      end
      def self.new(balance_transfers:, cash_advances:, purchases:)
      end

      sig do
        override.returns(
          {
            balance_transfers: String,
            cash_advances: String,
            purchases: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
