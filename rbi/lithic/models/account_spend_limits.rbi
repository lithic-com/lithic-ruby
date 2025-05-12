# typed: strong

module Lithic
  module Models
    class AccountSpendLimits < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::AccountSpendLimits, Lithic::Internal::AnyHash)
        end

      sig { returns(Lithic::AccountSpendLimits::AvailableSpendLimit) }
      attr_reader :available_spend_limit

      sig do
        params(
          available_spend_limit:
            Lithic::AccountSpendLimits::AvailableSpendLimit::OrHash
        ).void
      end
      attr_writer :available_spend_limit

      sig { returns(T.nilable(Lithic::AccountSpendLimits::SpendLimit)) }
      attr_reader :spend_limit

      sig do
        params(spend_limit: Lithic::AccountSpendLimits::SpendLimit::OrHash).void
      end
      attr_writer :spend_limit

      sig { returns(T.nilable(Lithic::AccountSpendLimits::SpendVelocity)) }
      attr_reader :spend_velocity

      sig do
        params(
          spend_velocity: Lithic::AccountSpendLimits::SpendVelocity::OrHash
        ).void
      end
      attr_writer :spend_velocity

      sig do
        params(
          available_spend_limit:
            Lithic::AccountSpendLimits::AvailableSpendLimit::OrHash,
          spend_limit: Lithic::AccountSpendLimits::SpendLimit::OrHash,
          spend_velocity: Lithic::AccountSpendLimits::SpendVelocity::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        available_spend_limit:,
        spend_limit: nil,
        spend_velocity: nil
      )
      end

      sig do
        override.returns(
          {
            available_spend_limit:
              Lithic::AccountSpendLimits::AvailableSpendLimit,
            spend_limit: Lithic::AccountSpendLimits::SpendLimit,
            spend_velocity: Lithic::AccountSpendLimits::SpendVelocity
          }
        )
      end
      def to_hash
      end

      class AvailableSpendLimit < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountSpendLimits::AvailableSpendLimit,
              Lithic::Internal::AnyHash
            )
          end

        # The available spend limit (in cents) relative to the daily limit configured on
        # the Account (e.g. 100000 would be a $1,000 limit).
        sig { returns(T.nilable(Integer)) }
        attr_reader :daily

        sig { params(daily: Integer).void }
        attr_writer :daily

        # The available spend limit (in cents) relative to the lifetime limit configured
        # on the Account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :lifetime

        sig { params(lifetime: Integer).void }
        attr_writer :lifetime

        # The available spend limit (in cents) relative to the monthly limit configured on
        # the Account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

        sig do
          params(daily: Integer, lifetime: Integer, monthly: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The available spend limit (in cents) relative to the daily limit configured on
          # the Account (e.g. 100000 would be a $1,000 limit).
          daily: nil,
          # The available spend limit (in cents) relative to the lifetime limit configured
          # on the Account.
          lifetime: nil,
          # The available spend limit (in cents) relative to the monthly limit configured on
          # the Account.
          monthly: nil
        )
        end

        sig do
          override.returns(
            { daily: Integer, lifetime: Integer, monthly: Integer }
          )
        end
        def to_hash
        end
      end

      class SpendLimit < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountSpendLimits::SpendLimit,
              Lithic::Internal::AnyHash
            )
          end

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

        sig do
          params(daily: Integer, lifetime: Integer, monthly: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The configured daily spend limit (in cents) on the Account.
          daily: nil,
          # The configured lifetime spend limit (in cents) on the Account.
          lifetime: nil,
          # The configured monthly spend limit (in cents) on the Account.
          monthly: nil
        )
        end

        sig do
          override.returns(
            { daily: Integer, lifetime: Integer, monthly: Integer }
          )
        end
        def to_hash
        end
      end

      class SpendVelocity < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountSpendLimits::SpendVelocity,
              Lithic::Internal::AnyHash
            )
          end

        # Current daily spend velocity (in cents) on the Account. Present if daily spend
        # limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :daily

        sig { params(daily: Integer).void }
        attr_writer :daily

        # Current lifetime spend velocity (in cents) on the Account. Present if lifetime
        # spend limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :lifetime

        sig { params(lifetime: Integer).void }
        attr_writer :lifetime

        # Current monthly spend velocity (in cents) on the Account. Present if monthly
        # spend limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

        sig do
          params(daily: Integer, lifetime: Integer, monthly: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # Current daily spend velocity (in cents) on the Account. Present if daily spend
          # limit is set.
          daily: nil,
          # Current lifetime spend velocity (in cents) on the Account. Present if lifetime
          # spend limit is set.
          lifetime: nil,
          # Current monthly spend velocity (in cents) on the Account. Present if monthly
          # spend limit is set.
          monthly: nil
        )
        end

        sig do
          override.returns(
            { daily: Integer, lifetime: Integer, monthly: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
