# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#list
      class V2ListResponse < Lithic::Internal::Type::BaseModel
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

        # @!attribute card_tokens
        #   Card tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute current_version
        #
        #   @return [Lithic::Models::AuthRules::V2ListResponse::CurrentVersion, nil]
        required :current_version, -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion }, nil?: true

        # @!attribute draft_version
        #
        #   @return [Lithic::Models::AuthRules::V2ListResponse::DraftVersion, nil]
        required :draft_version, -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion }, nil?: true

        # @!attribute event_stream
        #   The type of event stream the Auth rule applies to.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::EventStream]
        required :event_stream, enum: -> { Lithic::Models::AuthRules::V2ListResponse::EventStream }

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
        #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::State]
        required :state, enum: -> { Lithic::Models::AuthRules::V2ListResponse::State }

        # @!attribute type
        #   The type of Auth Rule. Effectively determines the event stream during which it
        #   will be evaluated.
        #
        #   - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        #   - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::Type]
        required :type, enum: -> { Lithic::Models::AuthRules::V2ListResponse::Type }

        # @!attribute excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!method initialize(token:, account_tokens:, card_tokens:, current_version:, draft_version:, event_stream:, name:, program_level:, state:, type:, excluded_card_tokens: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::V2ListResponse} for more details.
        #
        #   @param token [String] Auth Rule Token
        #
        #   @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        #   @param current_version [Lithic::Models::AuthRules::V2ListResponse::CurrentVersion, nil]
        #
        #   @param draft_version [Lithic::Models::AuthRules::V2ListResponse::DraftVersion, nil]
        #
        #   @param event_stream [Symbol, Lithic::Models::AuthRules::V2ListResponse::EventStream] The type of event stream the Auth rule applies to.
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::V2ListResponse::State] The state of the Auth Rule
        #
        #   @param type [Symbol, Lithic::Models::AuthRules::V2ListResponse::Type] The type of Auth Rule. Effectively determines the event stream during which it w
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.

        # @see Lithic::Models::AuthRules::V2ListResponse#current_version
        class CurrentVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters }

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
          #   {Lithic::Models::AuthRules::V2ListResponse::CurrentVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2ListResponse::CurrentVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters }

            variant -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters }

            class MerchantLockParameters < Lithic::Internal::Type::BaseModel
              # @!attribute merchants
              #   A list of merchant locks defining specific merchants or groups of merchants
              #   (based on descriptors or IDs) that the lock applies to.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant>]
              required :merchants,
                       -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant] }

              # @!method initialize(merchants:)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters}
              #   for more details.
              #
              #   @param merchants [Array<Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant>] A list of merchant locks defining specific merchants or groups of merchants (bas

              class Merchant < Lithic::Internal::Type::BaseModel
                # @!attribute comment
                #   A comment or explanation about the merchant, used internally for rule management
                #   purposes.
                #
                #   @return [String, nil]
                optional :comment, String

                # @!attribute descriptor
                #   Short description of the merchant, often used to provide more human-readable
                #   context about the transaction merchant. This is typically the name or label
                #   shown on transaction summaries.
                #
                #   @return [String, nil]
                optional :descriptor, String

                # @!attribute merchant_id
                #   Unique alphanumeric identifier for the payment card acceptor (merchant). This
                #   attribute specifies the merchant entity that will be locked or referenced for
                #   authorization rules.
                #
                #   @return [String, nil]
                optional :merchant_id, String

                # @!method initialize(comment: nil, descriptor: nil, merchant_id: nil)
                #   Some parameter documentations has been truncated, see
                #   {Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant}
                #   for more details.
                #
                #   Represents a specific merchant lock based on their ID or descriptor. Each
                #   merchant object allows transaction rules to work at a granular level and
                #   requires at least one of merchant_id or descriptor.
                #
                #   @param comment [String] A comment or explanation about the merchant, used internally for rule management
                #
                #   @param descriptor [String] Short description of the merchant, often used to provide more human-readable con
                #
                #   @param merchant_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant). This at
              end
            end

            class Conditional3DSActionParameters < Lithic::Internal::Type::BaseModel
              # @!attribute action
              #   The action to take if the conditions are met.
              #
              #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Action]
              required :action,
                       enum: -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Action }

              # @!attribute conditions
              #
              #   @return [Array<Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition>]
              required :conditions,
                       -> do
                         Lithic::Internal::Type::ArrayOf[
                           Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition
                         ]
                       end

              # @!method initialize(action:, conditions:)
              #   @param action [Symbol, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Action] The action to take if the conditions are met.
              #
              #   @param conditions [Array<Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition>]

              # The action to take if the conditions are met.
              #
              # @see Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters#action
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
                #   - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
                #     fee field in the settlement/cardholder billing currency. This is the amount
                #     the issuer should authorize against unless the issuer is paying the acquirer
                #     fee on behalf of the cardholder.
                #   - `RISK_SCORE`: Network-provided score assessing risk level associated with a
                #     given authentication. Scores are on a range of 0-999, with 0 representing the
                #     lowest risk and 999 representing the highest risk. For Visa transactions,
                #     where the raw score has a range of 0-99, Lithic will normalize the score by
                #     multiplying the raw score by 10x.
                #   - `MESSAGE_CATEGORY`: The category of the authentication being processed.
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition::Attribute, nil]
                optional :attribute,
                         enum: -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition::Attribute }

                # @!attribute operation
                #   The operation to apply to the attribute
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition::Operation, nil]
                optional :operation,
                         enum: -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition::Operation }

                # @!attribute value
                #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                #
                #   @return [String, Integer, Array<String>, nil]
                optional :value,
                         union: -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition::Value }

                # @!method initialize(attribute: nil, operation: nil, value: nil)
                #   Some parameter documentations has been truncated, see
                #   {Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition}
                #   for more details.
                #
                #   @param attribute [Symbol, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition::Attribute] The attribute to target.
                #
                #   @param operation [Symbol, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition::Operation] The operation to apply to the attribute
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
                # - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
                #   fee field in the settlement/cardholder billing currency. This is the amount
                #   the issuer should authorize against unless the issuer is paying the acquirer
                #   fee on behalf of the cardholder.
                # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
                #   given authentication. Scores are on a range of 0-999, with 0 representing the
                #   lowest risk and 999 representing the highest risk. For Visa transactions,
                #   where the raw score has a range of 0-99, Lithic will normalize the score by
                #   multiplying the raw score by 10x.
                # - `MESSAGE_CATEGORY`: The category of the authentication being processed.
                #
                # @see Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition#attribute
                module Attribute
                  extend Lithic::Internal::Type::Enum

                  MCC = :MCC
                  COUNTRY = :COUNTRY
                  CURRENCY = :CURRENCY
                  MERCHANT_ID = :MERCHANT_ID
                  DESCRIPTOR = :DESCRIPTOR
                  TRANSACTION_AMOUNT = :TRANSACTION_AMOUNT
                  RISK_SCORE = :RISK_SCORE
                  MESSAGE_CATEGORY = :MESSAGE_CATEGORY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # The operation to apply to the attribute
                #
                # @see Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition#operation
                module Operation
                  extend Lithic::Internal::Type::Enum

                  IS_ONE_OF = :IS_ONE_OF
                  IS_NOT_ONE_OF = :IS_NOT_ONE_OF
                  MATCHES = :MATCHES
                  DOES_NOT_MATCH = :DOES_NOT_MATCH
                  IS_GREATER_THAN = :IS_GREATER_THAN
                  IS_LESS_THAN = :IS_LESS_THAN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                #
                # @see Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition#value
                module Value
                  extend Lithic::Internal::Type::Union

                  # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                  variant String

                  # A number, to be used with `IS_GREATER_THAN` or `IS_LESS_THAN`
                  variant Integer

                  # An array of strings, to be used with `IS_ONE_OF` or `IS_NOT_ONE_OF`
                  variant -> { Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters::Condition::Value::StringArray }

                  # @!method self.variants
                  #   @return [Array(String, Integer, Array<String>)]

                  # @type [Lithic::Internal::Type::Converter]
                  StringArray = Lithic::Internal::Type::ArrayOf[String]
                end
              end
            end

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::MerchantLockParameters, Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Conditional3DSActionParameters)]
          end
        end

        # @see Lithic::Models::AuthRules::V2ListResponse#draft_version
        class DraftVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters }

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
          #   {Lithic::Models::AuthRules::V2ListResponse::DraftVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2ListResponse::DraftVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters }

            variant -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters }

            class MerchantLockParameters < Lithic::Internal::Type::BaseModel
              # @!attribute merchants
              #   A list of merchant locks defining specific merchants or groups of merchants
              #   (based on descriptors or IDs) that the lock applies to.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant>]
              required :merchants,
                       -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant] }

              # @!method initialize(merchants:)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters}
              #   for more details.
              #
              #   @param merchants [Array<Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant>] A list of merchant locks defining specific merchants or groups of merchants (bas

              class Merchant < Lithic::Internal::Type::BaseModel
                # @!attribute comment
                #   A comment or explanation about the merchant, used internally for rule management
                #   purposes.
                #
                #   @return [String, nil]
                optional :comment, String

                # @!attribute descriptor
                #   Short description of the merchant, often used to provide more human-readable
                #   context about the transaction merchant. This is typically the name or label
                #   shown on transaction summaries.
                #
                #   @return [String, nil]
                optional :descriptor, String

                # @!attribute merchant_id
                #   Unique alphanumeric identifier for the payment card acceptor (merchant). This
                #   attribute specifies the merchant entity that will be locked or referenced for
                #   authorization rules.
                #
                #   @return [String, nil]
                optional :merchant_id, String

                # @!method initialize(comment: nil, descriptor: nil, merchant_id: nil)
                #   Some parameter documentations has been truncated, see
                #   {Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant}
                #   for more details.
                #
                #   Represents a specific merchant lock based on their ID or descriptor. Each
                #   merchant object allows transaction rules to work at a granular level and
                #   requires at least one of merchant_id or descriptor.
                #
                #   @param comment [String] A comment or explanation about the merchant, used internally for rule management
                #
                #   @param descriptor [String] Short description of the merchant, often used to provide more human-readable con
                #
                #   @param merchant_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant). This at
              end
            end

            class Conditional3DSActionParameters < Lithic::Internal::Type::BaseModel
              # @!attribute action
              #   The action to take if the conditions are met.
              #
              #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Action]
              required :action,
                       enum: -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Action }

              # @!attribute conditions
              #
              #   @return [Array<Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition>]
              required :conditions,
                       -> do
                         Lithic::Internal::Type::ArrayOf[
                           Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition
                         ]
                       end

              # @!method initialize(action:, conditions:)
              #   @param action [Symbol, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Action] The action to take if the conditions are met.
              #
              #   @param conditions [Array<Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition>]

              # The action to take if the conditions are met.
              #
              # @see Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters#action
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
                #   - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
                #     fee field in the settlement/cardholder billing currency. This is the amount
                #     the issuer should authorize against unless the issuer is paying the acquirer
                #     fee on behalf of the cardholder.
                #   - `RISK_SCORE`: Network-provided score assessing risk level associated with a
                #     given authentication. Scores are on a range of 0-999, with 0 representing the
                #     lowest risk and 999 representing the highest risk. For Visa transactions,
                #     where the raw score has a range of 0-99, Lithic will normalize the score by
                #     multiplying the raw score by 10x.
                #   - `MESSAGE_CATEGORY`: The category of the authentication being processed.
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition::Attribute, nil]
                optional :attribute,
                         enum: -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition::Attribute }

                # @!attribute operation
                #   The operation to apply to the attribute
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition::Operation, nil]
                optional :operation,
                         enum: -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition::Operation }

                # @!attribute value
                #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                #
                #   @return [String, Integer, Array<String>, nil]
                optional :value,
                         union: -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition::Value }

                # @!method initialize(attribute: nil, operation: nil, value: nil)
                #   Some parameter documentations has been truncated, see
                #   {Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition}
                #   for more details.
                #
                #   @param attribute [Symbol, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition::Attribute] The attribute to target.
                #
                #   @param operation [Symbol, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition::Operation] The operation to apply to the attribute
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
                # - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
                #   fee field in the settlement/cardholder billing currency. This is the amount
                #   the issuer should authorize against unless the issuer is paying the acquirer
                #   fee on behalf of the cardholder.
                # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
                #   given authentication. Scores are on a range of 0-999, with 0 representing the
                #   lowest risk and 999 representing the highest risk. For Visa transactions,
                #   where the raw score has a range of 0-99, Lithic will normalize the score by
                #   multiplying the raw score by 10x.
                # - `MESSAGE_CATEGORY`: The category of the authentication being processed.
                #
                # @see Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition#attribute
                module Attribute
                  extend Lithic::Internal::Type::Enum

                  MCC = :MCC
                  COUNTRY = :COUNTRY
                  CURRENCY = :CURRENCY
                  MERCHANT_ID = :MERCHANT_ID
                  DESCRIPTOR = :DESCRIPTOR
                  TRANSACTION_AMOUNT = :TRANSACTION_AMOUNT
                  RISK_SCORE = :RISK_SCORE
                  MESSAGE_CATEGORY = :MESSAGE_CATEGORY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # The operation to apply to the attribute
                #
                # @see Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition#operation
                module Operation
                  extend Lithic::Internal::Type::Enum

                  IS_ONE_OF = :IS_ONE_OF
                  IS_NOT_ONE_OF = :IS_NOT_ONE_OF
                  MATCHES = :MATCHES
                  DOES_NOT_MATCH = :DOES_NOT_MATCH
                  IS_GREATER_THAN = :IS_GREATER_THAN
                  IS_LESS_THAN = :IS_LESS_THAN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                #
                # @see Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition#value
                module Value
                  extend Lithic::Internal::Type::Union

                  # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                  variant String

                  # A number, to be used with `IS_GREATER_THAN` or `IS_LESS_THAN`
                  variant Integer

                  # An array of strings, to be used with `IS_ONE_OF` or `IS_NOT_ONE_OF`
                  variant -> { Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters::Condition::Value::StringArray }

                  # @!method self.variants
                  #   @return [Array(String, Integer, Array<String>)]

                  # @type [Lithic::Internal::Type::Converter]
                  StringArray = Lithic::Internal::Type::ArrayOf[String]
                end
              end
            end

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::MerchantLockParameters, Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Conditional3DSActionParameters)]
          end
        end

        # The type of event stream the Auth rule applies to.
        #
        # @see Lithic::Models::AuthRules::V2ListResponse#event_stream
        module EventStream
          extend Lithic::Internal::Type::Enum

          AUTHORIZATION = :AUTHORIZATION
          THREE_DS_AUTHENTICATION = :THREE_DS_AUTHENTICATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The state of the Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2ListResponse#state
        module State
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of Auth Rule. Effectively determines the event stream during which it
        # will be evaluated.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
        #
        # @see Lithic::Models::AuthRules::V2ListResponse#type
        module Type
          extend Lithic::Internal::Type::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT
          MERCHANT_LOCK = :MERCHANT_LOCK
          CONDITIONAL_3DS_ACTION = :CONDITIONAL_3DS_ACTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
