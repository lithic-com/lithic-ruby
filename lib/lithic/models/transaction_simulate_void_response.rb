# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_void
    class TransactionSimulateVoidResponse < Lithic::Internal::Type::BaseModel
      # @!attribute debugging_request_id
      #   Debugging request ID to share with Lithic Support team.
      #
      #   @return [String, nil]
      optional :debugging_request_id, String

      # @!method initialize(debugging_request_id: nil)
      #   @param debugging_request_id [String] Debugging request ID to share with Lithic Support team.
    end
  end
end
