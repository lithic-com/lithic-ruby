# typed: strong

module Lithic
  module Models
    module Transactions
      class EnhancedCommercialDataRetrieveResponse < Lithic::BaseModel
        sig { returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData]) }
        def data
        end

        sig do
          params(_: T::Array[Lithic::Models::Transactions::Events::EnhancedData])
            .returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData])
        end
        def data=(_)
        end

        sig do
          params(data: T::Array[T.any(Lithic::Models::Transactions::Events::EnhancedData, Lithic::Util::AnyHash)])
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
