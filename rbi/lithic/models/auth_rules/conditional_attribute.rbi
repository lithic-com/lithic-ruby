# typed: strong

module Lithic
  module Models
    module AuthRules
      # The attribute to target.
      #
      # The following attributes may be targeted:
      #
      # - `MCC`: A four-digit number listed in ISO 18245. An MCC is used to classify a
      #   business by the types of goods or services it provides.
      # - `COUNTRY`: Country of entity of card acceptor. Possible values are: (1) all
      #   ISO 3166-1 alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for
      #   Netherlands Antilles.
      # - `CURRENCY`: 3-character alphabetic ISO 4217 code for the merchant currency of
      #   the transaction.
      # - `MERCHANT_ID`: Unique alphanumeric identifier for the payment card acceptor
      #   (merchant).
      # - `DESCRIPTOR`: Short description of card acceptor.
      # - `LIABILITY_SHIFT`: Indicates whether chargeback liability shift to the issuer
      #   applies to the transaction. Valid values are `NONE`, `3DS_AUTHENTICATED`, or
      #   `TOKEN_AUTHENTICATED`.
      # - `PAN_ENTRY_MODE`: The method by which the cardholder's primary account number
      #   (PAN) was entered. Valid values are `AUTO_ENTRY`, `BAR_CODE`, `CONTACTLESS`,
      #   `ECOMMERCE`, `ERROR_KEYED`, `ERROR_MAGNETIC_STRIPE`, `ICC`, `KEY_ENTERED`,
      #   `MAGNETIC_STRIPE`, `MANUAL`, `OCR`, `SECURE_CARDLESS`, `UNSPECIFIED`,
      #   `UNKNOWN`, `CREDENTIAL_ON_FILE`, or `ECOMMERCE`.
      # - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
      #   fee field in the settlement/cardholder billing currency. This is the amount
      #   the issuer should authorize against unless the issuer is paying the acquirer
      #   fee on behalf of the cardholder.
      # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
      #   given authorization. Scores are on a range of 0-999, with 0 representing the
      #   lowest risk and 999 representing the highest risk. For Visa transactions,
      #   where the raw score has a range of 0-99, Lithic will normalize the score by
      #   multiplying the raw score by 10x.
      # - `CARD_TRANSACTION_COUNT_15M`: The number of transactions on the card in the
      #   trailing 15 minutes before the authorization.
      # - `CARD_TRANSACTION_COUNT_1H`: The number of transactions on the card in the
      #   trailing hour up and until the authorization.
      # - `CARD_TRANSACTION_COUNT_24H`: The number of transactions on the card in the
      #   trailing 24 hours up and until the authorization.
      # - `CARD_STATE`: The current state of the card associated with the transaction.
      #   Valid values are `CLOSED`, `OPEN`, `PAUSED`, `PENDING_ACTIVATION`,
      #   `PENDING_FULFILLMENT`.
      # - `PIN_ENTERED`: Indicates whether a PIN was entered during the transaction.
      #   Valid values are `TRUE`, `FALSE`.
      # - `PIN_STATUS`: The current state of card's PIN. Valid values are `NOT_SET`,
      #   `OK`, `BLOCKED`.
      # - `WALLET_TYPE`: For transactions using a digital wallet token, indicates the
      #   source of the token. Valid values are `APPLE_PAY`, `GOOGLE_PAY`,
      #   `SAMSUNG_PAY`, `MASTERPASS`, `MERCHANT`, `OTHER`, `NONE`.
      module ConditionalAttribute
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AuthRules::ConditionalAttribute)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MCC = T.let(:MCC, Lithic::AuthRules::ConditionalAttribute::TaggedSymbol)
        COUNTRY =
          T.let(:COUNTRY, Lithic::AuthRules::ConditionalAttribute::TaggedSymbol)
        CURRENCY =
          T.let(
            :CURRENCY,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        MERCHANT_ID =
          T.let(
            :MERCHANT_ID,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        DESCRIPTOR =
          T.let(
            :DESCRIPTOR,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        LIABILITY_SHIFT =
          T.let(
            :LIABILITY_SHIFT,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        PAN_ENTRY_MODE =
          T.let(
            :PAN_ENTRY_MODE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        TRANSACTION_AMOUNT =
          T.let(
            :TRANSACTION_AMOUNT,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        RISK_SCORE =
          T.let(
            :RISK_SCORE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        CARD_TRANSACTION_COUNT_15_M =
          T.let(
            :CARD_TRANSACTION_COUNT_15M,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        CARD_TRANSACTION_COUNT_1_H =
          T.let(
            :CARD_TRANSACTION_COUNT_1H,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        CARD_TRANSACTION_COUNT_24_H =
          T.let(
            :CARD_TRANSACTION_COUNT_24H,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        CARD_STATE =
          T.let(
            :CARD_STATE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        PIN_ENTERED =
          T.let(
            :PIN_ENTERED,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        PIN_STATUS =
          T.let(
            :PIN_STATUS,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        WALLET_TYPE =
          T.let(
            :WALLET_TYPE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::AuthRules::ConditionalAttribute::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
