# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class AuthRuleCondition < Lithic::BaseModel
        # @!attribute [r] attribute
        #   The attribute to target.
        #
        #     The following attributes may be targeted:
        #
        #     - `MCC`: A four-digit number listed in ISO 18245. An MCC is used to classify a
        #       business by the types of goods or services it provides.
        #     - `COUNTRY`: Country of entity of card acceptor. Possible values are: (1) all
        #       ISO 3166-1 alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for
        #       Netherlands Antilles.
        #     - `CURRENCY`: 3-character alphabetic ISO 4217 code for the merchant currency of
        #       the transaction.
        #     - `MERCHANT_ID`: Unique alphanumeric identifier for the payment card acceptor
        #       (merchant).
        #     - `DESCRIPTOR`: Short description of card acceptor.
        #     - `LIABILITY_SHIFT`: Indicates whether chargeback liability shift to the issuer
        #       applies to the transaction. Valid values are `NONE`, `3DS_AUTHENTICATED`, or
        #       `TOKEN_AUTHENTICATED`.
        #     - `PAN_ENTRY_MODE`: The method by which the cardholder's primary account number
        #       (PAN) was entered. Valid values are `AUTO_ENTRY`, `BAR_CODE`, `CONTACTLESS`,
        #       `ECOMMERCE`, `ERROR_KEYED`, `ERROR_MAGNETIC_STRIPE`, `ICC`, `KEY_ENTERED`,
        #       `MAGNETIC_STRIPE`, `MANUAL`, `OCR`, `SECURE_CARDLESS`, `UNSPECIFIED`,
        #       `UNKNOWN`, `CREDENTIAL_ON_FILE`, or `ECOMMERCE`.
        #     - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
        #       fee field in the settlement/cardholder billing currency. This is the amount
        #       the issuer should authorize against unless the issuer is paying the acquirer
        #       fee on behalf of the cardholder.
        #     - `RISK_SCORE`: Network-provided score assessing risk level associated with a
        #       given authorization. Scores are on a range of 0-999, with 0 representing the
        #       lowest risk and 999 representing the highest risk. For Visa transactions,
        #       where the raw score has a range of 0-99, Lithic will normalize the score by
        #       multiplying the raw score by 10x.
        #     - `CARD_TRANSACTION_COUNT_1H`: The number of transactions on the card in the
        #       trailing hour up and until the authorization.
        #     - `CARD_TRANSACTION_COUNT_24H`: The number of transactions on the card in the
        #       trailing 24 hours up and until the authorization.
        #     - `CARD_STATE`: The current state of the card associated with the transaction.
        #       Valid values are `CLOSED`, `OPEN`, `PAUSED`, `PENDING_ACTIVATION`,
        #       `PENDING_FULFILLMENT`.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAttribute, nil]
        optional :attribute, enum: -> { Lithic::Models::AuthRules::ConditionalAttribute }

        # @!parse
        #   # @return [Symbol, Lithic::Models::AuthRules::ConditionalAttribute]
        #   attr_writer :attribute

        # @!attribute [r] operation
        #   The operation to apply to the attribute
        #
        #   @return [Symbol, Lithic::Models::AuthRules::AuthRuleCondition::Operation, nil]
        optional :operation, enum: -> { Lithic::Models::AuthRules::AuthRuleCondition::Operation }

        # @!parse
        #   # @return [Symbol, Lithic::Models::AuthRules::AuthRuleCondition::Operation]
        #   attr_writer :operation

        # @!attribute [r] value
        #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
        #
        #   @return [String, Integer, Array<String>, nil]
        optional :value, union: -> { Lithic::Models::AuthRules::AuthRuleCondition::Value }

        # @!parse
        #   # @return [String, Integer, Array<String>]
        #   attr_writer :value

        # @!parse
        #   # @param attribute [Symbol, Lithic::Models::AuthRules::ConditionalAttribute]
        #   # @param operation [Symbol, Lithic::Models::AuthRules::AuthRuleCondition::Operation]
        #   # @param value [String, Integer, Array<String>]
        #   #
        #   def initialize(attribute: nil, operation: nil, value: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # @abstract
        #
        # The operation to apply to the attribute
        class Operation < Lithic::Enum
          IS_ONE_OF = :IS_ONE_OF
          IS_NOT_ONE_OF = :IS_NOT_ONE_OF
          MATCHES = :MATCHES
          DOES_NOT_MATCH = :DOES_NOT_MATCH
          IS_GREATER_THAN = :IS_GREATER_THAN
          IS_LESS_THAN = :IS_LESS_THAN

          finalize!
        end

        # @abstract
        #
        # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
        class Value < Lithic::Union
          StringArray = Lithic::ArrayOf[String]

          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          variant String

          # A number, to be used with `IS_GREATER_THAN` or `IS_LESS_THAN`
          variant Integer

          # An array of strings, to be used with `IS_ONE_OF` or `IS_NOT_ONE_OF`
          variant Lithic::Models::AuthRules::AuthRuleCondition::Value::StringArray

          # @!parse
          #   class << self
          #     # @return [Array(String, Integer, Array<String>)]
          #     def variants; end
          #   end
        end
      end
    end

    AuthRuleCondition = AuthRules::AuthRuleCondition
  end
end
