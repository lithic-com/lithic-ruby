# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#return_
    class PaymentReturnResponse < Lithic::Internal::Type::BaseModel
      # @!attribute result
      #   Transaction result
      #
      #   @return [Symbol, Lithic::Models::PaymentReturnResponse::Result]
      required :result, enum: -> { Lithic::Models::PaymentReturnResponse::Result }

      # @!attribute transaction_group_uuid
      #   Globally unique identifier for the transaction group
      #
      #   @return [String]
      required :transaction_group_uuid, String

      # @!attribute transaction_uuid
      #   Globally unique identifier for the transaction
      #
      #   @return [String]
      required :transaction_uuid, String

      # @!method initialize(result:, transaction_group_uuid:, transaction_uuid:)
      #   Response from ACH operations including returns
      #
      #   @param result [Symbol, Lithic::Models::PaymentReturnResponse::Result] Transaction result
      #
      #   @param transaction_group_uuid [String] Globally unique identifier for the transaction group
      #
      #   @param transaction_uuid [String] Globally unique identifier for the transaction

      # Transaction result
      #
      # @see Lithic::Models::PaymentReturnResponse#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
