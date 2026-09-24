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
      #   fee on behalf of the cardholder. Use an integer value.
      # - `CASH_AMOUNT`: The cash amount of the transaction in minor units (cents). This
      #   represents the amount of cash being withdrawn or advanced. Use an integer
      #   value.
      # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
      #   given authorization. Scores are on a range of 0-999, with 0 representing the
      #   lowest risk and 999 representing the highest risk. For Visa transactions,
      #   where the raw score has a range of 0-99, Lithic will normalize the score by
      #   multiplying the raw score by 10x. Use an integer value.
      # - `CARD_TRANSACTION_COUNT_15M`: The number of transactions on the card in the
      #   trailing 15 minutes before the authorization. Use an integer value.
      # - `CARD_TRANSACTION_COUNT_1H`: The number of transactions on the card in the
      #   trailing hour up and until the authorization. Use an integer value.
      # - `CARD_TRANSACTION_COUNT_24H`: The number of transactions on the card in the
      #   trailing 24 hours up and until the authorization. Use an integer value.
      # - `CARD_DECLINE_COUNT_15M`: The number of declined transactions on the card in
      #   the trailing 15 minutes before the authorization. Use an integer value.
      # - `CARD_DECLINE_COUNT_1H`: The number of declined transactions on the card in
      #   the trailing hour up and until the authorization. Use an integer value.
      # - `CARD_DECLINE_COUNT_24H`: The number of declined transactions on the card in
      #   the trailing 24 hours up and until the authorization. Use an integer value.
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
      # - `TRANSACTION_INITIATOR`: The entity that initiated the transaction indicates
      #   the source of the token. Valid values are `CARDHOLDER`, `MERCHANT`, `UNKNOWN`.
      # - `ADDRESS_MATCH`: Lithic's evaluation result comparing transaction's address
      #   data with the cardholder KYC data if it exists. Valid values are `MATCH`,
      #   `MATCH_ADDRESS_ONLY`, `MATCH_ZIP_ONLY`,`MISMATCH`,`NOT_PRESENT`.
      # - `SERVICE_LOCATION_STATE`: The state/province code (ISO 3166-2) where the
      #   cardholder received the service, e.g. "NY". When a service location is present
      #   in the network data, the service location state is used. Otherwise, falls back
      #   to the card acceptor state.
      # - `SERVICE_LOCATION_POSTAL_CODE`: The postal code where the cardholder received
      #   the service, e.g. "10001". When a service location is present in the network
      #   data, the service location postal code is used. Otherwise, falls back to the
      #   card acceptor postal code.
      # - `CARD_AGE`: The age of the card in seconds at the time of the authorization.
      #   Use an integer value.
      # - `ACCOUNT_AGE`: The age of the account holder's account in seconds at the time
      #   of the authorization. Use an integer value. For programs where Lithic does not
      #   manage or retain account holder data, this attribute does not evaluate.
      # - `AMOUNT_Z_SCORE`: The z-score of the transaction amount relative to the
      #   entity's transaction history. Null if fewer than 30 approved transactions in
      #   the specified window. Requires `parameters.scope` and `parameters.interval`.
      #   Use a decimal value.
      # - `AVG_TRANSACTION_AMOUNT`: The average approved transaction amount for the
      #   entity over the specified window, in cents. Requires `parameters.scope` and
      #   `parameters.interval`. Use a decimal value.
      # - `STDEV_TRANSACTION_AMOUNT`: The standard deviation of approved transaction
      #   amounts for the entity over the specified window, in cents. Null if fewer than
      #   30 approved transactions in the specified window. Requires `parameters.scope`
      #   and `parameters.interval`. Use a decimal value.
      # - `IS_NEW_COUNTRY`: Whether the transaction's merchant country has not been seen
      #   in the entity's transaction history. Valid values are `TRUE`, `FALSE`.
      #   Requires `parameters.scope`.
      # - `IS_NEW_MCC`: Whether the transaction's MCC has not been seen in the entity's
      #   transaction history. Valid values are `TRUE`, `FALSE`. Requires
      #   `parameters.scope`.
      # - `IS_FIRST_TRANSACTION`: Whether this is the first transaction for the entity.
      #   Valid values are `TRUE`, `FALSE`. Requires `parameters.scope`.
      # - `CONSECUTIVE_DECLINES`: The number of consecutive declined transactions for
      #   the entity over the last 30 days (rolling). Requires `parameters.scope`. Not
      #   supported for `BUSINESS_ACCOUNT` scope. Use an integer value.
      # - `TIME_SINCE_LAST_TRANSACTION`: The number of days since the last approved
      #   transaction for the entity, rounded to the nearest whole day. Requires
      #   `parameters.scope`. Use an integer value.
      # - `DISTINCT_COUNTRY_COUNT`: The number of distinct merchant countries seen in
      #   the entity's transaction history. Requires `parameters.scope`. Use an integer
      #   value.
      # - `IS_NEW_MERCHANT`: Whether the card acceptor ID has not been seen in the
      #   card's approved transaction history (capped at the 1000 most recently seen
      #   merchants). Valid values are `TRUE`, `FALSE`. Card-scoped only; no
      #   `parameters` required.
      # - `THREE_DS_SUCCESS_RATE`: The 3DS authentication success rate for the card, as
      #   a percentage from 0.0 to 100.0. Card-scoped only; no `parameters` required.
      #   Use a decimal value.
      # - `TRAVEL_SPEED`: The estimated speed of travel derived from the distance
      #   between the postal code centers of the last card-present transaction and the
      #   current transaction, divided by the elapsed time. Null if there is no prior
      #   card-present transaction, if either postal code cannot be geocoded, or if
      #   elapsed time is zero. Requires `parameters.unit` set to `MPH` or `KPH`. Use a
      #   decimal value.
      # - `DISTANCE_FROM_LAST_TRANSACTION`: The estimated distance between the postal
      #   code centers of the last card-present transaction and the current transaction.
      #   Null if there is no prior card-present transaction or if either postal code
      #   cannot be geocoded. Requires `parameters.unit` set to `MILES` or `KILOMETERS`.
      #   Use a decimal value.
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
        CASH_AMOUNT =
          T.let(
            :CASH_AMOUNT,
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
        CARD_DECLINE_COUNT_15_M =
          T.let(
            :CARD_DECLINE_COUNT_15M,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        CARD_DECLINE_COUNT_1_H =
          T.let(
            :CARD_DECLINE_COUNT_1H,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        CARD_DECLINE_COUNT_24_H =
          T.let(
            :CARD_DECLINE_COUNT_24H,
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
        TRANSACTION_INITIATOR =
          T.let(
            :TRANSACTION_INITIATOR,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        ADDRESS_MATCH =
          T.let(
            :ADDRESS_MATCH,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        SERVICE_LOCATION_STATE =
          T.let(
            :SERVICE_LOCATION_STATE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        SERVICE_LOCATION_POSTAL_CODE =
          T.let(
            :SERVICE_LOCATION_POSTAL_CODE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        CARD_AGE =
          T.let(
            :CARD_AGE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        ACCOUNT_AGE =
          T.let(
            :ACCOUNT_AGE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        AMOUNT_Z_SCORE =
          T.let(
            :AMOUNT_Z_SCORE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        AVG_TRANSACTION_AMOUNT =
          T.let(
            :AVG_TRANSACTION_AMOUNT,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        STDEV_TRANSACTION_AMOUNT =
          T.let(
            :STDEV_TRANSACTION_AMOUNT,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        IS_NEW_COUNTRY =
          T.let(
            :IS_NEW_COUNTRY,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        IS_NEW_MCC =
          T.let(
            :IS_NEW_MCC,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        IS_FIRST_TRANSACTION =
          T.let(
            :IS_FIRST_TRANSACTION,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        CONSECUTIVE_DECLINES =
          T.let(
            :CONSECUTIVE_DECLINES,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        TIME_SINCE_LAST_TRANSACTION =
          T.let(
            :TIME_SINCE_LAST_TRANSACTION,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        DISTINCT_COUNTRY_COUNT =
          T.let(
            :DISTINCT_COUNTRY_COUNT,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        IS_NEW_MERCHANT =
          T.let(
            :IS_NEW_MERCHANT,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        THREE_DS_SUCCESS_RATE =
          T.let(
            :THREE_DS_SUCCESS_RATE,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        TRAVEL_SPEED =
          T.let(
            :TRAVEL_SPEED,
            Lithic::AuthRules::ConditionalAttribute::TaggedSymbol
          )
        DISTANCE_FROM_LAST_TRANSACTION =
          T.let(
            :DISTANCE_FROM_LAST_TRANSACTION,
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
