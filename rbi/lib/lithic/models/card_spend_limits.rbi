# typed: strong

module Lithic
  module Models
    class CardSpendLimits < Lithic::BaseModel
      sig { returns(Lithic::Models::CardSpendLimits::AvailableSpendLimit) }
      def available_spend_limit
      end

      sig do
        params(_: T.any(Lithic::Models::CardSpendLimits::AvailableSpendLimit, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::CardSpendLimits::AvailableSpendLimit, Lithic::Util::AnyHash))
      end
      def available_spend_limit=(_)
      end

      sig { returns(T.nilable(Lithic::Models::CardSpendLimits::SpendLimit)) }
      def spend_limit
      end

      sig do
        params(_: T.any(Lithic::Models::CardSpendLimits::SpendLimit, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::CardSpendLimits::SpendLimit, Lithic::Util::AnyHash))
      end
      def spend_limit=(_)
      end

      sig { returns(T.nilable(Lithic::Models::CardSpendLimits::SpendVelocity)) }
      def spend_velocity
      end

      sig do
        params(_: T.any(Lithic::Models::CardSpendLimits::SpendVelocity, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::CardSpendLimits::SpendVelocity, Lithic::Util::AnyHash))
      end
      def spend_velocity=(_)
      end

      sig do
        params(
          available_spend_limit: T.any(Lithic::Models::CardSpendLimits::AvailableSpendLimit, Lithic::Util::AnyHash),
          spend_limit: T.any(Lithic::Models::CardSpendLimits::SpendLimit, Lithic::Util::AnyHash),
          spend_velocity: T.any(Lithic::Models::CardSpendLimits::SpendVelocity, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(available_spend_limit:, spend_limit: nil, spend_velocity: nil)
      end

      sig do
        override
          .returns(
            {
              available_spend_limit: Lithic::Models::CardSpendLimits::AvailableSpendLimit,
              spend_limit: Lithic::Models::CardSpendLimits::SpendLimit,
              spend_velocity: Lithic::Models::CardSpendLimits::SpendVelocity
            }
          )
      end
      def to_hash
      end

      class AvailableSpendLimit < Lithic::BaseModel
        # The available spend limit (in cents) relative to the annual limit configured on
        #   the Card (e.g. 100000 would be a $1,000 limit).
        sig { returns(T.nilable(Integer)) }
        def annually
        end

        sig { params(_: Integer).returns(Integer) }
        def annually=(_)
        end

        # The available spend limit (in cents) relative to the forever limit configured on
        #   the Card.
        sig { returns(T.nilable(Integer)) }
        def forever
        end

        sig { params(_: Integer).returns(Integer) }
        def forever=(_)
        end

        # The available spend limit (in cents) relative to the monthly limit configured on
        #   the Card.
        sig { returns(T.nilable(Integer)) }
        def monthly
        end

        sig { params(_: Integer).returns(Integer) }
        def monthly=(_)
        end

        sig { params(annually: Integer, forever: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(annually: nil, forever: nil, monthly: nil)
        end

        sig { override.returns({annually: Integer, forever: Integer, monthly: Integer}) }
        def to_hash
        end
      end

      class SpendLimit < Lithic::BaseModel
        # The configured annual spend limit (in cents) on the Card.
        sig { returns(T.nilable(Integer)) }
        def annually
        end

        sig { params(_: Integer).returns(Integer) }
        def annually=(_)
        end

        # The configured forever spend limit (in cents) on the Card.
        sig { returns(T.nilable(Integer)) }
        def forever
        end

        sig { params(_: Integer).returns(Integer) }
        def forever=(_)
        end

        # The configured monthly spend limit (in cents) on the Card.
        sig { returns(T.nilable(Integer)) }
        def monthly
        end

        sig { params(_: Integer).returns(Integer) }
        def monthly=(_)
        end

        sig { params(annually: Integer, forever: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(annually: nil, forever: nil, monthly: nil)
        end

        sig { override.returns({annually: Integer, forever: Integer, monthly: Integer}) }
        def to_hash
        end
      end

      class SpendVelocity < Lithic::BaseModel
        # Current annual spend velocity (in cents) on the Card. Present if annual spend
        #   limit is set.
        sig { returns(T.nilable(Integer)) }
        def annually
        end

        sig { params(_: Integer).returns(Integer) }
        def annually=(_)
        end

        # Current forever spend velocity (in cents) on the Card. Present if forever spend
        #   limit is set.
        sig { returns(T.nilable(Integer)) }
        def forever
        end

        sig { params(_: Integer).returns(Integer) }
        def forever=(_)
        end

        # Current monthly spend velocity (in cents) on the Card. Present if monthly spend
        #   limit is set.
        sig { returns(T.nilable(Integer)) }
        def monthly
        end

        sig { params(_: Integer).returns(Integer) }
        def monthly=(_)
        end

        sig { params(annually: Integer, forever: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(annually: nil, forever: nil, monthly: nil)
        end

        sig { override.returns({annually: Integer, forever: Integer, monthly: Integer}) }
        def to_hash
        end
      end
    end
  end
end
