# typed: strong

module Lithic
  module Models
    class AccountSpendLimits < Lithic::BaseModel
      sig { returns(Lithic::Models::AccountSpendLimits::AvailableSpendLimit) }
      def available_spend_limit
      end

      sig do
        params(_: T.any(Lithic::Models::AccountSpendLimits::AvailableSpendLimit, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::AccountSpendLimits::AvailableSpendLimit, Lithic::Util::AnyHash))
      end
      def available_spend_limit=(_)
      end

      sig { returns(T.nilable(Lithic::Models::AccountSpendLimits::SpendLimit)) }
      def spend_limit
      end

      sig do
        params(_: T.any(Lithic::Models::AccountSpendLimits::SpendLimit, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::AccountSpendLimits::SpendLimit, Lithic::Util::AnyHash))
      end
      def spend_limit=(_)
      end

      sig { returns(T.nilable(Lithic::Models::AccountSpendLimits::SpendVelocity)) }
      def spend_velocity
      end

      sig do
        params(_: T.any(Lithic::Models::AccountSpendLimits::SpendVelocity, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::AccountSpendLimits::SpendVelocity, Lithic::Util::AnyHash))
      end
      def spend_velocity=(_)
      end

      sig do
        params(
          available_spend_limit: T.any(Lithic::Models::AccountSpendLimits::AvailableSpendLimit, Lithic::Util::AnyHash),
          spend_limit: T.any(Lithic::Models::AccountSpendLimits::SpendLimit, Lithic::Util::AnyHash),
          spend_velocity: T.any(Lithic::Models::AccountSpendLimits::SpendVelocity, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(available_spend_limit:, spend_limit: nil, spend_velocity: nil)
      end

      sig do
        override
          .returns(
            {
              available_spend_limit: Lithic::Models::AccountSpendLimits::AvailableSpendLimit,
              spend_limit: Lithic::Models::AccountSpendLimits::SpendLimit,
              spend_velocity: Lithic::Models::AccountSpendLimits::SpendVelocity
            }
          )
      end
      def to_hash
      end

      class AvailableSpendLimit < Lithic::BaseModel
        # The available spend limit (in cents) relative to the daily limit configured on
        #   the Account (e.g. 100000 would be a $1,000 limit).
        sig { returns(T.nilable(Integer)) }
        def daily
        end

        sig { params(_: Integer).returns(Integer) }
        def daily=(_)
        end

        # The available spend limit (in cents) relative to the lifetime limit configured
        #   on the Account.
        sig { returns(T.nilable(Integer)) }
        def lifetime
        end

        sig { params(_: Integer).returns(Integer) }
        def lifetime=(_)
        end

        # The available spend limit (in cents) relative to the monthly limit configured on
        #   the Account.
        sig { returns(T.nilable(Integer)) }
        def monthly
        end

        sig { params(_: Integer).returns(Integer) }
        def monthly=(_)
        end

        sig { params(daily: Integer, lifetime: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(daily: nil, lifetime: nil, monthly: nil)
        end

        sig { override.returns({daily: Integer, lifetime: Integer, monthly: Integer}) }
        def to_hash
        end
      end

      class SpendLimit < Lithic::BaseModel
        # The configured daily spend limit (in cents) on the Account.
        sig { returns(T.nilable(Integer)) }
        def daily
        end

        sig { params(_: Integer).returns(Integer) }
        def daily=(_)
        end

        # The configured lifetime spend limit (in cents) on the Account.
        sig { returns(T.nilable(Integer)) }
        def lifetime
        end

        sig { params(_: Integer).returns(Integer) }
        def lifetime=(_)
        end

        # The configured monthly spend limit (in cents) on the Account.
        sig { returns(T.nilable(Integer)) }
        def monthly
        end

        sig { params(_: Integer).returns(Integer) }
        def monthly=(_)
        end

        sig { params(daily: Integer, lifetime: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(daily: nil, lifetime: nil, monthly: nil)
        end

        sig { override.returns({daily: Integer, lifetime: Integer, monthly: Integer}) }
        def to_hash
        end
      end

      class SpendVelocity < Lithic::BaseModel
        # Current daily spend velocity (in cents) on the Account. Present if daily spend
        #   limit is set.
        sig { returns(T.nilable(Integer)) }
        def daily
        end

        sig { params(_: Integer).returns(Integer) }
        def daily=(_)
        end

        # Current lifetime spend velocity (in cents) on the Account. Present if lifetime
        #   spend limit is set.
        sig { returns(T.nilable(Integer)) }
        def lifetime
        end

        sig { params(_: Integer).returns(Integer) }
        def lifetime=(_)
        end

        # Current monthly spend velocity (in cents) on the Account. Present if monthly
        #   spend limit is set.
        sig { returns(T.nilable(Integer)) }
        def monthly
        end

        sig { params(_: Integer).returns(Integer) }
        def monthly=(_)
        end

        sig { params(daily: Integer, lifetime: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(daily: nil, lifetime: nil, monthly: nil)
        end

        sig { override.returns({daily: Integer, lifetime: Integer, monthly: Integer}) }
        def to_hash
        end
      end
    end
  end
end
