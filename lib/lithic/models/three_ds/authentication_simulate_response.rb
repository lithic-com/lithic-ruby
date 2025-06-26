# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Authentication#simulate
      class AuthenticationSimulateResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the 3DS authentication.
        #
        #   @return [String, nil]
        optional :token, String

        # @!method initialize(token: nil)
        #   @param token [String] Globally unique identifier for the 3DS authentication.
      end
    end
  end
end
