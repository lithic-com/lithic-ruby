# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalACHPaymentUpdateActionParameters < Lithic::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take if the conditions are met.
        #
        #   @return [Lithic::Models::AuthRules::ACHPaymentUpdateAction::TagAction, Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction]
        required :action, union: -> { Lithic::AuthRules::ACHPaymentUpdateAction }

        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition>]
        required :conditions,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition] }

        # @!method initialize(action:, conditions:)
        #   @param action [Lithic::Models::AuthRules::ACHPaymentUpdateAction::TagAction, Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction] The action to take if the conditions are met.
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition>]

        class Condition < Lithic::Internal::Type::BaseModel
          # @!attribute attribute
          #   The attribute to target.
          #
          #   The following attributes may be targeted:
          #
          #   - `TRANSACTION_AMOUNT`: The total amount of the ACH payment in minor units
          #     (cents), calculated as the sum of the settled and pending amounts. Use an
          #     integer value.
          #   - `SEC_CODE`: Standard Entry Class code indicating the type of ACH transaction.
          #     Valid values include PPD (Prearranged Payment and Deposit Entry), CCD
          #     (Corporate Credit or Debit Entry), WEB (Internet-Initiated/Mobile Entry), TEL
          #     (Telephone-Initiated Entry), and others.
          #   - `RETURN_REASON_CODE`: NACHA return reason code associated with the payment
          #     (for example, `R01`).
          #   - `ACCOUNT_AGE`: The age of the account in seconds at the time of the payment.
          #     Use an integer value. For programs where Lithic does not manage or retain
          #     account holder data, this attribute does not evaluate.
          #   - `EXTERNAL_BANK_ACCOUNT_AGE`: The age of the external bank account in seconds
          #     at the time of the payment. Use an integer value.
          #   - `EXTERNAL_BANK_ACCOUNT_VERIFICATION_METHOD`: The method used to verify the
          #     external bank account. Valid values are `MANUAL`, `MICRO_DEPOSIT`, `PRENOTE`,
          #     `EXTERNALLY_VERIFIED`, or `UNVERIFIED`.
          #   - `EXTERNAL_BANK_ACCOUNT_VERIFICATION_STATE`: The verification state of the
          #     external bank account. Valid values are `PENDING`, `ENABLED`,
          #     `FAILED_VERIFICATION`, or `INSUFFICIENT_FUNDS`.
          #   - `EXTERNAL_BANK_ACCOUNT_OWNER_TYPE`: The owner type of the external bank
          #     account. Valid values are `INDIVIDUAL` or `BUSINESS`.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute]
          required :attribute,
                   enum: -> { Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute }

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

          # @!method initialize(attribute:, operation:, value:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition}
          #   for more details.
          #
          #   @param attribute [Symbol, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute] The attribute to target.
          #
          #   @param operation [Symbol, Lithic::Models::AuthRules::ConditionalOperation] The operation to apply to the attribute
          #
          #   @param value [String, Integer, Float, Array<String>, Time] A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`

          # The attribute to target.
          #
          # The following attributes may be targeted:
          #
          # - `TRANSACTION_AMOUNT`: The total amount of the ACH payment in minor units
          #   (cents), calculated as the sum of the settled and pending amounts. Use an
          #   integer value.
          # - `SEC_CODE`: Standard Entry Class code indicating the type of ACH transaction.
          #   Valid values include PPD (Prearranged Payment and Deposit Entry), CCD
          #   (Corporate Credit or Debit Entry), WEB (Internet-Initiated/Mobile Entry), TEL
          #   (Telephone-Initiated Entry), and others.
          # - `RETURN_REASON_CODE`: NACHA return reason code associated with the payment
          #   (for example, `R01`).
          # - `ACCOUNT_AGE`: The age of the account in seconds at the time of the payment.
          #   Use an integer value. For programs where Lithic does not manage or retain
          #   account holder data, this attribute does not evaluate.
          # - `EXTERNAL_BANK_ACCOUNT_AGE`: The age of the external bank account in seconds
          #   at the time of the payment. Use an integer value.
          # - `EXTERNAL_BANK_ACCOUNT_VERIFICATION_METHOD`: The method used to verify the
          #   external bank account. Valid values are `MANUAL`, `MICRO_DEPOSIT`, `PRENOTE`,
          #   `EXTERNALLY_VERIFIED`, or `UNVERIFIED`.
          # - `EXTERNAL_BANK_ACCOUNT_VERIFICATION_STATE`: The verification state of the
          #   external bank account. Valid values are `PENDING`, `ENABLED`,
          #   `FAILED_VERIFICATION`, or `INSUFFICIENT_FUNDS`.
          # - `EXTERNAL_BANK_ACCOUNT_OWNER_TYPE`: The owner type of the external bank
          #   account. Valid values are `INDIVIDUAL` or `BUSINESS`.
          #
          # @see Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition#attribute
          module Attribute
            extend Lithic::Internal::Type::Enum

            TRANSACTION_AMOUNT = :TRANSACTION_AMOUNT
            SEC_CODE = :SEC_CODE
            RETURN_REASON_CODE = :RETURN_REASON_CODE
            ACCOUNT_AGE = :ACCOUNT_AGE
            EXTERNAL_BANK_ACCOUNT_AGE = :EXTERNAL_BANK_ACCOUNT_AGE
            EXTERNAL_BANK_ACCOUNT_VERIFICATION_METHOD = :EXTERNAL_BANK_ACCOUNT_VERIFICATION_METHOD
            EXTERNAL_BANK_ACCOUNT_VERIFICATION_STATE = :EXTERNAL_BANK_ACCOUNT_VERIFICATION_STATE
            EXTERNAL_BANK_ACCOUNT_OWNER_TYPE = :EXTERNAL_BANK_ACCOUNT_OWNER_TYPE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
