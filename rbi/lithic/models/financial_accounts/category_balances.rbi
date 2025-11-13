# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class CategoryBalances < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::CategoryBalances,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :fees

        sig { returns(Integer) }
        attr_accessor :interest

        sig { returns(Integer) }
        attr_accessor :principal

        sig do
          params(fees: Integer, interest: Integer, principal: Integer).returns(
            T.attached_class
          )
        end
        def self.new(fees:, interest:, principal:)
        end

        sig do
          override.returns(
            { fees: Integer, interest: Integer, principal: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
