# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Accounts#retrieve_spend_limits
    class AccountSpendLimits < Lithic::Internal::Type::BaseModel
      # @!attribute available_spend_limit
      #
      #   @return [Lithic::Models::AccountSpendLimits::AvailableSpendLimit]
      required :available_spend_limit, -> { Lithic::Models::AccountSpendLimits::AvailableSpendLimit }

      # @!attribute [r] spend_limit
      #
      #   @return [Lithic::Models::AccountSpendLimits::SpendLimit, nil]
      optional :spend_limit, -> { Lithic::Models::AccountSpendLimits::SpendLimit }

      # @!parse
      #   # @return [Lithic::Models::AccountSpendLimits::SpendLimit]
      #   attr_writer :spend_limit

      # @!attribute [r] spend_velocity
      #
      #   @return [Lithic::Models::AccountSpendLimits::SpendVelocity, nil]
      optional :spend_velocity, -> { Lithic::Models::AccountSpendLimits::SpendVelocity }

      # @!parse
      #   # @return [Lithic::Models::AccountSpendLimits::SpendVelocity]
      #   attr_writer :spend_velocity

      # @!method initialize(available_spend_limit:, spend_limit: nil, spend_velocity: nil)
      #   @param available_spend_limit [Lithic::Models::AccountSpendLimits::AvailableSpendLimit]
      #   @param spend_limit [Lithic::Models::AccountSpendLimits::SpendLimit]
      #   @param spend_velocity [Lithic::Models::AccountSpendLimits::SpendVelocity]

      # @see Lithic::Models::AccountSpendLimits#available_spend_limit
      class AvailableSpendLimit < Lithic::Internal::Type::BaseModel
        # @!attribute [r] daily
        #   The available spend limit (in cents) relative to the daily limit configured on
        #   the Account (e.g. 100000 would be a $1,000 limit).
        #
        #   @return [Integer, nil]
        optional :daily, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :daily

        # @!attribute [r] lifetime
        #   The available spend limit (in cents) relative to the lifetime limit configured
        #   on the Account.
        #
        #   @return [Integer, nil]
        optional :lifetime, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lifetime

        # @!attribute [r] monthly
        #   The available spend limit (in cents) relative to the monthly limit configured on
        #   the Account.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :monthly

        # @!method initialize(daily: nil, lifetime: nil, monthly: nil)
        #   @param daily [Integer]
        #   @param lifetime [Integer]
        #   @param monthly [Integer]
      end

      # @see Lithic::Models::AccountSpendLimits#spend_limit
      class SpendLimit < Lithic::Internal::Type::BaseModel
        # @!attribute [r] daily
        #   The configured daily spend limit (in cents) on the Account.
        #
        #   @return [Integer, nil]
        optional :daily, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :daily

        # @!attribute [r] lifetime
        #   The configured lifetime spend limit (in cents) on the Account.
        #
        #   @return [Integer, nil]
        optional :lifetime, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lifetime

        # @!attribute [r] monthly
        #   The configured monthly spend limit (in cents) on the Account.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :monthly

        # @!method initialize(daily: nil, lifetime: nil, monthly: nil)
        #   @param daily [Integer]
        #   @param lifetime [Integer]
        #   @param monthly [Integer]
      end

      # @see Lithic::Models::AccountSpendLimits#spend_velocity
      class SpendVelocity < Lithic::Internal::Type::BaseModel
        # @!attribute [r] daily
        #   Current daily spend velocity (in cents) on the Account. Present if daily spend
        #   limit is set.
        #
        #   @return [Integer, nil]
        optional :daily, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :daily

        # @!attribute [r] lifetime
        #   Current lifetime spend velocity (in cents) on the Account. Present if lifetime
        #   spend limit is set.
        #
        #   @return [Integer, nil]
        optional :lifetime, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lifetime

        # @!attribute [r] monthly
        #   Current monthly spend velocity (in cents) on the Account. Present if monthly
        #   spend limit is set.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :monthly

        # @!method initialize(daily: nil, lifetime: nil, monthly: nil)
        #   @param daily [Integer]
        #   @param lifetime [Integer]
        #   @param monthly [Integer]
      end
    end
  end
end
