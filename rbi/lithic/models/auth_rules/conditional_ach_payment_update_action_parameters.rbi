# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalACHPaymentUpdateActionParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters,
              Lithic::Internal::AnyHash
            )
          end

        # The action to take if the conditions are met.
        sig do
          returns(
            T.any(
              Lithic::AuthRules::ACHPaymentUpdateAction::TagAction,
              Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction
            )
          )
        end
        attr_accessor :action

        sig do
          returns(
            T::Array[
              Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition
            ]
          )
        end
        attr_accessor :conditions

        sig do
          params(
            action:
              T.any(
                Lithic::AuthRules::ACHPaymentUpdateAction::TagAction::OrHash,
                Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::OrHash
              ),
            conditions:
              T::Array[
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The action to take if the conditions are met.
          action:,
          conditions:
        )
        end

        sig do
          override.returns(
            {
              action:
                T.any(
                  Lithic::AuthRules::ACHPaymentUpdateAction::TagAction,
                  Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction
                ),
              conditions:
                T::Array[
                  Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition
                ]
            }
          )
        end
        def to_hash
        end

        class Condition < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition,
                Lithic::Internal::AnyHash
              )
            end

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
          # - `ACH_EVENT_TYPE`: The type of ACH payment event being evaluated. Valid values
          #   include `ACH_ORIGINATION_INITIATED`, `ACH_ORIGINATION_REVIEWED`,
          #   `ACH_ORIGINATION_CANCELLED`, `ACH_ORIGINATION_PROCESSED`,
          #   `ACH_ORIGINATION_SETTLED`, `ACH_ORIGINATION_RELEASED`,
          #   `ACH_ORIGINATION_REJECTED`, `ACH_RECEIPT_PROCESSED`, `ACH_RECEIPT_SETTLED`,
          #   `ACH_RECEIPT_RELEASED`, `ACH_RECEIPT_RELEASED_EARLY`, `ACH_RETURN_INITIATED`,
          #   `ACH_RETURN_PROCESSED`, `ACH_RETURN_SETTLED`, and `ACH_RETURN_REJECTED`.
          sig do
            returns(
              Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::OrSymbol
            )
          end
          attr_accessor :attribute

          # The operation to apply to the attribute
          sig { returns(Lithic::AuthRules::ConditionalOperation::OrSymbol) }
          attr_accessor :operation

          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          sig { returns(Lithic::AuthRules::ConditionalValue::Variants) }
          attr_accessor :value

          sig do
            params(
              attribute:
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::OrSymbol,
              operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
              value: Lithic::AuthRules::ConditionalValue::Variants
            ).returns(T.attached_class)
          end
          def self.new(
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
            # - `ACH_EVENT_TYPE`: The type of ACH payment event being evaluated. Valid values
            #   include `ACH_ORIGINATION_INITIATED`, `ACH_ORIGINATION_REVIEWED`,
            #   `ACH_ORIGINATION_CANCELLED`, `ACH_ORIGINATION_PROCESSED`,
            #   `ACH_ORIGINATION_SETTLED`, `ACH_ORIGINATION_RELEASED`,
            #   `ACH_ORIGINATION_REJECTED`, `ACH_RECEIPT_PROCESSED`, `ACH_RECEIPT_SETTLED`,
            #   `ACH_RECEIPT_RELEASED`, `ACH_RECEIPT_RELEASED_EARLY`, `ACH_RETURN_INITIATED`,
            #   `ACH_RETURN_PROCESSED`, `ACH_RETURN_SETTLED`, and `ACH_RETURN_REJECTED`.
            attribute:,
            # The operation to apply to the attribute
            operation:,
            # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
            value:
          )
          end

          sig do
            override.returns(
              {
                attribute:
                  Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::OrSymbol,
                operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
                value: Lithic::AuthRules::ConditionalValue::Variants
              }
            )
          end
          def to_hash
          end

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
          # - `ACH_EVENT_TYPE`: The type of ACH payment event being evaluated. Valid values
          #   include `ACH_ORIGINATION_INITIATED`, `ACH_ORIGINATION_REVIEWED`,
          #   `ACH_ORIGINATION_CANCELLED`, `ACH_ORIGINATION_PROCESSED`,
          #   `ACH_ORIGINATION_SETTLED`, `ACH_ORIGINATION_RELEASED`,
          #   `ACH_ORIGINATION_REJECTED`, `ACH_RECEIPT_PROCESSED`, `ACH_RECEIPT_SETTLED`,
          #   `ACH_RECEIPT_RELEASED`, `ACH_RECEIPT_RELEASED_EARLY`, `ACH_RETURN_INITIATED`,
          #   `ACH_RETURN_PROCESSED`, `ACH_RETURN_SETTLED`, and `ACH_RETURN_REJECTED`.
          module Attribute
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TRANSACTION_AMOUNT =
              T.let(
                :TRANSACTION_AMOUNT,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            SEC_CODE =
              T.let(
                :SEC_CODE,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            RETURN_REASON_CODE =
              T.let(
                :RETURN_REASON_CODE,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            ACCOUNT_AGE =
              T.let(
                :ACCOUNT_AGE,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            EXTERNAL_BANK_ACCOUNT_AGE =
              T.let(
                :EXTERNAL_BANK_ACCOUNT_AGE,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            EXTERNAL_BANK_ACCOUNT_VERIFICATION_METHOD =
              T.let(
                :EXTERNAL_BANK_ACCOUNT_VERIFICATION_METHOD,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            EXTERNAL_BANK_ACCOUNT_VERIFICATION_STATE =
              T.let(
                :EXTERNAL_BANK_ACCOUNT_VERIFICATION_STATE,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            EXTERNAL_BANK_ACCOUNT_OWNER_TYPE =
              T.let(
                :EXTERNAL_BANK_ACCOUNT_OWNER_TYPE,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            ACH_EVENT_TYPE =
              T.let(
                :ACH_EVENT_TYPE,
                Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters::Condition::Attribute::TaggedSymbol
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
