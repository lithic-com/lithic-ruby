# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalCardTransactionUpdateActionParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
              Lithic::Internal::AnyHash
            )
          end

        # The action to take if the conditions are met.
        sig do
          returns(
            T.any(
              Lithic::AuthRules::CardTransactionUpdateAction::TagAction,
              Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction
            )
          )
        end
        attr_accessor :action

        sig do
          returns(
            T::Array[
              Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition
            ]
          )
        end
        attr_accessor :conditions

        sig do
          params(
            action:
              T.any(
                Lithic::AuthRules::CardTransactionUpdateAction::TagAction::OrHash,
                Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::OrHash
              ),
            conditions:
              T::Array[
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::OrHash
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
                  Lithic::AuthRules::CardTransactionUpdateAction::TagAction,
                  Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction
                ),
              conditions:
                T::Array[
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition
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
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition,
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
          # - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
          #   fee field in the settlement/cardholder billing currency. This is the amount
          #   the issuer should authorize against unless the issuer is paying the acquirer
          #   fee on behalf of the cardholder. Use an integer value.
          # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
          #   given authorization. Scores are on a range of 0-999, with 0 representing the
          #   lowest risk and 999 representing the highest risk. For Visa transactions,
          #   where the raw score has a range of 0-99, Lithic will normalize the score by
          #   multiplying the raw score by 10x. Use an integer value.
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
          # - `CARD_AGE`: The age of the card in seconds at the time of the transaction. Use
          #   an integer value.
          # - `ACCOUNT_AGE`: The age of the account in seconds at the time of the
          #   transaction. Use an integer value.
          # - `SPEND_VELOCITY_COUNT`: The number of transactions matching the specified
          #   filters within the given period. Requires `parameters` with `scope`, `period`,
          #   and optional `filters`. Use an integer value.
          # - `SPEND_VELOCITY_AMOUNT`: The total spend amount (in cents) of transactions
          #   matching the specified filters within the given period. Requires `parameters`
          #   with `scope`, `period`, and optional `filters`. Use an integer value.
          sig do
            returns(
              Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::OrSymbol
            )
          end
          attr_accessor :attribute

          # The operation to apply to the attribute
          sig { returns(Lithic::AuthRules::ConditionalOperation::OrSymbol) }
          attr_accessor :operation

          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          sig { returns(Lithic::AuthRules::ConditionalValue::Variants) }
          attr_accessor :value

          # Additional parameters for spend velocity attributes. Required when `attribute`
          # is `SPEND_VELOCITY_COUNT` or `SPEND_VELOCITY_AMOUNT`. Not used for other
          # attributes.
          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters
              )
            )
          end
          attr_reader :parameters

          sig do
            params(
              parameters:
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::OrHash
            ).void
          end
          attr_writer :parameters

          sig do
            params(
              attribute:
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::OrSymbol,
              operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
              value: Lithic::AuthRules::ConditionalValue::Variants,
              parameters:
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::OrHash
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
            # - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
            #   fee field in the settlement/cardholder billing currency. This is the amount
            #   the issuer should authorize against unless the issuer is paying the acquirer
            #   fee on behalf of the cardholder. Use an integer value.
            # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
            #   given authorization. Scores are on a range of 0-999, with 0 representing the
            #   lowest risk and 999 representing the highest risk. For Visa transactions,
            #   where the raw score has a range of 0-99, Lithic will normalize the score by
            #   multiplying the raw score by 10x. Use an integer value.
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
            # - `CARD_AGE`: The age of the card in seconds at the time of the transaction. Use
            #   an integer value.
            # - `ACCOUNT_AGE`: The age of the account in seconds at the time of the
            #   transaction. Use an integer value.
            # - `SPEND_VELOCITY_COUNT`: The number of transactions matching the specified
            #   filters within the given period. Requires `parameters` with `scope`, `period`,
            #   and optional `filters`. Use an integer value.
            # - `SPEND_VELOCITY_AMOUNT`: The total spend amount (in cents) of transactions
            #   matching the specified filters within the given period. Requires `parameters`
            #   with `scope`, `period`, and optional `filters`. Use an integer value.
            attribute:,
            # The operation to apply to the attribute
            operation:,
            # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
            value:,
            # Additional parameters for spend velocity attributes. Required when `attribute`
            # is `SPEND_VELOCITY_COUNT` or `SPEND_VELOCITY_AMOUNT`. Not used for other
            # attributes.
            parameters: nil
          )
          end

          sig do
            override.returns(
              {
                attribute:
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::OrSymbol,
                operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
                value: Lithic::AuthRules::ConditionalValue::Variants,
                parameters:
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters
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
          # - `TRANSACTION_AMOUNT`: The base transaction amount (in cents) plus the acquirer
          #   fee field in the settlement/cardholder billing currency. This is the amount
          #   the issuer should authorize against unless the issuer is paying the acquirer
          #   fee on behalf of the cardholder. Use an integer value.
          # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
          #   given authorization. Scores are on a range of 0-999, with 0 representing the
          #   lowest risk and 999 representing the highest risk. For Visa transactions,
          #   where the raw score has a range of 0-99, Lithic will normalize the score by
          #   multiplying the raw score by 10x. Use an integer value.
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
          # - `CARD_AGE`: The age of the card in seconds at the time of the transaction. Use
          #   an integer value.
          # - `ACCOUNT_AGE`: The age of the account in seconds at the time of the
          #   transaction. Use an integer value.
          # - `SPEND_VELOCITY_COUNT`: The number of transactions matching the specified
          #   filters within the given period. Requires `parameters` with `scope`, `period`,
          #   and optional `filters`. Use an integer value.
          # - `SPEND_VELOCITY_AMOUNT`: The total spend amount (in cents) of transactions
          #   matching the specified filters within the given period. Requires `parameters`
          #   with `scope`, `period`, and optional `filters`. Use an integer value.
          module Attribute
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MCC =
              T.let(
                :MCC,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            COUNTRY =
              T.let(
                :COUNTRY,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :CURRENCY,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            MERCHANT_ID =
              T.let(
                :MERCHANT_ID,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            DESCRIPTOR =
              T.let(
                :DESCRIPTOR,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            TRANSACTION_AMOUNT =
              T.let(
                :TRANSACTION_AMOUNT,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            RISK_SCORE =
              T.let(
                :RISK_SCORE,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            TRANSACTION_STATUS =
              T.let(
                :TRANSACTION_STATUS,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            LAST_EVENT_TYPE =
              T.let(
                :LAST_EVENT_TYPE,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            LIABILITY_SHIFT =
              T.let(
                :LIABILITY_SHIFT,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            PAN_ENTRY_MODE =
              T.let(
                :PAN_ENTRY_MODE,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            WALLET_TYPE =
              T.let(
                :WALLET_TYPE,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_AGE =
              T.let(
                :CARD_AGE,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            ACCOUNT_AGE =
              T.let(
                :ACCOUNT_AGE,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            SPEND_VELOCITY_COUNT =
              T.let(
                :SPEND_VELOCITY_COUNT,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )
            SPEND_VELOCITY_AMOUNT =
              T.let(
                :SPEND_VELOCITY_AMOUNT,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Attribute::TaggedSymbol
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
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters,
                  Lithic::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Lithic::AuthRules::SpendVelocityFilters)) }
            attr_reader :filters

            sig do
              params(
                filters: Lithic::AuthRules::SpendVelocityFilters::OrHash
              ).void
            end
            attr_writer :filters

            # The time period over which to calculate the spend velocity.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear
                  )
                )
              )
            end
            attr_reader :period

            sig do
              params(
                period:
                  T.any(
                    Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject::OrHash,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay::OrHash,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek::OrHash,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth::OrHash,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear::OrHash
                  )
              ).void
            end
            attr_writer :period

            # The entity scope to evaluate the attribute against.
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope::OrSymbol
                )
              )
            end
            attr_reader :scope

            sig do
              params(
                scope:
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope::OrSymbol
              ).void
            end
            attr_writer :scope

            # Additional parameters for spend velocity attributes. Required when `attribute`
            # is `SPEND_VELOCITY_COUNT` or `SPEND_VELOCITY_AMOUNT`. Not used for other
            # attributes.
            sig do
              params(
                filters: Lithic::AuthRules::SpendVelocityFilters::OrHash,
                period:
                  T.any(
                    Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject::OrHash,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay::OrHash,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek::OrHash,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth::OrHash,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear::OrHash
                  ),
                scope:
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              filters: nil,
              # The time period over which to calculate the spend velocity.
              period: nil,
              # The entity scope to evaluate the attribute against.
              scope: nil
            )
            end

            sig do
              override.returns(
                {
                  filters: Lithic::AuthRules::SpendVelocityFilters,
                  period:
                    T.any(
                      Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject,
                      Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay,
                      Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek,
                      Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth,
                      Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear
                    ),
                  scope:
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope::OrSymbol
                }
              )
            end
            def to_hash
            end

            # The entity scope to evaluate the attribute against.
            module Scope
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CARD =
                T.let(
                  :CARD,
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope::TaggedSymbol
                )
              ACCOUNT =
                T.let(
                  :ACCOUNT,
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope::TaggedSymbol
                )
              GLOBAL =
                T.let(
                  :GLOBAL,
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::Condition::Parameters::Scope::TaggedSymbol
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
