# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class CategoryTier < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::CategoryTier,
              Lithic::Internal::AnyHash
            )
          end

        # Maximum interest rate for this category, e.g. '0.0525' for 5.25%
        sig { returns(T.nilable(String)) }
        attr_reader :cap_rate

        sig { params(cap_rate: String).void }
        attr_writer :cap_rate

        # Interest rate for this category, e.g. '0.0525' for 5.25%
        sig { returns(T.nilable(String)) }
        attr_reader :rate

        sig { params(rate: String).void }
        attr_writer :rate

        # Rate and rate cap for interest on a category
        sig { params(cap_rate: String, rate: String).returns(T.attached_class) }
        def self.new(
          # Maximum interest rate for this category, e.g. '0.0525' for 5.25%
          cap_rate: nil,
          # Interest rate for this category, e.g. '0.0525' for 5.25%
          rate: nil
        )
        end

        sig { override.returns({ cap_rate: String, rate: String }) }
        def to_hash
        end
      end
    end
  end
end
