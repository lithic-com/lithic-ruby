# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_void
    class TransactionSimulateVoidResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] debugging_request_id
      #   Debugging request ID to share with Lithic Support team.
      #
      #   @return [String, nil]
      optional :debugging_request_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :debugging_request_id

      # @!parse
      #   # @param debugging_request_id [String]
      #   #
      #   def initialize(debugging_request_id: nil, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
