# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalAuthorizationAdjustmentParameters < Lithic::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The hold adjustment to apply if the conditions are met
        #
        #   @return [Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment]
        required :adjustment, -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment }

        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition>]
        required :conditions,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition] }

        # @!method initialize(adjustment:, conditions:)
        #   @param adjustment [Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment] The hold adjustment to apply if the conditions are met
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition>]

        # @see Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters#adjustment
        class Adjustment < Lithic::Internal::Type::BaseModel
          # @!attribute mode
          #   The mode of the hold adjustment, determining how the value is interpreted:
          #
          #   - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
          #   - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
          #     represents a 10% increase, 0 represents no change.
          #   - `ADD_AMOUNT`: The value is added to the hold amount in cents.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode]
          required :mode,
                   enum: -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode }

          # @!attribute type
          #   The type of adjustment to apply
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type]
          required :type,
                   enum: -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type }

          # @!attribute value
          #   The value used for the hold adjustment, interpreted based on the mode
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(mode:, type:, value:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment}
          #   for more details.
          #
          #   The hold adjustment to apply if the conditions are met
          #
          #   @param mode [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode] The mode of the hold adjustment, determining how the value is interpreted:
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type] The type of adjustment to apply
          #
          #   @param value [Integer] The value used for the hold adjustment, interpreted based on the mode

          # The mode of the hold adjustment, determining how the value is interpreted:
          #
          # - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
          # - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
          #   represents a 10% increase, 0 represents no change.
          # - `ADD_AMOUNT`: The value is added to the hold amount in cents.
          #
          # @see Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment#mode
          module Mode
            extend Lithic::Internal::Type::Enum

            REPLACE_WITH_AMOUNT = :REPLACE_WITH_AMOUNT
            ADD_PERCENTAGE = :ADD_PERCENTAGE
            ADD_AMOUNT = :ADD_AMOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The type of adjustment to apply
          #
          # @see Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment#type
          module Type
            extend Lithic::Internal::Type::Enum

            HOLD_ADJUSTMENT = :HOLD_ADJUSTMENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Condition < Lithic::Internal::Type::BaseModel
          # @!attribute attribute
          #   The attribute to target.
          #
          #   The following attributes may be targeted:
          #
          #   - `MCC`: A four-digit number listed in ISO 18245. An MCC is used to classify a
          #     business by the types of goods or services it provides.
          #   - `COUNTRY`: Country of entity of card acceptor. Possible values are: (1) all
          #     ISO 3166-1 alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for
          #     Netherlands Antilles.
          #   - `CURRENCY`: 3-character alphabetic ISO 4217 code for the merchant currency of
          #     the transaction.
          #   - `MERCHANT_ID`: Unique alphanumeric identifier for the payment card acceptor
          #     (merchant).
          #   - `DESCRIPTOR`: Short description of card acceptor.
          #   - `LIABILITY_SHIFT`: Indicates whether chargeback liability shift to the issuer
          #     applies to the transaction. Valid values are `NONE`, `3DS_AUTHENTICATED`, or
          #     `TOKEN_AUTHENTICATED`.
          #   - `PAN_ENTRY_MODE`: The method by which the cardholder's primary account number
          #     (PAN) was entered. Valid values are `AUTO_ENTRY`, `BAR_CODE`, `CONTACTLESS`,
          #     `ECOMMERCE`, `ERROR_KEYED`, `ERROR_MAGNETIC_STRIPE`, `ICC`, `KEY_ENTERED`,
          #     `MAGNETIC_STRIPE`, `MANUAL`, `OCR`, `SECURE_CARDLESS`, `UNSPECIFIED`,
          #     `UNKNOWN`, `CREDENTIAL_ON_FILE`, or `ECOMMERCE`.
          #   - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
          #     fee field in the settlement/cardholder billing currency. This is the amount
          #     the issuer should authorize against unless the issuer is paying the acquirer
          #     fee on behalf of the cardholder. Use an integer value.
          #   - `CASH_AMOUNT`: The cash amount of the transaction in minor units (cents). This
          #     represents the amount of cash being withdrawn or advanced. Use an integer
          #     value.
          #   - `RISK_SCORE`: Network-provided score assessing risk level associated with a
          #     given authorization. Scores are on a range of 0-999, with 0 representing the
          #     lowest risk and 999 representing the highest risk. For Visa transactions,
          #     where the raw score has a range of 0-99, Lithic will normalize the score by
          #     multiplying the raw score by 10x. Use an integer value.
          #   - `CARD_TRANSACTION_COUNT_15M`: The number of transactions on the card in the
          #     trailing 15 minutes before the authorization. Use an integer value.
          #   - `CARD_TRANSACTION_COUNT_1H`: The number of transactions on the card in the
          #     trailing hour up and until the authorization. Use an integer value.
          #   - `CARD_TRANSACTION_COUNT_24H`: The number of transactions on the card in the
          #     trailing 24 hours up and until the authorization. Use an integer value.
          #   - `CARD_DECLINE_COUNT_15M`: The number of declined transactions on the card in
          #     the trailing 15 minutes before the authorization. Use an integer value.
          #   - `CARD_DECLINE_COUNT_1H`: The number of declined transactions on the card in
          #     the trailing hour up and until the authorization. Use an integer value.
          #   - `CARD_DECLINE_COUNT_24H`: The number of declined transactions on the card in
          #     the trailing 24 hours up and until the authorization. Use an integer value.
          #   - `CARD_STATE`: The current state of the card associated with the transaction.
          #     Valid values are `CLOSED`, `OPEN`, `PAUSED`, `PENDING_ACTIVATION`,
          #     `PENDING_FULFILLMENT`.
          #   - `PIN_ENTERED`: Indicates whether a PIN was entered during the transaction.
          #     Valid values are `TRUE`, `FALSE`.
          #   - `PIN_STATUS`: The current state of card's PIN. Valid values are `NOT_SET`,
          #     `OK`, `BLOCKED`.
          #   - `WALLET_TYPE`: For transactions using a digital wallet token, indicates the
          #     source of the token. Valid values are `APPLE_PAY`, `GOOGLE_PAY`,
          #     `SAMSUNG_PAY`, `MASTERPASS`, `MERCHANT`, `OTHER`, `NONE`.
          #   - `TRANSACTION_INITIATOR`: The entity that initiated the transaction indicates
          #     the source of the token. Valid values are `CARDHOLDER`, `MERCHANT`, `UNKNOWN`.
          #   - `ADDRESS_MATCH`: Lithic's evaluation result comparing transaction's address
          #     data with the cardholder KYC data if it exists. Valid values are `MATCH`,
          #     `MATCH_ADDRESS_ONLY`, `MATCH_ZIP_ONLY`,`MISMATCH`,`NOT_PRESENT`.
          #   - `SERVICE_LOCATION_STATE`: The state/province code (ISO 3166-2) where the
          #     cardholder received the service, e.g. "NY". When a service location is present
          #     in the network data, the service location state is used. Otherwise, falls back
          #     to the card acceptor state.
          #   - `SERVICE_LOCATION_POSTAL_CODE`: The postal code where the cardholder received
          #     the service, e.g. "10001". When a service location is present in the network
          #     data, the service location postal code is used. Otherwise, falls back to the
          #     card acceptor postal code.
          #   - `CARD_AGE`: The age of the card in seconds at the time of the authorization.
          #     Use an integer value.
          #   - `ACCOUNT_AGE`: The age of the account holder's account in seconds at the time
          #     of the authorization. Use an integer value. For programs where Lithic does not
          #     manage or retain account holder data, this attribute does not evaluate.
          #   - `AMOUNT_Z_SCORE`: The z-score of the transaction amount relative to the
          #     entity's transaction history. Null if fewer than 30 approved transactions in
          #     the specified window. Requires `parameters.scope` and `parameters.interval`.
          #     Use a decimal value.
          #   - `AVG_TRANSACTION_AMOUNT`: The average approved transaction amount for the
          #     entity over the specified window, in cents. Requires `parameters.scope` and
          #     `parameters.interval`. Use a decimal value.
          #   - `STDEV_TRANSACTION_AMOUNT`: The standard deviation of approved transaction
          #     amounts for the entity over the specified window, in cents. Null if fewer than
          #     30 approved transactions in the specified window. Requires `parameters.scope`
          #     and `parameters.interval`. Use a decimal value.
          #   - `IS_NEW_COUNTRY`: Whether the transaction's merchant country has not been seen
          #     in the entity's transaction history. Valid values are `TRUE`, `FALSE`.
          #     Requires `parameters.scope`.
          #   - `IS_NEW_MCC`: Whether the transaction's MCC has not been seen in the entity's
          #     transaction history. Valid values are `TRUE`, `FALSE`. Requires
          #     `parameters.scope`.
          #   - `IS_FIRST_TRANSACTION`: Whether this is the first transaction for the entity.
          #     Valid values are `TRUE`, `FALSE`. Requires `parameters.scope`.
          #   - `CONSECUTIVE_DECLINES`: The number of consecutive declined transactions for
          #     the entity over the last 30 days (rolling). Requires `parameters.scope`. Not
          #     supported for `BUSINESS_ACCOUNT` scope. Use an integer value.
          #   - `TIME_SINCE_LAST_TRANSACTION`: The number of days since the last approved
          #     transaction for the entity, rounded to the nearest whole day. Requires
          #     `parameters.scope`. Use an integer value.
          #   - `DISTINCT_COUNTRY_COUNT`: The number of distinct merchant countries seen in
          #     the entity's transaction history. Requires `parameters.scope`. Use an integer
          #     value.
          #   - `IS_NEW_MERCHANT`: Whether the card acceptor ID has not been seen in the
          #     card's approved transaction history (capped at the 1000 most recently seen
          #     merchants). Valid values are `TRUE`, `FALSE`. Card-scoped only; no
          #     `parameters` required.
          #   - `THREE_DS_SUCCESS_RATE`: The 3DS authentication success rate for the card, as
          #     a percentage from 0.0 to 100.0. Card-scoped only; no `parameters` required.
          #     Use a decimal value.
          #   - `TRAVEL_SPEED`: The estimated speed of travel derived from the distance
          #     between the postal code centers of the last card-present transaction and the
          #     current transaction, divided by the elapsed time. Null if there is no prior
          #     card-present transaction, if either postal code cannot be geocoded, or if
          #     elapsed time is zero. Requires `parameters.unit` set to `MPH` or `KPH`. Use a
          #     decimal value.
          #   - `DISTANCE_FROM_LAST_TRANSACTION`: The estimated distance between the postal
          #     code centers of the last card-present transaction and the current transaction.
          #     Null if there is no prior card-present transaction or if either postal code
          #     cannot be geocoded. Requires `parameters.unit` set to `MILES` or `KILOMETERS`.
          #     Use a decimal value.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute]
          required :attribute,
                   enum: -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute }

          # @!attribute operation
          #   The operation to apply to the attribute
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalOperation]
          required :operation, enum: -> { Lithic::AuthRules::ConditionalOperation }

          # @!attribute value
          #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          #
          #   @return [String, Integer, Float, Array<String>, Time]
          required :value, union: -> { Lithic::AuthRules::ConditionalValue }

          # @!attribute parameters
          #   Additional parameters for certain attributes. Required when `attribute` is one
          #   of `AMOUNT_Z_SCORE`, `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`,
          #   `IS_NEW_COUNTRY`, `IS_NEW_MCC`, `IS_FIRST_TRANSACTION`, `CONSECUTIVE_DECLINES`,
          #   `TIME_SINCE_LAST_TRANSACTION`, or `DISTINCT_COUNTRY_COUNT` (require `scope`); or
          #   `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION` (require `unit`). Not used
          #   for other attributes.
          #
          #   @return [Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters, nil]
          optional :parameters,
                   -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters }

          # @!method initialize(attribute:, operation:, value:, parameters: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition}
          #   for more details.
          #
          #   @param attribute [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute] The attribute to target.
          #
          #   @param operation [Symbol, Lithic::Models::AuthRules::ConditionalOperation] The operation to apply to the attribute
          #
          #   @param value [String, Integer, Float, Array<String>, Time] A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters] Additional parameters for certain attributes. Required when `attribute` is one o

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
          #
          # @see Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition#attribute
          module Attribute
            extend Lithic::Internal::Type::Enum

            MCC = :MCC
            COUNTRY = :COUNTRY
            CURRENCY = :CURRENCY
            MERCHANT_ID = :MERCHANT_ID
            DESCRIPTOR = :DESCRIPTOR
            LIABILITY_SHIFT = :LIABILITY_SHIFT
            PAN_ENTRY_MODE = :PAN_ENTRY_MODE
            TRANSACTION_AMOUNT = :TRANSACTION_AMOUNT
            CASH_AMOUNT = :CASH_AMOUNT
            RISK_SCORE = :RISK_SCORE
            CARD_TRANSACTION_COUNT_15_M = :CARD_TRANSACTION_COUNT_15M
            CARD_TRANSACTION_COUNT_1_H = :CARD_TRANSACTION_COUNT_1H
            CARD_TRANSACTION_COUNT_24_H = :CARD_TRANSACTION_COUNT_24H
            CARD_DECLINE_COUNT_15_M = :CARD_DECLINE_COUNT_15M
            CARD_DECLINE_COUNT_1_H = :CARD_DECLINE_COUNT_1H
            CARD_DECLINE_COUNT_24_H = :CARD_DECLINE_COUNT_24H
            CARD_STATE = :CARD_STATE
            PIN_ENTERED = :PIN_ENTERED
            PIN_STATUS = :PIN_STATUS
            WALLET_TYPE = :WALLET_TYPE
            TRANSACTION_INITIATOR = :TRANSACTION_INITIATOR
            ADDRESS_MATCH = :ADDRESS_MATCH
            SERVICE_LOCATION_STATE = :SERVICE_LOCATION_STATE
            SERVICE_LOCATION_POSTAL_CODE = :SERVICE_LOCATION_POSTAL_CODE
            CARD_AGE = :CARD_AGE
            ACCOUNT_AGE = :ACCOUNT_AGE
            AMOUNT_Z_SCORE = :AMOUNT_Z_SCORE
            AVG_TRANSACTION_AMOUNT = :AVG_TRANSACTION_AMOUNT
            STDEV_TRANSACTION_AMOUNT = :STDEV_TRANSACTION_AMOUNT
            IS_NEW_COUNTRY = :IS_NEW_COUNTRY
            IS_NEW_MCC = :IS_NEW_MCC
            IS_FIRST_TRANSACTION = :IS_FIRST_TRANSACTION
            CONSECUTIVE_DECLINES = :CONSECUTIVE_DECLINES
            TIME_SINCE_LAST_TRANSACTION = :TIME_SINCE_LAST_TRANSACTION
            DISTINCT_COUNTRY_COUNT = :DISTINCT_COUNTRY_COUNT
            IS_NEW_MERCHANT = :IS_NEW_MERCHANT
            THREE_DS_SUCCESS_RATE = :THREE_DS_SUCCESS_RATE
            TRAVEL_SPEED = :TRAVEL_SPEED
            DISTANCE_FROM_LAST_TRANSACTION = :DISTANCE_FROM_LAST_TRANSACTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition#parameters
          class Parameters < Lithic::Internal::Type::BaseModel
            # @!attribute interval
            #   The time window for statistical attributes (`AMOUNT_Z_SCORE`,
            #   `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`). Use `LIFETIME` for
            #   all-time history or a specific window (`7D`, `30D`, `90D`).
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval, nil]
            optional :interval,
                     enum: -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval }

            # @!attribute scope
            #   The entity scope to evaluate the attribute against.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope, nil]
            optional :scope,
                     enum: -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope }

            # @!attribute unit
            #   The unit for impossible travel attributes. Required when `attribute` is
            #   `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION`.
            #
            #   For `TRAVEL_SPEED`: `MPH` (miles per hour) or `KPH` (kilometers per hour).
            #
            #   For `DISTANCE_FROM_LAST_TRANSACTION`: `MILES` or `KILOMETERS`.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit, nil]
            optional :unit,
                     enum: -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit }

            # @!method initialize(interval: nil, scope: nil, unit: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters}
            #   for more details.
            #
            #   Additional parameters for certain attributes. Required when `attribute` is one
            #   of `AMOUNT_Z_SCORE`, `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`,
            #   `IS_NEW_COUNTRY`, `IS_NEW_MCC`, `IS_FIRST_TRANSACTION`, `CONSECUTIVE_DECLINES`,
            #   `TIME_SINCE_LAST_TRANSACTION`, or `DISTINCT_COUNTRY_COUNT` (require `scope`); or
            #   `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION` (require `unit`). Not used
            #   for other attributes.
            #
            #   @param interval [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval] The time window for statistical attributes (`AMOUNT_Z_SCORE`, `AVG_TRANSACTION_A
            #
            #   @param scope [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope] The entity scope to evaluate the attribute against.
            #
            #   @param unit [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit] The unit for impossible travel attributes. Required when `attribute` is
            #   `TRAVEL\_

            # The time window for statistical attributes (`AMOUNT_Z_SCORE`,
            # `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`). Use `LIFETIME` for
            # all-time history or a specific window (`7D`, `30D`, `90D`).
            #
            # @see Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters#interval
            module Interval
              extend Lithic::Internal::Type::Enum

              LIFETIME = :LIFETIME
              INTERVAL_7_D = :"7D"
              INTERVAL_30_D = :"30D"
              INTERVAL_90_D = :"90D"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The entity scope to evaluate the attribute against.
            #
            # @see Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters#scope
            module Scope
              extend Lithic::Internal::Type::Enum

              CARD = :CARD
              ACCOUNT = :ACCOUNT
              BUSINESS_ACCOUNT = :BUSINESS_ACCOUNT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The unit for impossible travel attributes. Required when `attribute` is
            # `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION`.
            #
            # For `TRAVEL_SPEED`: `MPH` (miles per hour) or `KPH` (kilometers per hour).
            #
            # For `DISTANCE_FROM_LAST_TRANSACTION`: `MILES` or `KILOMETERS`.
            #
            # @see Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters#unit
            module Unit
              extend Lithic::Internal::Type::Enum

              MPH = :MPH
              KPH = :KPH
              MILES = :MILES
              KILOMETERS = :KILOMETERS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
