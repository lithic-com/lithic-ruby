# typed: strong

module Lithic
  module Models
    class CardholderAuthentication < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardholderAuthentication, Lithic::Internal::AnyHash)
        end

      # Indicates the method used to authenticate the cardholder.
      sig do
        returns(
          Lithic::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
        )
      end
      attr_accessor :authentication_method

      # Indicates the outcome of the 3DS authentication process.
      sig do
        returns(
          Lithic::CardholderAuthentication::AuthenticationResult::TaggedSymbol
        )
      end
      attr_accessor :authentication_result

      # Indicates which party made the 3DS authentication decision.
      sig do
        returns(Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol)
      end
      attr_accessor :decision_made_by

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
      sig do
        returns(Lithic::CardholderAuthentication::LiabilityShift::TaggedSymbol)
      end
      attr_accessor :liability_shift

      # Unique identifier you can use to match a given 3DS authentication (available via
      # the three_ds_authentication.created event webhook) and the transaction. Note
      # that in cases where liability shift does not occur, this token is matched to the
      # transaction on a best-effort basis.
      sig { returns(T.nilable(String)) }
      attr_accessor :three_ds_authentication_token

      sig do
        params(
          authentication_method:
            Lithic::CardholderAuthentication::AuthenticationMethod::OrSymbol,
          authentication_result:
            Lithic::CardholderAuthentication::AuthenticationResult::OrSymbol,
          decision_made_by:
            Lithic::CardholderAuthentication::DecisionMadeBy::OrSymbol,
          liability_shift:
            Lithic::CardholderAuthentication::LiabilityShift::OrSymbol,
          three_ds_authentication_token: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Indicates the method used to authenticate the cardholder.
        authentication_method:,
        # Indicates the outcome of the 3DS authentication process.
        authentication_result:,
        # Indicates which party made the 3DS authentication decision.
        decision_made_by:,
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
        liability_shift:,
        # Unique identifier you can use to match a given 3DS authentication (available via
        # the three_ds_authentication.created event webhook) and the transaction. Note
        # that in cases where liability shift does not occur, this token is matched to the
        # transaction on a best-effort basis.
        three_ds_authentication_token:
      )
      end

      sig do
        override.returns(
          {
            authentication_method:
              Lithic::CardholderAuthentication::AuthenticationMethod::TaggedSymbol,
            authentication_result:
              Lithic::CardholderAuthentication::AuthenticationResult::TaggedSymbol,
            decision_made_by:
              Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol,
            liability_shift:
              Lithic::CardholderAuthentication::LiabilityShift::TaggedSymbol,
            three_ds_authentication_token: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Indicates the method used to authenticate the cardholder.
      module AuthenticationMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::CardholderAuthentication::AuthenticationMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FRICTIONLESS =
          T.let(
            :FRICTIONLESS,
            Lithic::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
          )
        CHALLENGE =
          T.let(
            :CHALLENGE,
            Lithic::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
          )
        NONE =
          T.let(
            :NONE,
            Lithic::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Indicates the outcome of the 3DS authentication process.
      module AuthenticationResult
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::CardholderAuthentication::AuthenticationResult
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ATTEMPTS =
          T.let(
            :ATTEMPTS,
            Lithic::CardholderAuthentication::AuthenticationResult::TaggedSymbol
          )
        DECLINE =
          T.let(
            :DECLINE,
            Lithic::CardholderAuthentication::AuthenticationResult::TaggedSymbol
          )
        NONE =
          T.let(
            :NONE,
            Lithic::CardholderAuthentication::AuthenticationResult::TaggedSymbol
          )
        SUCCESS =
          T.let(
            :SUCCESS,
            Lithic::CardholderAuthentication::AuthenticationResult::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardholderAuthentication::AuthenticationResult::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Indicates which party made the 3DS authentication decision.
      module DecisionMadeBy
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardholderAuthentication::DecisionMadeBy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER_RULES =
          T.let(
            :CUSTOMER_RULES,
            Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
          )
        CUSTOMER_ENDPOINT =
          T.let(
            :CUSTOMER_ENDPOINT,
            Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
          )
        LITHIC_DEFAULT =
          T.let(
            :LITHIC_DEFAULT,
            Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
          )
        LITHIC_RULES =
          T.let(
            :LITHIC_RULES,
            Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
          )
        NETWORK =
          T.let(
            :NETWORK,
            Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
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
      module LiabilityShift
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardholderAuthentication::LiabilityShift)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIABILITY_SHIFT_3DS_AUTHENTICATED =
          T.let(
            :"3DS_AUTHENTICATED",
            Lithic::CardholderAuthentication::LiabilityShift::TaggedSymbol
          )
        TOKEN_AUTHENTICATED =
          T.let(
            :TOKEN_AUTHENTICATED,
            Lithic::CardholderAuthentication::LiabilityShift::TaggedSymbol
          )
        NONE =
          T.let(
            :NONE,
            Lithic::CardholderAuthentication::LiabilityShift::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardholderAuthentication::LiabilityShift::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
