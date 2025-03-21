# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountsStatements < Lithic::BaseModel
        sig { returns(T::Array[Lithic::Models::FinancialAccounts::Statement]) }
        attr_accessor :data

        sig { returns(T::Boolean) }
        attr_accessor :has_more

        sig do
          params(
            data: T::Array[T.any(Lithic::Models::FinancialAccounts::Statement, Lithic::Util::AnyHash)],
            has_more: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(data:, has_more:)
        end

        sig { override.returns({data: T::Array[Lithic::Models::FinancialAccounts::Statement], has_more: T::Boolean}) }
        def to_hash
        end
      end
    end
  end
end
