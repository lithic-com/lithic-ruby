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
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::Conditional3DSActionParameters::Condition] }

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
          #   - `RISK_SCORE`: Mastercard only: Assessment by the network of the authentication
          #     risk level, with a higher value indicating a higher amount of risk.
          #   - `MESSAGE_CATEGORY`: The category of the authentication being processed.
          #   - `ADDRESS_MATCH`: Lithic's evaluation result comparing transaction's address
          #     data with the cardholder KYC data if it exists. Valid values are `MATCH`,
          #     `MATCH_ADDRESS_ONLY`, `MATCH_ZIP_ONLY`,`MISMATCH`,`NOT_PRESENT`.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition::Attribute]
          required :attribute, enum: -> { Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute }

          # @!attribute operation
          #   The operation to apply to the attribute
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalOperation]
          required :operation, enum: -> { Lithic::AuthRules::ConditionalOperation }

          # @!attribute value
          #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          #
          #   @return [String, Integer, Array<String>, Time]
          required :value, union: -> { Lithic::AuthRules::ConditionalValue }

          # @!method initialize(attribute:, operation:, value:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition} for more
          #   details.
          #
          #   @param attribute [Symbol, Lithic::Models::AuthRules::Conditional3DSActionParameters::Condition::Attribute] The attribute to target.
          #
          #   @param operation [Symbol, Lithic::Models::AuthRules::ConditionalOperation] The operation to apply to the attribute
          #
          #   @param value [String, Integer, Array<String>, Time] A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`

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
          # - `RISK_SCORE`: Mastercard only: Assessment by the network of the authentication
          #   risk level, with a higher value indicating a higher amount of risk.
          # - `MESSAGE_CATEGORY`: The category of the authentication being processed.
          # - `ADDRESS_MATCH`: Lithic's evaluation result comparing transaction's address
          #   data with the cardholder KYC data if it exists. Valid values are `MATCH`,
          #   `MATCH_ADDRESS_ONLY`, `MATCH_ZIP_ONLY`,`MISMATCH`,`NOT_PRESENT`.
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
            ADDRESS_MATCH = :ADDRESS_MATCH

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
