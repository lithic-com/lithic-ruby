# typed: strong

module Lithic
  module Models
    class AccountSpendLimits < Lithic::BaseModel
      sig { returns(Lithic::Models::AccountSpendLimits::AvailableSpendLimit) }
      attr_reader :available_spend_limit

      sig do
        params(
          available_spend_limit: T.any(Lithic::Models::AccountSpendLimits::AvailableSpendLimit, Lithic::Util::AnyHash)
        )
          .void
      end
      attr_writer :available_spend_limit

      sig { returns(T.nilable(Lithic::Models::AccountSpendLimits::SpendLimit)) }
      attr_reader :spend_limit

      sig { params(spend_limit: T.any(Lithic::Models::AccountSpendLimits::SpendLimit, Lithic::Util::AnyHash)).void }
      attr_writer :spend_limit

      sig { returns(T.nilable(Lithic::Models::AccountSpendLimits::SpendVelocity)) }
      attr_reader :spend_velocity

      sig do
        params(spend_velocity: T.any(Lithic::Models::AccountSpendLimits::SpendVelocity, Lithic::Util::AnyHash))
          .void
      end
      attr_writer :spend_velocity

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
        attr_reader :daily

        sig { params(daily: Integer).void }
        attr_writer :daily

        # The available spend limit (in cents) relative to the lifetime limit configured
        #   on the Account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :lifetime

        sig { params(lifetime: Integer).void }
        attr_writer :lifetime

        # The available spend limit (in cents) relative to the monthly limit configured on
        #   the Account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

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
        attr_reader :daily

        sig { params(daily: Integer).void }
        attr_writer :daily

        # The configured lifetime spend limit (in cents) on the Account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :lifetime

        sig { params(lifetime: Integer).void }
        attr_writer :lifetime

        # The configured monthly spend limit (in cents) on the Account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

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
        attr_reader :daily

        sig { params(daily: Integer).void }
        attr_writer :daily

        # Current lifetime spend velocity (in cents) on the Account. Present if lifetime
        #   spend limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :lifetime

        sig { params(lifetime: Integer).void }
        attr_writer :lifetime

        # Current monthly spend velocity (in cents) on the Account. Present if monthly
        #   spend limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

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
