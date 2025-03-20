# frozen_string_literal: true

module Lithic
  module Models
    class PaymentSimulateActionResponse < Lithic::BaseModel
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

      # @!parse
      #   # @param debugging_request_id [String]
      #   # @param result [Symbol, Lithic::Models::PaymentSimulateActionResponse::Result]
      #   # @param transaction_event_token [String]
      #   #
      #   def initialize(debugging_request_id:, result:, transaction_event_token:, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Request Result
      module Result
        extend Lithic::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!
      end
    end
  end
end
