# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#submit_tfa
    class TokenizationSubmitTfaResponse < Lithic::Internal::Type::BaseModel
      # @!attribute success
      #   Whether the card network accepted the authentication code. A true value does not
      #   mean the tokenization is already active
      #
      #   @return [Boolean]
      required :success, Lithic::Internal::Type::Boolean

      # @!method initialize(success:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TokenizationSubmitTfaResponse} for more details.
      #
      #   @param success [Boolean] Whether the card network accepted the authentication code. A true value does not
    end
  end
end
