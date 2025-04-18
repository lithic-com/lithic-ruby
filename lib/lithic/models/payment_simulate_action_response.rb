# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#simulate_action
    class PaymentSimulateActionResponse < Lithic::Internal::Type::BaseModel
      # @!attribute debugging_request_id
      #   Debugging Request Id
      #
      #   @return [String]
      required :debugging_request_id, String

      # @!attribute result
      #   Request Result
      #
      #   @return [Symbol, Lithic::Models::PaymentSimulateActionResponse::Result]
      required :result, enum: -> { Lithic::Models::PaymentSimulateActionResponse::Result }

      # @!attribute transaction_event_token
      #   Transaction Event Token
      #
      #   @return [String]
      required :transaction_event_token, String

      # @!method initialize(debugging_request_id:, result:, transaction_event_token:)
      #   @param debugging_request_id [String]
      #   @param result [Symbol, Lithic::Models::PaymentSimulateActionResponse::Result]
      #   @param transaction_event_token [String]

      # Request Result
      #
      # @see Lithic::Models::PaymentSimulateActionResponse#result
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
