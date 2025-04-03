# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#simulate_return
    class PaymentSimulateReturnResponse < Lithic::Internal::Type::BaseModel
      # @!attribute debugging_request_id
      #   Debugging Request Id
      #
      #   @return [String]
      required :debugging_request_id, String

      # @!attribute result
      #   Request Result
      #
      #   @return [Symbol, Lithic::Models::PaymentSimulateReturnResponse::Result]
      required :result, enum: -> { Lithic::Models::PaymentSimulateReturnResponse::Result }

      # @!attribute transaction_event_token
      #   Transaction Event Token
      #
      #   @return [String]
      required :transaction_event_token, String

      # @!parse
      #   # @param debugging_request_id [String]
      #   # @param result [Symbol, Lithic::Models::PaymentSimulateReturnResponse::Result]
      #   # @param transaction_event_token [String]
      #   #
      #   def initialize(debugging_request_id:, result:, transaction_event_token:, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # Request Result
      #
      # @see Lithic::Models::PaymentSimulateReturnResponse#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
