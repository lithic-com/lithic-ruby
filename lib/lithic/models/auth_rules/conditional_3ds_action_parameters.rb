# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class Conditional3DSActionParameters < Lithic::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take if the conditions are met.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::Conditional3DSActionParameters::Action]
        required :action, enum: -> { Lithic::AuthRules::Conditional3DSActionParameters::Action }

        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition>]
        required :conditions,
                 -> {
                   Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::Conditional3DSActionParameters::Condition]
                 }

        # @!method initialize(action:, conditions:)
        #   @param action [Symbol, Lithic::Models::AuthRules::Conditional3DSActionParameters::Action] The action to take if the conditions are met.
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition>]

        # The action to take if the conditions are met.
        #
        # @see Lithic::Models::AuthRules::Conditional3DSActionParameters#action
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
          #   @return [Symbol, Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition::Attribute, nil]
          optional :attribute,
                   enum: -> {
                     Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute
                   }

          # @!attribute operation
          #   The operation to apply to the attribute
          #
          #   @return [Symbol, Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition::Operation, nil]
          optional :operation,
                   enum: -> {
                     Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation
                   }

          # @!attribute value
          #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          #
          #   @return [String, Integer, Array<String>, nil]
          optional :value, union: -> { Lithic::AuthRules::Conditional3DSActionParameters::Condition::Value }

          # @!method initialize(attribute: nil, operation: nil, value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition} for more
          #   details.
          #
          #   @param attribute [Symbol, Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition::Attribute] The attribute to target.
          #
          #   @param operation [Symbol, Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition::Operation] The operation to apply to the attribute
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
          # @see Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition#attribute
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
          # @see Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition#operation
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
          # @see Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition#value
          module Value
            extend Lithic::Internal::Type::Union

            # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
            variant String

            # A number, to be used with `IS_GREATER_THAN` or `IS_LESS_THAN`
            variant Integer

            # An array of strings, to be used with `IS_ONE_OF` or `IS_NOT_ONE_OF`
            variant -> { Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition::Value::StringArray }

            # @!method self.variants
            #   @return [Array(String, Integer, Array<String>)]

            # @type [Lithic::Internal::Type::Converter]
            StringArray = Lithic::Internal::Type::ArrayOf[String]
          end
        end
      end
    end
  end
end
