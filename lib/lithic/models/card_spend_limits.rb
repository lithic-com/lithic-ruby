# frozen_string_literal: true

module Lithic
  module Models
    class CardSpendLimits < Lithic::BaseModel
      # @!attribute available_spend_limit
      #
      #   @return [Lithic::Models::CardSpendLimits::AvailableSpendLimit]
      required :available_spend_limit, -> { Lithic::Models::CardSpendLimits::AvailableSpendLimit }

      # @!attribute [r] spend_limit
      #
      #   @return [Lithic::Models::CardSpendLimits::SpendLimit, nil]
      optional :spend_limit, -> { Lithic::Models::CardSpendLimits::SpendLimit }

      # @!parse
      #   # @return [Lithic::Models::CardSpendLimits::SpendLimit]
      #   attr_writer :spend_limit

      # @!attribute [r] spend_velocity
      #
      #   @return [Lithic::Models::CardSpendLimits::SpendVelocity, nil]
      optional :spend_velocity, -> { Lithic::Models::CardSpendLimits::SpendVelocity }

      # @!parse
      #   # @return [Lithic::Models::CardSpendLimits::SpendVelocity]
      #   attr_writer :spend_velocity

      # @!parse
      #   # @param available_spend_limit [Lithic::Models::CardSpendLimits::AvailableSpendLimit]
      #   # @param spend_limit [Lithic::Models::CardSpendLimits::SpendLimit]
      #   # @param spend_velocity [Lithic::Models::CardSpendLimits::SpendVelocity]
      #   #
      #   def initialize(available_spend_limit:, spend_limit: nil, spend_velocity: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # @see Lithic::Models::CardSpendLimits#available_spend_limit
      class AvailableSpendLimit < Lithic::BaseModel
        # @!attribute [r] annually
        #   The available spend limit (in cents) relative to the annual limit configured on
        #     the Card (e.g. 100000 would be a $1,000 limit).
        #
        #   @return [Integer, nil]
        optional :annually, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :annually

        # @!attribute [r] forever
        #   The available spend limit (in cents) relative to the forever limit configured on
        #     the Card.
        #
        #   @return [Integer, nil]
        optional :forever, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :forever

        # @!attribute [r] monthly
        #   The available spend limit (in cents) relative to the monthly limit configured on
        #     the Card.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :monthly

        # @!parse
        #   # @param annually [Integer]
        #   # @param forever [Integer]
        #   # @param monthly [Integer]
        #   #
        #   def initialize(annually: nil, forever: nil, monthly: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # @see Lithic::Models::CardSpendLimits#spend_limit
      class SpendLimit < Lithic::BaseModel
        # @!attribute [r] annually
        #   The configured annual spend limit (in cents) on the Card.
        #
        #   @return [Integer, nil]
        optional :annually, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :annually

        # @!attribute [r] forever
        #   The configured forever spend limit (in cents) on the Card.
        #
        #   @return [Integer, nil]
        optional :forever, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :forever

        # @!attribute [r] monthly
        #   The configured monthly spend limit (in cents) on the Card.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :monthly

        # @!parse
        #   # @param annually [Integer]
        #   # @param forever [Integer]
        #   # @param monthly [Integer]
        #   #
        #   def initialize(annually: nil, forever: nil, monthly: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # @see Lithic::Models::CardSpendLimits#spend_velocity
      class SpendVelocity < Lithic::BaseModel
        # @!attribute [r] annually
        #   Current annual spend velocity (in cents) on the Card. Present if annual spend
        #     limit is set.
        #
        #   @return [Integer, nil]
        optional :annually, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :annually

        # @!attribute [r] forever
        #   Current forever spend velocity (in cents) on the Card. Present if forever spend
        #     limit is set.
        #
        #   @return [Integer, nil]
        optional :forever, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :forever

        # @!attribute [r] monthly
        #   Current monthly spend velocity (in cents) on the Card. Present if monthly spend
        #     limit is set.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :monthly

        # @!parse
        #   # @param annually [Integer]
        #   # @param forever [Integer]
        #   # @param monthly [Integer]
        #   #
        #   def initialize(annually: nil, forever: nil, monthly: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
