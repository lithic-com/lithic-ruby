# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Authentication#simulate
      class AuthenticationSimulateResponse < Lithic::Internal::Type::BaseModel
        # @!attribute [r] token
        #   A unique token to reference this transaction with later calls to void or clear
        #   the authorization.
        #
        #   @return [String, nil]
        optional :token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :token

        # @!method initialize(token: nil)
        #   @param token [String]
      end
    end
  end
end
