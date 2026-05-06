# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalCardTransactionUpdateActionParameters < Lithic::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take if the conditions are met.
        #
        #   @return [Lithic::Models::AuthRules::CardTransactionUpdateAction::TagAction, Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction]
        required :action, union: -> { Lithic::AuthRules::CardTransactionUpdateAction }

        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition>]
        required :conditions,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition] }

        # @!method initialize(action:, conditions:)
        #   @param action [Lithic::Models::AuthRules::CardTransactionUpdateAction::TagAction, Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction] The action to take if the conditions are met.
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition>]

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
          #     given authorization. Scores are on a range of 0-999, with 0 representing the
          #     lowest risk and 999 representing the highest risk. For Visa transactions,
          #     where the raw score has a range of 0-99, Lithic will normalize the score by
          #     multiplying the raw score by 10x.
          #   - `TRANSACTION_STATUS`: The status of the transaction. Valid values are
          #     `PENDING`, `VOIDED`, `SETTLING`, `SETTLED`, `BOUNCED`, `RETURNED`, `DECLINED`,
          #     `EXPIRED`.
          #   - `LAST_EVENT_TYPE`: The type of the most recent event on the transaction. Valid
          #     values are `AUTHORIZATION`, `AUTHORIZATION_ADVICE`, `AUTHORIZATION_EXPIRY`,
          #     `AUTHORIZATION_REVERSAL`, `BALANCE_INQUIRY`, `CLEARING`, `CORRECTION_CREDIT`,
          #     `CORRECTION_DEBIT`, `CREDIT_AUTHORIZATION`, `CREDIT_AUTHORIZATION_ADVICE`,
          #     `FINANCIAL_AUTHORIZATION`, `FINANCIAL_CREDIT_AUTHORIZATION`, `RETURN`,
          #     `RETURN_REVERSAL`.
          #   - `LIABILITY_SHIFT`: Indicates whether chargeback liability shift to the issuer
          #     applies to the transaction. Valid values are `NONE`, `3DS_AUTHENTICATED`, or
          #     `TOKEN_AUTHENTICATED`.
          #   - `PAN_ENTRY_MODE`: The method by which the cardholder's primary account number
          #     (PAN) was entered. Valid values are `AUTO_ENTRY`, `BAR_CODE`, `CONTACTLESS`,
          #     `ECOMMERCE`, `ERROR_KEYED`, `ERROR_MAGNETIC_STRIPE`, `ICC`, `KEY_ENTERED`,
          #     `MAGNETIC_STRIPE`, `MANUAL`, `OCR`, `SECURE_CARDLESS`, `UNSPECIFIED`,
          #     `UNKNOWN`, or `CREDENTIAL_ON_FILE`.
          #   - `WALLET_TYPE`: For transactions using a digital wallet token, indicates the
          #     source of the token. Valid values are `APPLE_PAY`, `GOOGLE_PAY`,
          #     `SAMSUNG_PAY`, `MASTERPASS`, `MERCHANT`, `OTHER`, `NONE`.
          #   - `CARD_AGE`: The age of the card in seconds at the time of the transaction.
          #   - `ACCOUNT_AGE`: The age of the account in seconds at the time of the
          #     transaction.
          #   - `SPEND_VELOCITY_COUNT`: The number of transactions matching the specified
          #     filters within the given period. Requires `parameters` with `scope`, `period`,
          #     and optional `filters`.
          #   - `SPEND_VELOCITY_AMOUNT`: The total spend amount (in cents) of transactions
          #     matching the specified filters within the given period. Requires `parameters`
          #     with `scope`, `period`, and optional `filters`.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute]
          required :attribute,
                   enum: -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute }

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

          # @!attribute parameters
          #   Additional parameters for spend velocity attributes. Required when `attribute`
          #   is `SPEND_VELOCITY_COUNT` or `SPEND_VELOCITY_AMOUNT`. Not used for other
          #   attributes.
          #
          #   @return [Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters, nil]
          optional :parameters,
                   -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters }

          # @!method initialize(attribute:, operation:, value:, parameters: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition}
          #   for more details.
          #
          #   @param attribute [Symbol, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute] The attribute to target.
          #
          #   @param operation [Symbol, Lithic::Models::AuthRules::ConditionalOperation] The operation to apply to the attribute
          #
          #   @param value [String, Integer, Array<String>, Time] A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters] Additional parameters for spend velocity attributes. Required when `attribute` i

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
          #   given authorization. Scores are on a range of 0-999, with 0 representing the
          #   lowest risk and 999 representing the highest risk. For Visa transactions,
          #   where the raw score has a range of 0-99, Lithic will normalize the score by
          #   multiplying the raw score by 10x.
          # - `TRANSACTION_STATUS`: The status of the transaction. Valid values are
          #   `PENDING`, `VOIDED`, `SETTLING`, `SETTLED`, `BOUNCED`, `RETURNED`, `DECLINED`,
          #   `EXPIRED`.
          # - `LAST_EVENT_TYPE`: The type of the most recent event on the transaction. Valid
          #   values are `AUTHORIZATION`, `AUTHORIZATION_ADVICE`, `AUTHORIZATION_EXPIRY`,
          #   `AUTHORIZATION_REVERSAL`, `BALANCE_INQUIRY`, `CLEARING`, `CORRECTION_CREDIT`,
          #   `CORRECTION_DEBIT`, `CREDIT_AUTHORIZATION`, `CREDIT_AUTHORIZATION_ADVICE`,
          #   `FINANCIAL_AUTHORIZATION`, `FINANCIAL_CREDIT_AUTHORIZATION`, `RETURN`,
          #   `RETURN_REVERSAL`.
          # - `LIABILITY_SHIFT`: Indicates whether chargeback liability shift to the issuer
          #   applies to the transaction. Valid values are `NONE`, `3DS_AUTHENTICATED`, or
          #   `TOKEN_AUTHENTICATED`.
          # - `PAN_ENTRY_MODE`: The method by which the cardholder's primary account number
          #   (PAN) was entered. Valid values are `AUTO_ENTRY`, `BAR_CODE`, `CONTACTLESS`,
          #   `ECOMMERCE`, `ERROR_KEYED`, `ERROR_MAGNETIC_STRIPE`, `ICC`, `KEY_ENTERED`,
          #   `MAGNETIC_STRIPE`, `MANUAL`, `OCR`, `SECURE_CARDLESS`, `UNSPECIFIED`,
          #   `UNKNOWN`, or `CREDENTIAL_ON_FILE`.
          # - `WALLET_TYPE`: For transactions using a digital wallet token, indicates the
          #   source of the token. Valid values are `APPLE_PAY`, `GOOGLE_PAY`,
          #   `SAMSUNG_PAY`, `MASTERPASS`, `MERCHANT`, `OTHER`, `NONE`.
          # - `CARD_AGE`: The age of the card in seconds at the time of the transaction.
          # - `ACCOUNT_AGE`: The age of the account in seconds at the time of the
          #   transaction.
          # - `SPEND_VELOCITY_COUNT`: The number of transactions matching the specified
          #   filters within the given period. Requires `parameters` with `scope`, `period`,
          #   and optional `filters`.
          # - `SPEND_VELOCITY_AMOUNT`: The total spend amount (in cents) of transactions
          #   matching the specified filters within the given period. Requires `parameters`
          #   with `scope`, `period`, and optional `filters`.
          #
          # @see Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition#attribute
          module Attribute
            extend Lithic::Internal::Type::Enum

            MCC = :MCC
            COUNTRY = :COUNTRY
            CURRENCY = :CURRENCY
            MERCHANT_ID = :MERCHANT_ID
            DESCRIPTOR = :DESCRIPTOR
            TRANSACTION_AMOUNT = :TRANSACTION_AMOUNT
            RISK_SCORE = :RISK_SCORE
            TRANSACTION_STATUS = :TRANSACTION_STATUS
            LAST_EVENT_TYPE = :LAST_EVENT_TYPE
            LIABILITY_SHIFT = :LIABILITY_SHIFT
            PAN_ENTRY_MODE = :PAN_ENTRY_MODE
            WALLET_TYPE = :WALLET_TYPE
            CARD_AGE = :CARD_AGE
            ACCOUNT_AGE = :ACCOUNT_AGE
            SPEND_VELOCITY_COUNT = :SPEND_VELOCITY_COUNT
            SPEND_VELOCITY_AMOUNT = :SPEND_VELOCITY_AMOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition#parameters
          class Parameters < Lithic::Internal::Type::BaseModel
            # @!attribute filters
            #
            #   @return [Lithic::Models::AuthRules::SpendVelocityFilters, nil]
            optional :filters, -> { Lithic::AuthRules::SpendVelocityFilters }

            # @!attribute period
            #   The time period over which to calculate the spend velocity.
            #
            #   @return [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear, nil]
            optional :period, union: -> { Lithic::AuthRules::VelocityLimitPeriod }

            # @!attribute scope
            #   The entity scope to evaluate the attribute against.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope, nil]
            optional :scope,
                     enum: -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope }

            # @!method initialize(filters: nil, period: nil, scope: nil)
            #   Additional parameters for spend velocity attributes. Required when `attribute`
            #   is `SPEND_VELOCITY_COUNT` or `SPEND_VELOCITY_AMOUNT`. Not used for other
            #   attributes.
            #
            #   @param filters [Lithic::Models::AuthRules::SpendVelocityFilters]
            #
            #   @param period [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear] The time period over which to calculate the spend velocity.
            #
            #   @param scope [Symbol, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope] The entity scope to evaluate the attribute against.

            # The entity scope to evaluate the attribute against.
            #
            # @see Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters#scope
            module Scope
              extend Lithic::Internal::Type::Enum

              CARD = :CARD
              ACCOUNT = :ACCOUNT
              GLOBAL = :GLOBAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
