# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Authentication#simulate
      class AuthenticationSimulateResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   A unique token to reference this transaction with later calls to void or clear
        #   the authorization.
        #
        #   @return [String, nil]
        optional :token, String

        # @!method initialize(token: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ThreeDS::AuthenticationSimulateResponse} for more details.
        #
        #   @param token [String] A unique token to reference this transaction with later calls to void or clear t
      end
    end
  end
end
