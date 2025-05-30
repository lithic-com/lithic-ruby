# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Accounts#retrieve_spend_limits
    class AccountSpendLimits < Lithic::Internal::Type::BaseModel
      # @!attribute available_spend_limit
      #
      #   @return [Lithic::Models::AccountSpendLimits::AvailableSpendLimit]
      required :available_spend_limit, -> { Lithic::AccountSpendLimits::AvailableSpendLimit }

      # @!attribute spend_limit
      #
      #   @return [Lithic::Models::AccountSpendLimits::SpendLimit, nil]
      optional :spend_limit, -> { Lithic::AccountSpendLimits::SpendLimit }

      # @!attribute spend_velocity
      #
      #   @return [Lithic::Models::AccountSpendLimits::SpendVelocity, nil]
      optional :spend_velocity, -> { Lithic::AccountSpendLimits::SpendVelocity }

      # @!method initialize(available_spend_limit:, spend_limit: nil, spend_velocity: nil)
      #   @param available_spend_limit [Lithic::Models::AccountSpendLimits::AvailableSpendLimit]
      #   @param spend_limit [Lithic::Models::AccountSpendLimits::SpendLimit]
      #   @param spend_velocity [Lithic::Models::AccountSpendLimits::SpendVelocity]

      # @see Lithic::Models::AccountSpendLimits#available_spend_limit
      class AvailableSpendLimit < Lithic::Internal::Type::BaseModel
        # @!attribute daily
        #   The available spend limit (in cents) relative to the daily limit configured on
        #   the Account (e.g. 100000 would be a $1,000 limit).
        #
        #   @return [Integer, nil]
        optional :daily, Integer

        # @!attribute lifetime
        #   The available spend limit (in cents) relative to the lifetime limit configured
        #   on the Account.
        #
        #   @return [Integer, nil]
        optional :lifetime, Integer

        # @!attribute monthly
        #   The available spend limit (in cents) relative to the monthly limit configured on
        #   the Account.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!method initialize(daily: nil, lifetime: nil, monthly: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AccountSpendLimits::AvailableSpendLimit} for more details.
        #
        #   @param daily [Integer] The available spend limit (in cents) relative to the daily limit configured on t
        #
        #   @param lifetime [Integer] The available spend limit (in cents) relative to the lifetime limit configured o
        #
        #   @param monthly [Integer] The available spend limit (in cents) relative to the monthly limit configured on
      end

      # @see Lithic::Models::AccountSpendLimits#spend_limit
      class SpendLimit < Lithic::Internal::Type::BaseModel
        # @!attribute daily
        #   The configured daily spend limit (in cents) on the Account.
        #
        #   @return [Integer, nil]
        optional :daily, Integer

        # @!attribute lifetime
        #   The configured lifetime spend limit (in cents) on the Account.
        #
        #   @return [Integer, nil]
        optional :lifetime, Integer

        # @!attribute monthly
        #   The configured monthly spend limit (in cents) on the Account.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!method initialize(daily: nil, lifetime: nil, monthly: nil)
        #   @param daily [Integer] The configured daily spend limit (in cents) on the Account.
        #
        #   @param lifetime [Integer] The configured lifetime spend limit (in cents) on the Account.
        #
        #   @param monthly [Integer] The configured monthly spend limit (in cents) on the Account.
      end

      # @see Lithic::Models::AccountSpendLimits#spend_velocity
      class SpendVelocity < Lithic::Internal::Type::BaseModel
        # @!attribute daily
        #   Current daily spend velocity (in cents) on the Account. Present if daily spend
        #   limit is set.
        #
        #   @return [Integer, nil]
        optional :daily, Integer

        # @!attribute lifetime
        #   Current lifetime spend velocity (in cents) on the Account. Present if lifetime
        #   spend limit is set.
        #
        #   @return [Integer, nil]
        optional :lifetime, Integer

        # @!attribute monthly
        #   Current monthly spend velocity (in cents) on the Account. Present if monthly
        #   spend limit is set.
        #
        #   @return [Integer, nil]
        optional :monthly, Integer

        # @!method initialize(daily: nil, lifetime: nil, monthly: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AccountSpendLimits::SpendVelocity} for more details.
        #
        #   @param daily [Integer] Current daily spend velocity (in cents) on the Account. Present if daily spend l
        #
        #   @param lifetime [Integer] Current lifetime spend velocity (in cents) on the Account. Present if lifetime s
        #
        #   @param monthly [Integer] Current monthly spend velocity (in cents) on the Account. Present if monthly spe
      end
    end
  end
end
