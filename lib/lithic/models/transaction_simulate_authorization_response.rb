# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_authorization
    class TransactionSimulateAuthorizationResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] token
      #   A unique token to reference this transaction with later calls to void or clear
      #   the authorization.
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

      # @!parse
      #   # @param token [String]
      #   # @param debugging_request_id [String]
      #   #
      #   def initialize(token: nil, debugging_request_id: nil, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
