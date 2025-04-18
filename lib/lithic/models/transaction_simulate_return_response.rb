# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_return
    class TransactionSimulateReturnResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] token
      #   A unique token to reference this transaction.
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] debugging_request_id
      #   Debugging request ID to share with Lithic Support team.
      #
      #   @return [String, nil]
      optional :debugging_request_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :debugging_request_id

      # @!method initialize(token: nil, debugging_request_id: nil)
      #   @param token [String]
      #   @param debugging_request_id [String]
    end
  end
end
