# typed: strong

module Lithic
  module Models
    module Transactions
      class EnhancedCommercialDataRetrieveResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::Transactions::EnhancedCommercialDataRetrieveResponse,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Lithic::Transactions::Events::EnhancedData]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Lithic::Transactions::Events::EnhancedData::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Lithic::Transactions::Events::EnhancedData] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
