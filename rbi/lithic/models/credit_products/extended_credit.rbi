# typed: strong

module Lithic
  module Models
    module CreditProducts
      class CreditProductsExtendedCredit < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CreditProducts::CreditProductsExtendedCredit,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :credit_extended

        sig { params(credit_extended: Integer).returns(T.attached_class) }
        def self.new(credit_extended:)
        end

        sig { override.returns({ credit_extended: Integer }) }
        def to_hash
        end
      end
    end
  end
end
