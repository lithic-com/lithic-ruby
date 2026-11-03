# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#select_tfa_method
    class TokenizationSelectTfaMethodResponse < Lithic::Internal::Type::BaseModel
      # @!attribute success
      #   Whether the card network accepted the authentication method selection
      #
      #   @return [Boolean]
      required :success, Lithic::Internal::Type::Boolean

      # @!method initialize(success:)
      #   @param success [Boolean] Whether the card network accepted the authentication method selection
    end
  end
end
