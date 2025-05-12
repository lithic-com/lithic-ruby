# typed: strong

module Lithic
  module Models
    class CardSpendLimits < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardSpendLimits, Lithic::Internal::AnyHash)
        end

      sig { returns(Lithic::CardSpendLimits::AvailableSpendLimit) }
      attr_reader :available_spend_limit

      sig do
        params(
          available_spend_limit:
            Lithic::CardSpendLimits::AvailableSpendLimit::OrHash
        ).void
      end
      attr_writer :available_spend_limit

      sig { returns(T.nilable(Lithic::CardSpendLimits::SpendLimit)) }
      attr_reader :spend_limit

      sig do
        params(spend_limit: Lithic::CardSpendLimits::SpendLimit::OrHash).void
      end
      attr_writer :spend_limit

      sig { returns(T.nilable(Lithic::CardSpendLimits::SpendVelocity)) }
      attr_reader :spend_velocity

      sig do
        params(
          spend_velocity: Lithic::CardSpendLimits::SpendVelocity::OrHash
        ).void
      end
      attr_writer :spend_velocity

      sig do
        params(
          available_spend_limit:
            Lithic::CardSpendLimits::AvailableSpendLimit::OrHash,
          spend_limit: Lithic::CardSpendLimits::SpendLimit::OrHash,
          spend_velocity: Lithic::CardSpendLimits::SpendVelocity::OrHash
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
            available_spend_limit: Lithic::CardSpendLimits::AvailableSpendLimit,
            spend_limit: Lithic::CardSpendLimits::SpendLimit,
            spend_velocity: Lithic::CardSpendLimits::SpendVelocity
          }
        )
      end
      def to_hash
      end

      class AvailableSpendLimit < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardSpendLimits::AvailableSpendLimit,
              Lithic::Internal::AnyHash
            )
          end

        # The available spend limit (in cents) relative to the annual limit configured on
        # the Card (e.g. 100000 would be a $1,000 limit).
        sig { returns(T.nilable(Integer)) }
        attr_reader :annually

        sig { params(annually: Integer).void }
        attr_writer :annually

        # The available spend limit (in cents) relative to the forever limit configured on
        # the Card.
        sig { returns(T.nilable(Integer)) }
        attr_reader :forever

        sig { params(forever: Integer).void }
        attr_writer :forever

        # The available spend limit (in cents) relative to the monthly limit configured on
        # the Card.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

        sig do
          params(annually: Integer, forever: Integer, monthly: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The available spend limit (in cents) relative to the annual limit configured on
          # the Card (e.g. 100000 would be a $1,000 limit).
          annually: nil,
          # The available spend limit (in cents) relative to the forever limit configured on
          # the Card.
          forever: nil,
          # The available spend limit (in cents) relative to the monthly limit configured on
          # the Card.
          monthly: nil
        )
        end

        sig do
          override.returns(
            { annually: Integer, forever: Integer, monthly: Integer }
          )
        end
        def to_hash
        end
      end

      class SpendLimit < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardSpendLimits::SpendLimit,
              Lithic::Internal::AnyHash
            )
          end

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

        sig do
          params(annually: Integer, forever: Integer, monthly: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The configured annual spend limit (in cents) on the Card.
          annually: nil,
          # The configured forever spend limit (in cents) on the Card.
          forever: nil,
          # The configured monthly spend limit (in cents) on the Card.
          monthly: nil
        )
        end

        sig do
          override.returns(
            { annually: Integer, forever: Integer, monthly: Integer }
          )
        end
        def to_hash
        end
      end

      class SpendVelocity < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardSpendLimits::SpendVelocity,
              Lithic::Internal::AnyHash
            )
          end

        # Current annual spend velocity (in cents) on the Card. Present if annual spend
        # limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :annually

        sig { params(annually: Integer).void }
        attr_writer :annually

        # Current forever spend velocity (in cents) on the Card. Present if forever spend
        # limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :forever

        sig { params(forever: Integer).void }
        attr_writer :forever

        # Current monthly spend velocity (in cents) on the Card. Present if monthly spend
        # limit is set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :monthly

        sig { params(monthly: Integer).void }
        attr_writer :monthly

        sig do
          params(annually: Integer, forever: Integer, monthly: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # Current annual spend velocity (in cents) on the Card. Present if annual spend
          # limit is set.
          annually: nil,
          # Current forever spend velocity (in cents) on the Card. Present if forever spend
          # limit is set.
          forever: nil,
          # Current monthly spend velocity (in cents) on the Card. Present if monthly spend
          # limit is set.
          monthly: nil
        )
        end

        sig do
          override.returns(
            { annually: Integer, forever: Integer, monthly: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
