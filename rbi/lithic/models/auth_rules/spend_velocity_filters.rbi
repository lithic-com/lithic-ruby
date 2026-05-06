# typed: strong

module Lithic
  module Models
    module AuthRules
      class SpendVelocityFilters < Lithic::Models::AuthRules::VelocityLimitFilters
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::SpendVelocityFilters,
              Lithic::Internal::AnyHash
            )
          end

        # Tag key-value pairs to exclude from the velocity calculation. Transactions
        # matching all specified tag key-value pairs will be excluded from the calculated
        # velocity.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :exclude_tags

        # Tag key-value pairs to include in the velocity calculation. Only transactions
        # matching all specified tag key-value pairs will be included in the calculated
        # velocity.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :include_tags

        sig do
          params(
            exclude_tags: T.nilable(T::Hash[Symbol, String]),
            include_tags: T.nilable(T::Hash[Symbol, String])
          ).returns(T.attached_class)
        end
        def self.new(
          # Tag key-value pairs to exclude from the velocity calculation. Transactions
          # matching all specified tag key-value pairs will be excluded from the calculated
          # velocity.
          exclude_tags: nil,
          # Tag key-value pairs to include in the velocity calculation. Only transactions
          # matching all specified tag key-value pairs will be included in the calculated
          # velocity.
          include_tags: nil
        )
        end

        sig do
          override.returns(
            {
              exclude_tags: T.nilable(T::Hash[Symbol, String]),
              include_tags: T.nilable(T::Hash[Symbol, String])
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
