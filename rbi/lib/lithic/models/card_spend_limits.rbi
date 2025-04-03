# typed: strong

module Lithic
  module Models
    class CardSpendLimits < Lithic::Internal::Type::BaseModel
      sig { returns(Lithic::Models::CardSpendLimits::AvailableSpendLimit) }
      attr_reader :available_spend_limit

      sig do
        params(
          available_spend_limit: T.any(Lithic::Models::CardSpendLimits::AvailableSpendLimit, Lithic::Internal::AnyHash)
        )
          .void
      end
      attr_writer :available_spend_limit

      sig { returns(T.nilable(Lithic::Models::CardSpendLimits::SpendLimit)) }
      attr_reader :spend_limit

      sig { params(spend_limit: T.any(Lithic::Models::CardSpendLimits::SpendLimit, Lithic::Internal::AnyHash)).void }
      attr_writer :spend_limit

      sig { returns(T.nilable(Lithic::Models::CardSpendLimits::SpendVelocity)) }
      attr_reader :spend_velocity

      sig do
        params(spend_velocity: T.any(Lithic::Models::CardSpendLimits::SpendVelocity, Lithic::Internal::AnyHash))
          .void
      end
      attr_writer :spend_velocity

      sig do
        params(
          available_spend_limit: T.any(Lithic::Models::CardSpendLimits::AvailableSpendLimit, Lithic::Internal::AnyHash),
          spend_limit: T.any(Lithic::Models::CardSpendLimits::SpendLimit, Lithic::Internal::AnyHash),
          spend_velocity: T.any(Lithic::Models::CardSpendLimits::SpendVelocity, Lithic::Internal::AnyHash)
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

      class AvailableSpendLimit < Lithic::Internal::Type::BaseModel
        # The available spend limit (in cents) relative to the annual limit configured on
        #   the Card (e.g. 100000 would be a $1,000 limit).
        sig { returns(T.nilable(Integer)) }
        attr_reader :annually

        sig { params(annually: Integer).void }
        attr_writer :annually

        # The available spend limit (in cents) relative to the forever limit configured on
        #   the Card.
        sig { returns(T.nilable(Integer)) }
        attr_reader :forever

        sig { params(forever: Integer).void }
        attr_writer :forever

        # The available spend limit (in cents) relative to the monthly limit configured on
        #   the Card.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

        sig { params(annually: Integer, forever: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(annually: nil, forever: nil, monthly: nil)
        end

        sig { override.returns({annually: Integer, forever: Integer, monthly: Integer}) }
        def to_hash
        end
      end

      class SpendLimit < Lithic::Internal::Type::BaseModel
        # The configured annual spend limit (in cents) on the Card.
        sig { returns(T.nilable(Integer)) }
        attr_reader :annually

        sig { params(annually: Integer).void }
        attr_writer :annually

        # The configured forever spend limit (in cents) on the Card.
        sig { returns(T.nilable(Integer)) }
        attr_reader :forever

        sig { params(forever: Integer).void }
        attr_writer :forever

        # The configured monthly spend limit (in cents) on the Card.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

        sig { params(annually: Integer, forever: Integer, monthly: Integer).returns(T.attached_class) }
        def self.new(annually: nil, forever: nil, monthly: nil)
        end

        sig { override.returns({annually: Integer, forever: Integer, monthly: Integer}) }
        def to_hash
        end
      end

      class SpendVelocity < Lithic::Internal::Type::BaseModel
        # Current annual spend velocity (in cents) on the Card. Present if annual spend
        #   limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :annually

        sig { params(annually: Integer).void }
        attr_writer :annually

        # Current forever spend velocity (in cents) on the Card. Present if forever spend
        #   limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :forever

        sig { params(forever: Integer).void }
        attr_writer :forever

        # Current monthly spend velocity (in cents) on the Card. Present if monthly spend
        #   limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

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
