# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_authorization_advice
    class TransactionSimulateAuthorizationAdviceResponse < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   A unique token to reference this transaction.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute debugging_request_id
      #   Debugging request ID to share with Lithic Support team.
      #
      #   @return [String, nil]
      optional :debugging_request_id, String

      # @!method initialize(token: nil, debugging_request_id: nil)
      #   @param token [String]
      #   @param debugging_request_id [String]
    end
  end
end
