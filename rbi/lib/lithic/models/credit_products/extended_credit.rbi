# typed: strong

module Lithic
  module Models
    module CreditProducts
      class CreditProductsExtendedCredit < Lithic::BaseModel
        sig { returns(Integer) }
        def credit_extended
        end

        sig { params(_: Integer).returns(Integer) }
        def credit_extended=(_)
        end

        sig { params(credit_extended: Integer).returns(T.attached_class) }
        def self.new(credit_extended:)
        end

        sig { override.returns({credit_extended: Integer}) }
        def to_hash
        end
      end
    end
  end
end
