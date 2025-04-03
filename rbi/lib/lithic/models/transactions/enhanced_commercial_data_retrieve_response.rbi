# typed: strong

module Lithic
  module Models
    module Transactions
      class EnhancedCommercialDataRetrieveResponse < Lithic::Internal::Type::BaseModel
        sig { returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[T.any(Lithic::Models::Transactions::Events::EnhancedData, Lithic::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig { override.returns({data: T::Array[Lithic::Models::Transactions::Events::EnhancedData]}) }
        def to_hash
        end
      end
    end
  end
end
