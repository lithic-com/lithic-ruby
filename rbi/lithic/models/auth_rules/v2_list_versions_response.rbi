# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ListVersionsResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AuthRules::V2ListVersionsResponse,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Lithic::AuthRules::AuthRuleVersion]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Lithic::AuthRules::AuthRuleVersion::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Lithic::AuthRules::AuthRuleVersion] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
