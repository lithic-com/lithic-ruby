# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class OpenToBuySummary < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::OpenToBuySummary,
              Lithic::Internal::AnyHash
            )
          end

        # Available balance of the Security Account backing card spend, in the currency's
        # smallest unit (e.g., cents for USD)
        sig { returns(Integer) }
        attr_accessor :security

        # Funding that has moved out of the Security Account to cover card spend Lithic
        # has already paid out to the networks, in the currency's smallest unit (e.g.,
        # cents for USD). Open to buy counts it alongside `security`, and it clears once
        # collected from your business clients. Only Commercial Charge tracks this
        # separately, so this is `null` for every other program setup
        sig { returns(T.nilable(Integer)) }
        attr_accessor :settled_funds

        # Customer card spend that has not yet been collected, in the currency's smallest
        # unit (e.g., cents for USD). Reported as a negative amount, because it reduces
        # open to buy
        sig { returns(Integer) }
        attr_accessor :total_outstanding_spend

        # Open to Buy Summary
        sig do
          params(
            security: Integer,
            settled_funds: T.nilable(Integer),
            total_outstanding_spend: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Available balance of the Security Account backing card spend, in the currency's
          # smallest unit (e.g., cents for USD)
          security:,
          # Funding that has moved out of the Security Account to cover card spend Lithic
          # has already paid out to the networks, in the currency's smallest unit (e.g.,
          # cents for USD). Open to buy counts it alongside `security`, and it clears once
          # collected from your business clients. Only Commercial Charge tracks this
          # separately, so this is `null` for every other program setup
          settled_funds:,
          # Customer card spend that has not yet been collected, in the currency's smallest
          # unit (e.g., cents for USD). Reported as a negative amount, because it reduces
          # open to buy
          total_outstanding_spend:
        )
        end

        sig do
          override.returns(
            {
              security: Integer,
              settled_funds: T.nilable(Integer),
              total_outstanding_spend: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
