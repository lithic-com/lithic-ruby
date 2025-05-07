# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountsStatements < Lithic::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        sig { returns(T::Array[Lithic::FinancialAccounts::Statement]) }
        attr_accessor :data

        sig { returns(T::Boolean) }
        attr_accessor :has_more

        sig do
          params(
            data: T::Array[Lithic::FinancialAccounts::Statement::OrHash],
            has_more: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(data:, has_more:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Lithic::FinancialAccounts::Statement],
              has_more: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
