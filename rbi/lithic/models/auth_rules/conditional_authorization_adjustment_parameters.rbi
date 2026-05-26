# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalAuthorizationAdjustmentParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters,
              Lithic::Internal::AnyHash
            )
          end

        # The hold adjustment to apply if the conditions are met
        sig do
          returns(
            Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment
          )
        end
        attr_reader :adjustment

        sig do
          params(
            adjustment:
              Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::OrHash
          ).void
        end
        attr_writer :adjustment

        sig do
          returns(
            T::Array[
              Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition
            ]
          )
        end
        attr_accessor :conditions

        sig do
          params(
            adjustment:
              Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::OrHash,
            conditions:
              T::Array[
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The hold adjustment to apply if the conditions are met
          adjustment:,
          conditions:
        )
        end

        sig do
          override.returns(
            {
              adjustment:
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment,
              conditions:
                T::Array[
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition
                ]
            }
          )
        end
        def to_hash
        end

        class Adjustment < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment,
                Lithic::Internal::AnyHash
              )
            end

          # The mode of the hold adjustment, determining how the value is interpreted:
          #
          # - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
          # - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
          #   represents a 10% increase, 0 represents no change.
          # - `ADD_AMOUNT`: The value is added to the hold amount in cents.
          sig do
            returns(
              Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode::OrSymbol
            )
          end
          attr_accessor :mode

          # The type of adjustment to apply
          sig do
            returns(
              Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type::OrSymbol
            )
          end
          attr_accessor :type

          # The value used for the hold adjustment, interpreted based on the mode
          sig { returns(Integer) }
          attr_accessor :value

          # The hold adjustment to apply if the conditions are met
          sig do
            params(
              mode:
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode::OrSymbol,
              type:
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The mode of the hold adjustment, determining how the value is interpreted:
            #
            # - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
            # - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
            #   represents a 10% increase, 0 represents no change.
            # - `ADD_AMOUNT`: The value is added to the hold amount in cents.
            mode:,
            # The type of adjustment to apply
            type:,
            # The value used for the hold adjustment, interpreted based on the mode
            value:
          )
          end

          sig do
            override.returns(
              {
                mode:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode::OrSymbol,
                type:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type::OrSymbol,
                value: Integer
              }
            )
          end
          def to_hash
          end

          # The mode of the hold adjustment, determining how the value is interpreted:
          #
          # - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
          # - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
          #   represents a 10% increase, 0 represents no change.
          # - `ADD_AMOUNT`: The value is added to the hold amount in cents.
          module Mode
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REPLACE_WITH_AMOUNT =
              T.let(
                :REPLACE_WITH_AMOUNT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode::TaggedSymbol
              )
            ADD_PERCENTAGE =
              T.let(
                :ADD_PERCENTAGE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode::TaggedSymbol
              )
            ADD_AMOUNT =
              T.let(
                :ADD_AMOUNT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Mode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The type of adjustment to apply
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HOLD_ADJUSTMENT =
              T.let(
                :HOLD_ADJUSTMENT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Adjustment::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Condition < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition,
                Lithic::Internal::AnyHash
              )
            end

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
          sig do
            returns(
              Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::OrSymbol
            )
          end
          attr_accessor :attribute

          # The operation to apply to the attribute
          sig { returns(Lithic::AuthRules::ConditionalOperation::OrSymbol) }
          attr_accessor :operation

          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          sig { returns(Lithic::AuthRules::ConditionalValue::Variants) }
          attr_accessor :value

          # Additional parameters for certain attributes. Required when `attribute` is one
          # of `AMOUNT_Z_SCORE`, `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`,
          # `IS_NEW_COUNTRY`, `IS_NEW_MCC`, `IS_FIRST_TRANSACTION`, `CONSECUTIVE_DECLINES`,
          # `TIME_SINCE_LAST_TRANSACTION`, or `DISTINCT_COUNTRY_COUNT` (require `scope`); or
          # `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION` (require `unit`). Not used
          # for other attributes.
          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters
              )
            )
          end
          attr_reader :parameters

          sig do
            params(
              parameters:
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::OrHash
            ).void
          end
          attr_writer :parameters

          sig do
            params(
              attribute:
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::OrSymbol,
              operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
              value: Lithic::AuthRules::ConditionalValue::Variants,
              parameters:
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
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
            attribute:,
            # The operation to apply to the attribute
            operation:,
            # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
            value:,
            # Additional parameters for certain attributes. Required when `attribute` is one
            # of `AMOUNT_Z_SCORE`, `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`,
            # `IS_NEW_COUNTRY`, `IS_NEW_MCC`, `IS_FIRST_TRANSACTION`, `CONSECUTIVE_DECLINES`,
            # `TIME_SINCE_LAST_TRANSACTION`, or `DISTINCT_COUNTRY_COUNT` (require `scope`); or
            # `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION` (require `unit`). Not used
            # for other attributes.
            parameters: nil
          )
          end

          sig do
            override.returns(
              {
                attribute:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::OrSymbol,
                operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
                value: Lithic::AuthRules::ConditionalValue::Variants,
                parameters:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters
              }
            )
          end
          def to_hash
          end

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
          module Attribute
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MCC =
              T.let(
                :MCC,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            COUNTRY =
              T.let(
                :COUNTRY,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :CURRENCY,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            MERCHANT_ID =
              T.let(
                :MERCHANT_ID,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            DESCRIPTOR =
              T.let(
                :DESCRIPTOR,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            LIABILITY_SHIFT =
              T.let(
                :LIABILITY_SHIFT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            PAN_ENTRY_MODE =
              T.let(
                :PAN_ENTRY_MODE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            TRANSACTION_AMOUNT =
              T.let(
                :TRANSACTION_AMOUNT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CASH_AMOUNT =
              T.let(
                :CASH_AMOUNT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            RISK_SCORE =
              T.let(
                :RISK_SCORE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_TRANSACTION_COUNT_15_M =
              T.let(
                :CARD_TRANSACTION_COUNT_15M,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_TRANSACTION_COUNT_1_H =
              T.let(
                :CARD_TRANSACTION_COUNT_1H,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_TRANSACTION_COUNT_24_H =
              T.let(
                :CARD_TRANSACTION_COUNT_24H,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_DECLINE_COUNT_15_M =
              T.let(
                :CARD_DECLINE_COUNT_15M,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_DECLINE_COUNT_1_H =
              T.let(
                :CARD_DECLINE_COUNT_1H,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_DECLINE_COUNT_24_H =
              T.let(
                :CARD_DECLINE_COUNT_24H,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_STATE =
              T.let(
                :CARD_STATE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            PIN_ENTERED =
              T.let(
                :PIN_ENTERED,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            PIN_STATUS =
              T.let(
                :PIN_STATUS,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            WALLET_TYPE =
              T.let(
                :WALLET_TYPE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            TRANSACTION_INITIATOR =
              T.let(
                :TRANSACTION_INITIATOR,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            ADDRESS_MATCH =
              T.let(
                :ADDRESS_MATCH,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            SERVICE_LOCATION_STATE =
              T.let(
                :SERVICE_LOCATION_STATE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            SERVICE_LOCATION_POSTAL_CODE =
              T.let(
                :SERVICE_LOCATION_POSTAL_CODE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_AGE =
              T.let(
                :CARD_AGE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            ACCOUNT_AGE =
              T.let(
                :ACCOUNT_AGE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            AMOUNT_Z_SCORE =
              T.let(
                :AMOUNT_Z_SCORE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            AVG_TRANSACTION_AMOUNT =
              T.let(
                :AVG_TRANSACTION_AMOUNT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            STDEV_TRANSACTION_AMOUNT =
              T.let(
                :STDEV_TRANSACTION_AMOUNT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            IS_NEW_COUNTRY =
              T.let(
                :IS_NEW_COUNTRY,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            IS_NEW_MCC =
              T.let(
                :IS_NEW_MCC,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            IS_FIRST_TRANSACTION =
              T.let(
                :IS_FIRST_TRANSACTION,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            CONSECUTIVE_DECLINES =
              T.let(
                :CONSECUTIVE_DECLINES,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            TIME_SINCE_LAST_TRANSACTION =
              T.let(
                :TIME_SINCE_LAST_TRANSACTION,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            DISTINCT_COUNTRY_COUNT =
              T.let(
                :DISTINCT_COUNTRY_COUNT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            IS_NEW_MERCHANT =
              T.let(
                :IS_NEW_MERCHANT,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            THREE_DS_SUCCESS_RATE =
              T.let(
                :THREE_DS_SUCCESS_RATE,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            TRAVEL_SPEED =
              T.let(
                :TRAVEL_SPEED,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )
            DISTANCE_FROM_LAST_TRANSACTION =
              T.let(
                :DISTANCE_FROM_LAST_TRANSACTION,
                Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Attribute::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Parameters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters,
                  Lithic::Internal::AnyHash
                )
              end

            # The time window for statistical attributes (`AMOUNT_Z_SCORE`,
            # `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`). Use `LIFETIME` for
            # all-time history or a specific window (`7D`, `30D`, `90D`).
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::OrSymbol
                )
              )
            end
            attr_reader :interval

            sig do
              params(
                interval:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::OrSymbol
              ).void
            end
            attr_writer :interval

            # The entity scope to evaluate the attribute against.
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope::OrSymbol
                )
              )
            end
            attr_reader :scope

            sig do
              params(
                scope:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope::OrSymbol
              ).void
            end
            attr_writer :scope

            # The unit for impossible travel attributes. Required when `attribute` is
            # `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION`.
            #
            # For `TRAVEL_SPEED`: `MPH` (miles per hour) or `KPH` (kilometers per hour).
            #
            # For `DISTANCE_FROM_LAST_TRANSACTION`: `MILES` or `KILOMETERS`.
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::OrSymbol
                )
              )
            end
            attr_reader :unit

            sig do
              params(
                unit:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::OrSymbol
              ).void
            end
            attr_writer :unit

            # Additional parameters for certain attributes. Required when `attribute` is one
            # of `AMOUNT_Z_SCORE`, `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`,
            # `IS_NEW_COUNTRY`, `IS_NEW_MCC`, `IS_FIRST_TRANSACTION`, `CONSECUTIVE_DECLINES`,
            # `TIME_SINCE_LAST_TRANSACTION`, or `DISTINCT_COUNTRY_COUNT` (require `scope`); or
            # `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION` (require `unit`). Not used
            # for other attributes.
            sig do
              params(
                interval:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::OrSymbol,
                scope:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope::OrSymbol,
                unit:
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The time window for statistical attributes (`AMOUNT_Z_SCORE`,
              # `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`). Use `LIFETIME` for
              # all-time history or a specific window (`7D`, `30D`, `90D`).
              interval: nil,
              # The entity scope to evaluate the attribute against.
              scope: nil,
              # The unit for impossible travel attributes. Required when `attribute` is
              # `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION`.
              #
              # For `TRAVEL_SPEED`: `MPH` (miles per hour) or `KPH` (kilometers per hour).
              #
              # For `DISTANCE_FROM_LAST_TRANSACTION`: `MILES` or `KILOMETERS`.
              unit: nil
            )
            end

            sig do
              override.returns(
                {
                  interval:
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::OrSymbol,
                  scope:
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope::OrSymbol,
                  unit:
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::OrSymbol
                }
              )
            end
            def to_hash
            end

            # The time window for statistical attributes (`AMOUNT_Z_SCORE`,
            # `AVG_TRANSACTION_AMOUNT`, `STDEV_TRANSACTION_AMOUNT`). Use `LIFETIME` for
            # all-time history or a specific window (`7D`, `30D`, `90D`).
            module Interval
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LIFETIME =
                T.let(
                  :LIFETIME,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::TaggedSymbol
                )
              INTERVAL_7_D =
                T.let(
                  :"7D",
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::TaggedSymbol
                )
              INTERVAL_30_D =
                T.let(
                  :"30D",
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::TaggedSymbol
                )
              INTERVAL_90_D =
                T.let(
                  :"90D",
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Interval::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The entity scope to evaluate the attribute against.
            module Scope
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CARD =
                T.let(
                  :CARD,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope::TaggedSymbol
                )
              ACCOUNT =
                T.let(
                  :ACCOUNT,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope::TaggedSymbol
                )
              BUSINESS_ACCOUNT =
                T.let(
                  :BUSINESS_ACCOUNT,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Scope::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The unit for impossible travel attributes. Required when `attribute` is
            # `TRAVEL_SPEED` or `DISTANCE_FROM_LAST_TRANSACTION`.
            #
            # For `TRAVEL_SPEED`: `MPH` (miles per hour) or `KPH` (kilometers per hour).
            #
            # For `DISTANCE_FROM_LAST_TRANSACTION`: `MILES` or `KILOMETERS`.
            module Unit
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MPH =
                T.let(
                  :MPH,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::TaggedSymbol
                )
              KPH =
                T.let(
                  :KPH,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::TaggedSymbol
                )
              MILES =
                T.let(
                  :MILES,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::TaggedSymbol
                )
              KILOMETERS =
                T.let(
                  :KILOMETERS,
                  Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters::Condition::Parameters::Unit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
