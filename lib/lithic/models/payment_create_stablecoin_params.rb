# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#create_stablecoin
    class PaymentCreateStablecoinParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #   Payout amount in cents
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute blockchain_recipient_token
      #   Token of the blockchain recipient to send the payout to. The recipient must be
      #   in the `ENABLED` verification state
      #
      #   @return [String]
      required :blockchain_recipient_token, String

      # @!attribute financial_account_token
      #   Token of the financial account the payout is funded from
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute type
      #   Direction of the payment. Stablecoin supports payouts only
      #
      #   @return [Symbol, Lithic::Models::PaymentCreateStablecoinParams::Type]
      required :type, enum: -> { Lithic::PaymentCreateStablecoinParams::Type }

      # @!attribute token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute hold
      #   Optional hold to settle when this payout is initiated
      #
      #   @return [Lithic::Models::PaymentCreateStablecoinParams::Hold, nil]
      optional :hold, -> { Lithic::PaymentCreateStablecoinParams::Hold }

      # @!attribute memo
      #   Memo recorded on the payout. Defaults to `Stablecoin payout on <chain>` when
      #   omitted
      #
      #   @return [String, nil]
      optional :memo, String

      # @!method initialize(amount:, blockchain_recipient_token:, financial_account_token:, type:, token: nil, hold: nil, memo: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::PaymentCreateStablecoinParams} for more details.
      #
      #   @param amount [Integer] Payout amount in cents
      #
      #   @param blockchain_recipient_token [String] Token of the blockchain recipient to send the payout to. The recipient must be i
      #
      #   @param financial_account_token [String] Token of the financial account the payout is funded from
      #
      #   @param type [Symbol, Lithic::Models::PaymentCreateStablecoinParams::Type] Direction of the payment. Stablecoin supports payouts only
      #
      #   @param token [String] Customer-provided token that will serve as an idempotency token. This token will
      #
      #   @param hold [Lithic::Models::PaymentCreateStablecoinParams::Hold] Optional hold to settle when this payout is initiated
      #
      #   @param memo [String] Memo recorded on the payout. Defaults to `Stablecoin payout on <chain>` when omi
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Direction of the payment. Stablecoin supports payouts only
      module Type
        extend Lithic::Internal::Type::Enum

        PAYMENT = :PAYMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Hold < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Token of the hold to settle when this payout is initiated
        #
        #   @return [String]
        required :token, String

        # @!method initialize(token:)
        #   Optional hold to settle when this payout is initiated
        #
        #   @param token [String] Token of the hold to settle when this payout is initiated
      end
    end
  end
end
