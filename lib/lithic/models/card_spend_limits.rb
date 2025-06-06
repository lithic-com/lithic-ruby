# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#retrieve_spend_limits
    class CardSpendLimits < Lithic::Internal::Type::BaseModel
      # @!attribute available_spend_limit
      #
      #   @return [Lithic::Models::CardSpendLimits::AvailableSpendLimit]
      required :available_spend_limit, -> { Lithic::CardSpendLimits::AvailableSpendLimit }

      # @!attribute spend_limit
      #
      #   @return [Lithic::Models::CardSpendLimits::SpendLimit, nil]
      optional :spend_limit, -> { Lithic::CardSpendLimits::SpendLimit }

      # @!attribute spend_velocity
      #
      #   @return [Lithic::Models::CardSpendLimits::SpendVelocity, nil]
      optional :spend_velocity, -> { Lithic::CardSpendLimits::SpendVelocity }

      # @!method initialize(available_spend_limit:, spend_limit: nil, spend_velocity: nil)
      #   @param available_spend_limit [Lithic::Models::CardSpendLimits::AvailableSpendLimit]
      #   @param spend_limit [Lithic::Models::CardSpendLimits::SpendLimit]
      #   @param spend_velocity [Lithic::Models::CardSpendLimits::SpendVelocity]

      # @see Lithic::Models::CardSpendLimits#available_spend_limit
      class AvailableSpendLimit < Lithic::Internal::Type::BaseModel
        # @!attribute annually
        #   The available spend limit (in cents) relative to the annual limit configured on
        #   the Card (e.g. 100000 would be a $1,000 limit).
        #
        #   @return [Integer, nil]
        optional :annually, Integer

        # @!attribute forever
        #   The available spend limit (in cents) relative to the forever limit configured on
        #   the Card.
        #
        #   @return [Integer, nil]
        optional :forever, Integer

        # @!attribute monthly
        #   The available spend limit (in cents) relative to the monthly limit configured on
        #   the Card.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!method initialize(annually: nil, forever: nil, monthly: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::CardSpendLimits::AvailableSpendLimit} for more details.
        #
        #   @param annually [Integer] The available spend limit (in cents) relative to the annual limit configured on
        #
        #   @param forever [Integer] The available spend limit (in cents) relative to the forever limit configured on
        #
        #   @param monthly [Integer] The available spend limit (in cents) relative to the monthly limit configured on
      end

      # @see Lithic::Models::CardSpendLimits#spend_limit
      class SpendLimit < Lithic::Internal::Type::BaseModel
        # @!attribute annually
        #   The configured annual spend limit (in cents) on the Card.
        #
        #   @return [Integer, nil]
        optional :annually, Integer

        # @!attribute forever
        #   The configured forever spend limit (in cents) on the Card.
        #
        #   @return [Integer, nil]
        optional :forever, Integer

        # @!attribute monthly
        #   The configured monthly spend limit (in cents) on the Card.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!method initialize(annually: nil, forever: nil, monthly: nil)
        #   @param annually [Integer] The configured annual spend limit (in cents) on the Card.
        #
        #   @param forever [Integer] The configured forever spend limit (in cents) on the Card.
        #
        #   @param monthly [Integer] The configured monthly spend limit (in cents) on the Card.
      end

      # @see Lithic::Models::CardSpendLimits#spend_velocity
      class SpendVelocity < Lithic::Internal::Type::BaseModel
        # @!attribute annually
        #   Current annual spend velocity (in cents) on the Card. Present if annual spend
        #   limit is set.
        #
        #   @return [Integer, nil]
        optional :annually, Integer

        # @!attribute forever
        #   Current forever spend velocity (in cents) on the Card. Present if forever spend
        #   limit is set.
        #
        #   @return [Integer, nil]
        optional :forever, Integer

        # @!attribute monthly
        #   Current monthly spend velocity (in cents) on the Card. Present if monthly spend
        #   limit is set.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!method initialize(annually: nil, forever: nil, monthly: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::CardSpendLimits::SpendVelocity} for more details.
        #
        #   @param annually [Integer] Current annual spend velocity (in cents) on the Card. Present if annual spend li
        #
        #   @param forever [Integer] Current forever spend velocity (in cents) on the Card. Present if forever spend
        #
        #   @param monthly [Integer] Current monthly spend velocity (in cents) on the Card. Present if monthly spend
      end
    end
  end
end
