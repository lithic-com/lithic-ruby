# frozen_string_literal: true

module Lithic
  module Models
    class HoldEvent < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute amount
      #   Amount in cents
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute detailed_results
      #
      #   @return [Array<Symbol, Lithic::Models::HoldEvent::DetailedResult>]
      required :detailed_results,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::HoldEvent::DetailedResult] }

      # @!attribute memo
      #
      #   @return [String, nil]
      required :memo, String, nil?: true

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::HoldEvent::Result]
      required :result, enum: -> { Lithic::HoldEvent::Result }

      # @!attribute settling_transaction_token
      #   Transaction token of the payment that settled this hold (only populated for
      #   HOLD_SETTLED events)
      #
      #   @return [String, nil]
      required :settling_transaction_token, String, nil?: true

      # @!attribute type
      #   Type of hold lifecycle event
      #
      #   @return [Symbol, Lithic::Models::HoldEvent::Type]
      required :type, enum: -> { Lithic::HoldEvent::Type }

      # @!method initialize(token:, amount:, created:, detailed_results:, memo:, result:, settling_transaction_token:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::HoldEvent} for more details.
      #
      #   Event representing a lifecycle change to a hold
      #
      #   @param token [String]
      #
      #   @param amount [Integer] Amount in cents
      #
      #   @param created [Time]
      #
      #   @param detailed_results [Array<Symbol, Lithic::Models::HoldEvent::DetailedResult>]
      #
      #   @param memo [String, nil]
      #
      #   @param result [Symbol, Lithic::Models::HoldEvent::Result]
      #
      #   @param settling_transaction_token [String, nil] Transaction token of the payment that settled this hold (only populated for HOLD
      #
      #   @param type [Symbol, Lithic::Models::HoldEvent::Type] Type of hold lifecycle event

      module DetailedResult
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::HoldEvent#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Type of hold lifecycle event
      #
      # @see Lithic::Models::HoldEvent#type
      module Type
        extend Lithic::Internal::Type::Enum

        HOLD_INITIATED = :HOLD_INITIATED
        HOLD_VOIDED = :HOLD_VOIDED
        HOLD_EXPIRED = :HOLD_EXPIRED
        HOLD_SETTLED = :HOLD_SETTLED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
