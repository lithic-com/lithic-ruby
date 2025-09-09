# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#apply
      class V2ApplyResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Auth Rule Token
        #
        #   @return [String]
        required :token, String

        # @!attribute account_tokens
        #   Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute business_account_tokens
        #   Business Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :business_account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute card_tokens
        #   Card tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute current_version
        #
        #   @return [Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion, nil]
        required :current_version, -> { Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion }, nil?: true

        # @!attribute draft_version
        #
        #   @return [Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion, nil]
        required :draft_version, -> { Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion }, nil?: true

        # @!attribute event_stream
        #   The event stream during which the rule will be evaluated.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::EventStream]
        required :event_stream, enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::EventStream }

        # @!attribute name
        #   Auth Rule Name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute program_level
        #   Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @return [Boolean]
        required :program_level, Lithic::Internal::Type::Boolean

        # @!attribute state
        #   The state of the Auth Rule
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::State]
        required :state, enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::State }

        # @!attribute type
        #   The type of Auth Rule. For certain rule types, this determines the event stream
        #   during which it will be evaluated. For rules that can be applied to one of
        #   several event streams, the effective one is defined by the separate
        #   `event_stream` field.
        #
        #   - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        #   - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::Type]
        required :type, enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::Type }

        # @!attribute excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!method initialize(token:, account_tokens:, business_account_tokens:, card_tokens:, current_version:, draft_version:, event_stream:, name:, program_level:, state:, type:, excluded_card_tokens: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::V2ApplyResponse} for more details.
        #
        #   @param token [String] Auth Rule Token
        #
        #   @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        #   @param business_account_tokens [Array<String>] Business Account tokens to which the Auth Rule applies.
        #
        #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        #   @param current_version [Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion, nil]
        #
        #   @param draft_version [Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion, nil]
        #
        #   @param event_stream [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::EventStream] The event stream during which the rule will be evaluated.
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::State] The state of the Auth Rule
        #
        #   @param type [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::Type] The type of Auth Rule. For certain rule types, this determines the event stream
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.

        # @see Lithic::Models::AuthRules::V2ApplyResponse#current_version
        class CurrentVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters }

          response_only do
            # @!attribute version
            #   The version of the rule, this is incremented whenever the rule's parameters
            #   change.
            #
            #   @return [Integer]
            required :version, Integer
          end

          # @!method initialize(parameters:, version:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::AuthRules::MerchantLockParameters }

            variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

            variant -> { Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters }

            class ConditionalAuthorizationActionParameters < Lithic::Internal::Type::BaseModel
              # @!attribute action
              #   The action to take if the conditions are met.
              #
              #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action]
              required :action,
                       enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action }

              # @!attribute conditions
              #
              #   @return [Array<Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition>]
              required :conditions,
                       -> do
                         Lithic::Internal::Type::ArrayOf[
                           Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition
                         ]
                       end

              # @!method initialize(action:, conditions:)
              #   @param action [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action] The action to take if the conditions are met.
              #
              #   @param conditions [Array<Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition>]

              # The action to take if the conditions are met.
              #
              # @see Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters#action
              module Action
                extend Lithic::Internal::Type::Enum

                DECLINE = :DECLINE
                CHALLENGE = :CHALLENGE

                # @!method self.values
                #   @return [Array<Symbol>]
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
                #     fee on behalf of the cardholder.
                #   - `RISK_SCORE`: Network-provided score assessing risk level associated with a
                #     given authorization. Scores are on a range of 0-999, with 0 representing the
                #     lowest risk and 999 representing the highest risk. For Visa transactions,
                #     where the raw score has a range of 0-99, Lithic will normalize the score by
                #     multiplying the raw score by 10x.
                #   - `CARD_TRANSACTION_COUNT_15M`: The number of transactions on the card in the
                #     trailing 15 minutes before the authorization.
                #   - `CARD_TRANSACTION_COUNT_1H`: The number of transactions on the card in the
                #     trailing hour up and until the authorization.
                #   - `CARD_TRANSACTION_COUNT_24H`: The number of transactions on the card in the
                #     trailing 24 hours up and until the authorization.
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
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute, nil]
                optional :attribute,
                         enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute }

                # @!attribute operation
                #   The operation to apply to the attribute
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation, nil]
                optional :operation,
                         enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation }

                # @!attribute value
                #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                #
                #   @return [String, Integer, Array<String>, nil]
                optional :value,
                         union: -> { Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value }

                # @!method initialize(attribute: nil, operation: nil, value: nil)
                #   Some parameter documentations has been truncated, see
                #   {Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition}
                #   for more details.
                #
                #   @param attribute [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute] The attribute to target.
                #
                #   @param operation [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation] The operation to apply to the attribute
                #
                #   @param value [String, Integer, Array<String>] A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`

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
                # - `TRANSACTION_INITIATOR`: The entity that initiated the transaction indicates
                #   the source of the token. Valid values are `CARDHOLDER`, `MERCHANT`, `UNKNOWN`.
                #
                # @see Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition#attribute
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
                  RISK_SCORE = :RISK_SCORE
                  CARD_TRANSACTION_COUNT_15_M = :CARD_TRANSACTION_COUNT_15M
                  CARD_TRANSACTION_COUNT_1_H = :CARD_TRANSACTION_COUNT_1H
                  CARD_TRANSACTION_COUNT_24_H = :CARD_TRANSACTION_COUNT_24H
                  CARD_STATE = :CARD_STATE
                  PIN_ENTERED = :PIN_ENTERED
                  PIN_STATUS = :PIN_STATUS
                  WALLET_TYPE = :WALLET_TYPE
                  TRANSACTION_INITIATOR = :TRANSACTION_INITIATOR

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # The operation to apply to the attribute
                #
                # @see Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition#operation
                module Operation
                  extend Lithic::Internal::Type::Enum

                  IS_ONE_OF = :IS_ONE_OF
                  IS_NOT_ONE_OF = :IS_NOT_ONE_OF
                  MATCHES = :MATCHES
                  DOES_NOT_MATCH = :DOES_NOT_MATCH
                  IS_EQUAL_TO = :IS_EQUAL_TO
                  IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
                  IS_GREATER_THAN = :IS_GREATER_THAN
                  IS_GREATER_THAN_OR_EQUAL_TO = :IS_GREATER_THAN_OR_EQUAL_TO
                  IS_LESS_THAN = :IS_LESS_THAN
                  IS_LESS_THAN_OR_EQUAL_TO = :IS_LESS_THAN_OR_EQUAL_TO

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                #
                # @see Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition#value
                module Value
                  extend Lithic::Internal::Type::Union

                  # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                  variant String

                  # A number, to be used with `IS_GREATER_THAN`, `IS_GREATER_THAN_OR_EQUAL_TO`, `IS_LESS_THAN`, `IS_LESS_THAN_OR_EQUAL_TO`, `IS_EQUAL_TO`, or `IS_NOT_EQUAL_TO`
                  variant Integer

                  # An array of strings, to be used with `IS_ONE_OF` or `IS_NOT_ONE_OF`
                  variant -> { Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::StringArray }

                  # @!method self.variants
                  #   @return [Array(String, Integer, Array<String>)]

                  # @type [Lithic::Internal::Type::Converter]
                  StringArray = Lithic::Internal::Type::ArrayOf[String]
                end
              end
            end

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters)]
          end
        end

        # @see Lithic::Models::AuthRules::V2ApplyResponse#draft_version
        class DraftVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters }

          response_only do
            # @!attribute version
            #   The version of the rule, this is incremented whenever the rule's parameters
            #   change.
            #
            #   @return [Integer]
            required :version, Integer
          end

          # @!method initialize(parameters:, version:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::AuthRules::MerchantLockParameters }

            variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

            variant -> { Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters }

            class ConditionalAuthorizationActionParameters < Lithic::Internal::Type::BaseModel
              # @!attribute action
              #   The action to take if the conditions are met.
              #
              #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action]
              required :action,
                       enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action }

              # @!attribute conditions
              #
              #   @return [Array<Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition>]
              required :conditions,
                       -> do
                         Lithic::Internal::Type::ArrayOf[
                           Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition
                         ]
                       end

              # @!method initialize(action:, conditions:)
              #   @param action [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action] The action to take if the conditions are met.
              #
              #   @param conditions [Array<Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition>]

              # The action to take if the conditions are met.
              #
              # @see Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters#action
              module Action
                extend Lithic::Internal::Type::Enum

                DECLINE = :DECLINE
                CHALLENGE = :CHALLENGE

                # @!method self.values
                #   @return [Array<Symbol>]
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
                #     fee on behalf of the cardholder.
                #   - `RISK_SCORE`: Network-provided score assessing risk level associated with a
                #     given authorization. Scores are on a range of 0-999, with 0 representing the
                #     lowest risk and 999 representing the highest risk. For Visa transactions,
                #     where the raw score has a range of 0-99, Lithic will normalize the score by
                #     multiplying the raw score by 10x.
                #   - `CARD_TRANSACTION_COUNT_15M`: The number of transactions on the card in the
                #     trailing 15 minutes before the authorization.
                #   - `CARD_TRANSACTION_COUNT_1H`: The number of transactions on the card in the
                #     trailing hour up and until the authorization.
                #   - `CARD_TRANSACTION_COUNT_24H`: The number of transactions on the card in the
                #     trailing 24 hours up and until the authorization.
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
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute, nil]
                optional :attribute,
                         enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute }

                # @!attribute operation
                #   The operation to apply to the attribute
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation, nil]
                optional :operation,
                         enum: -> { Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation }

                # @!attribute value
                #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                #
                #   @return [String, Integer, Array<String>, nil]
                optional :value,
                         union: -> { Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value }

                # @!method initialize(attribute: nil, operation: nil, value: nil)
                #   Some parameter documentations has been truncated, see
                #   {Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition}
                #   for more details.
                #
                #   @param attribute [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute] The attribute to target.
                #
                #   @param operation [Symbol, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation] The operation to apply to the attribute
                #
                #   @param value [String, Integer, Array<String>] A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`

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
                # - `TRANSACTION_INITIATOR`: The entity that initiated the transaction indicates
                #   the source of the token. Valid values are `CARDHOLDER`, `MERCHANT`, `UNKNOWN`.
                #
                # @see Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition#attribute
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
                  RISK_SCORE = :RISK_SCORE
                  CARD_TRANSACTION_COUNT_15_M = :CARD_TRANSACTION_COUNT_15M
                  CARD_TRANSACTION_COUNT_1_H = :CARD_TRANSACTION_COUNT_1H
                  CARD_TRANSACTION_COUNT_24_H = :CARD_TRANSACTION_COUNT_24H
                  CARD_STATE = :CARD_STATE
                  PIN_ENTERED = :PIN_ENTERED
                  PIN_STATUS = :PIN_STATUS
                  WALLET_TYPE = :WALLET_TYPE
                  TRANSACTION_INITIATOR = :TRANSACTION_INITIATOR

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # The operation to apply to the attribute
                #
                # @see Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition#operation
                module Operation
                  extend Lithic::Internal::Type::Enum

                  IS_ONE_OF = :IS_ONE_OF
                  IS_NOT_ONE_OF = :IS_NOT_ONE_OF
                  MATCHES = :MATCHES
                  DOES_NOT_MATCH = :DOES_NOT_MATCH
                  IS_EQUAL_TO = :IS_EQUAL_TO
                  IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
                  IS_GREATER_THAN = :IS_GREATER_THAN
                  IS_GREATER_THAN_OR_EQUAL_TO = :IS_GREATER_THAN_OR_EQUAL_TO
                  IS_LESS_THAN = :IS_LESS_THAN
                  IS_LESS_THAN_OR_EQUAL_TO = :IS_LESS_THAN_OR_EQUAL_TO

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                #
                # @see Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition#value
                module Value
                  extend Lithic::Internal::Type::Union

                  # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                  variant String

                  # A number, to be used with `IS_GREATER_THAN`, `IS_GREATER_THAN_OR_EQUAL_TO`, `IS_LESS_THAN`, `IS_LESS_THAN_OR_EQUAL_TO`, `IS_EQUAL_TO`, or `IS_NOT_EQUAL_TO`
                  variant Integer

                  # An array of strings, to be used with `IS_ONE_OF` or `IS_NOT_ONE_OF`
                  variant -> { Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::StringArray }

                  # @!method self.variants
                  #   @return [Array(String, Integer, Array<String>)]

                  # @type [Lithic::Internal::Type::Converter]
                  StringArray = Lithic::Internal::Type::ArrayOf[String]
                end
              end
            end

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters)]
          end
        end

        # The event stream during which the rule will be evaluated.
        #
        # @see Lithic::Models::AuthRules::V2ApplyResponse#event_stream
        module EventStream
          extend Lithic::Internal::Type::Enum

          AUTHORIZATION = :AUTHORIZATION
          THREE_DS_AUTHENTICATION = :THREE_DS_AUTHENTICATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The state of the Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2ApplyResponse#state
        module State
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of Auth Rule. For certain rule types, this determines the event stream
        # during which it will be evaluated. For rules that can be applied to one of
        # several event streams, the effective one is defined by the separate
        # `event_stream` field.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
        #
        # @see Lithic::Models::AuthRules::V2ApplyResponse#type
        module Type
          extend Lithic::Internal::Type::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT
          MERCHANT_LOCK = :MERCHANT_LOCK
          CONDITIONAL_ACTION = :CONDITIONAL_ACTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
