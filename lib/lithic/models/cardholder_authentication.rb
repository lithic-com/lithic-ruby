# frozen_string_literal: true

module Lithic
  module Models
    class CardholderAuthentication < Lithic::Internal::Type::BaseModel
      # @!attribute authentication_method
      #   Indicates the method used to authenticate the cardholder.
      #
      #   @return [Symbol, Lithic::Models::CardholderAuthentication::AuthenticationMethod]
      required :authentication_method, enum: -> { Lithic::CardholderAuthentication::AuthenticationMethod }

      # @!attribute authentication_result
      #   Indicates the outcome of the 3DS authentication process.
      #
      #   @return [Symbol, Lithic::Models::CardholderAuthentication::AuthenticationResult]
      required :authentication_result, enum: -> { Lithic::CardholderAuthentication::AuthenticationResult }

      # @!attribute decision_made_by
      #   Indicates which party made the 3DS authentication decision.
      #
      #   @return [Symbol, Lithic::Models::CardholderAuthentication::DecisionMadeBy]
      required :decision_made_by, enum: -> { Lithic::CardholderAuthentication::DecisionMadeBy }

      # @!attribute liability_shift
      #   Indicates whether chargeback liability shift applies to the transaction.
      #   Possible enum values:
      #
      #   - `3DS_AUTHENTICATED`: The transaction was fully authenticated through a 3-D
      #     Secure flow, chargeback liability shift applies.
      #   - `NONE`: Chargeback liability shift has not shifted to the issuer, i.e. the
      #     merchant is liable.
      #   - `TOKEN_AUTHENTICATED`: The transaction was a tokenized payment with validated
      #     cryptography, possibly recurring. Chargeback liability shift to the issuer
      #     applies.
      #
      #   @return [Symbol, Lithic::Models::CardholderAuthentication::LiabilityShift]
      required :liability_shift, enum: -> { Lithic::CardholderAuthentication::LiabilityShift }

      # @!attribute three_ds_authentication_token
      #   Unique identifier you can use to match a given 3DS authentication (available via
      #   the three_ds_authentication.created event webhook) and the transaction. Note
      #   that in cases where liability shift does not occur, this token is matched to the
      #   transaction on a best-effort basis.
      #
      #   @return [String, nil]
      required :three_ds_authentication_token, String, nil?: true

      # @!method initialize(authentication_method:, authentication_result:, decision_made_by:, liability_shift:, three_ds_authentication_token:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardholderAuthentication} for more details.
      #
      #   @param authentication_method [Symbol, Lithic::Models::CardholderAuthentication::AuthenticationMethod] Indicates the method used to authenticate the cardholder.
      #
      #   @param authentication_result [Symbol, Lithic::Models::CardholderAuthentication::AuthenticationResult] Indicates the outcome of the 3DS authentication process.
      #
      #   @param decision_made_by [Symbol, Lithic::Models::CardholderAuthentication::DecisionMadeBy] Indicates which party made the 3DS authentication decision.
      #
      #   @param liability_shift [Symbol, Lithic::Models::CardholderAuthentication::LiabilityShift] Indicates whether chargeback liability shift applies to the transaction. Possibl
      #
      #   @param three_ds_authentication_token [String, nil] Unique identifier you can use to match a given 3DS authentication (available via

      # Indicates the method used to authenticate the cardholder.
      #
      # @see Lithic::Models::CardholderAuthentication#authentication_method
      module AuthenticationMethod
        extend Lithic::Internal::Type::Enum

        FRICTIONLESS = :FRICTIONLESS
        CHALLENGE = :CHALLENGE
        NONE = :NONE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Indicates the outcome of the 3DS authentication process.
      #
      # @see Lithic::Models::CardholderAuthentication#authentication_result
      module AuthenticationResult
        extend Lithic::Internal::Type::Enum

        ATTEMPTS = :ATTEMPTS
        DECLINE = :DECLINE
        NONE = :NONE
        SUCCESS = :SUCCESS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Indicates which party made the 3DS authentication decision.
      #
      # @see Lithic::Models::CardholderAuthentication#decision_made_by
      module DecisionMadeBy
        extend Lithic::Internal::Type::Enum

        CUSTOMER_RULES = :CUSTOMER_RULES
        CUSTOMER_ENDPOINT = :CUSTOMER_ENDPOINT
        LITHIC_DEFAULT = :LITHIC_DEFAULT
        LITHIC_RULES = :LITHIC_RULES
        NETWORK = :NETWORK
        UNKNOWN = :UNKNOWN

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Indicates whether chargeback liability shift applies to the transaction.
      # Possible enum values:
      #
      # - `3DS_AUTHENTICATED`: The transaction was fully authenticated through a 3-D
      #   Secure flow, chargeback liability shift applies.
      # - `NONE`: Chargeback liability shift has not shifted to the issuer, i.e. the
      #   merchant is liable.
      # - `TOKEN_AUTHENTICATED`: The transaction was a tokenized payment with validated
      #   cryptography, possibly recurring. Chargeback liability shift to the issuer
      #   applies.
      #
      # @see Lithic::Models::CardholderAuthentication#liability_shift
      module LiabilityShift
        extend Lithic::Internal::Type::Enum

        LIABILITY_SHIFT_3DS_AUTHENTICATED = :"3DS_AUTHENTICATED"
        TOKEN_AUTHENTICATED = :TOKEN_AUTHENTICATED
        NONE = :NONE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
