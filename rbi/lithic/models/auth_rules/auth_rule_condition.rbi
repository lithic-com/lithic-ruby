# typed: strong

module Lithic
  module Models
    AuthRuleCondition = AuthRules::AuthRuleCondition

    module AuthRules
      class AuthRuleCondition < Lithic::Internal::Type::BaseModel
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
        sig { returns(T.nilable(Lithic::Models::AuthRules::ConditionalAttribute::OrSymbol)) }
        attr_reader :attribute

        sig { params(attribute: Lithic::Models::AuthRules::ConditionalAttribute::OrSymbol).void }
        attr_writer :attribute

        # The operation to apply to the attribute
        sig { returns(T.nilable(Lithic::Models::AuthRules::AuthRuleCondition::Operation::OrSymbol)) }
        attr_reader :operation

        sig { params(operation: Lithic::Models::AuthRules::AuthRuleCondition::Operation::OrSymbol).void }
        attr_writer :operation

        # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
        sig { returns(T.nilable(T.any(String, Integer, T::Array[String]))) }
        attr_reader :value

        sig { params(value: T.any(String, Integer, T::Array[String])).void }
        attr_writer :value

        sig do
          params(
            attribute: Lithic::Models::AuthRules::ConditionalAttribute::OrSymbol,
            operation: Lithic::Models::AuthRules::AuthRuleCondition::Operation::OrSymbol,
            value: T.any(String, Integer, T::Array[String])
          )
            .returns(T.attached_class)
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
          attribute: nil,
          # The operation to apply to the attribute
          operation: nil,
          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          value: nil
        ); end
        sig do
          override
            .returns(
              {
                attribute: Lithic::Models::AuthRules::ConditionalAttribute::OrSymbol,
                operation: Lithic::Models::AuthRules::AuthRuleCondition::Operation::OrSymbol,
                value: T.any(String, Integer, T::Array[String])
              }
            )
        end
        def to_hash; end

        # The operation to apply to the attribute
        module Operation
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::AuthRuleCondition::Operation) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_ONE_OF = T.let(:IS_ONE_OF, Lithic::Models::AuthRules::AuthRuleCondition::Operation::TaggedSymbol)
          IS_NOT_ONE_OF =
            T.let(:IS_NOT_ONE_OF, Lithic::Models::AuthRules::AuthRuleCondition::Operation::TaggedSymbol)
          MATCHES = T.let(:MATCHES, Lithic::Models::AuthRules::AuthRuleCondition::Operation::TaggedSymbol)
          DOES_NOT_MATCH =
            T.let(:DOES_NOT_MATCH, Lithic::Models::AuthRules::AuthRuleCondition::Operation::TaggedSymbol)
          IS_GREATER_THAN =
            T.let(:IS_GREATER_THAN, Lithic::Models::AuthRules::AuthRuleCondition::Operation::TaggedSymbol)
          IS_LESS_THAN =
            T.let(:IS_LESS_THAN, Lithic::Models::AuthRules::AuthRuleCondition::Operation::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::AuthRules::AuthRuleCondition::Operation::TaggedSymbol]) }
          def self.values; end
        end

        # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
        module Value
          extend Lithic::Internal::Type::Union

          sig { override.returns([String, Integer, T::Array[String]]) }
          def self.variants; end

          StringArray = T.let(Lithic::Internal::Type::ArrayOf[String], Lithic::Internal::Type::Converter)
        end
      end
    end
  end
end
