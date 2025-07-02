# typed: strong

module Lithic
  module Models
    module AuthRules
      class Conditional3DSActionParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::Conditional3DSActionParameters,
              Lithic::Internal::AnyHash
            )
          end

        # The action to take if the conditions are met.
        sig do
          returns(
            Lithic::AuthRules::Conditional3DSActionParameters::Action::OrSymbol
          )
        end
        attr_accessor :action

        sig do
          returns(
            T::Array[
              Lithic::AuthRules::Conditional3DSActionParameters::Condition
            ]
          )
        end
        attr_accessor :conditions

        sig do
          params(
            action:
              Lithic::AuthRules::Conditional3DSActionParameters::Action::OrSymbol,
            conditions:
              T::Array[
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::OrHash
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
                Lithic::AuthRules::Conditional3DSActionParameters::Action::OrSymbol,
              conditions:
                T::Array[
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition
                ]
            }
          )
        end
        def to_hash
        end

        # The action to take if the conditions are met.
        module Action
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::AuthRules::Conditional3DSActionParameters::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DECLINE =
            T.let(
              :DECLINE,
              Lithic::AuthRules::Conditional3DSActionParameters::Action::TaggedSymbol
            )
          CHALLENGE =
            T.let(
              :CHALLENGE,
              Lithic::AuthRules::Conditional3DSActionParameters::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::Conditional3DSActionParameters::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Condition < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::Conditional3DSActionParameters::Condition,
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
          #   fee on behalf of the cardholder.
          # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
          #   given authentication. Scores are on a range of 0-999, with 0 representing the
          #   lowest risk and 999 representing the highest risk. For Visa transactions,
          #   where the raw score has a range of 0-99, Lithic will normalize the score by
          #   multiplying the raw score by 10x.
          # - `MESSAGE_CATEGORY`: The category of the authentication being processed.
          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::OrSymbol
              )
            )
          end
          attr_reader :attribute

          sig do
            params(
              attribute:
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::OrSymbol
            ).void
          end
          attr_writer :attribute

          # The operation to apply to the attribute
          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::OrSymbol
              )
            )
          end
          attr_reader :operation

          sig do
            params(
              operation:
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::OrSymbol
            ).void
          end
          attr_writer :operation

          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Value::Variants
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Value::Variants
            ).void
          end
          attr_writer :value

          sig do
            params(
              attribute:
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::OrSymbol,
              operation:
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::OrSymbol,
              value:
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Value::Variants
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
            #   fee on behalf of the cardholder.
            # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
            #   given authentication. Scores are on a range of 0-999, with 0 representing the
            #   lowest risk and 999 representing the highest risk. For Visa transactions,
            #   where the raw score has a range of 0-99, Lithic will normalize the score by
            #   multiplying the raw score by 10x.
            # - `MESSAGE_CATEGORY`: The category of the authentication being processed.
            attribute: nil,
            # The operation to apply to the attribute
            operation: nil,
            # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
            value: nil
          )
          end

          sig do
            override.returns(
              {
                attribute:
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::OrSymbol,
                operation:
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::OrSymbol,
                value:
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition::Value::Variants
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
          #   fee on behalf of the cardholder.
          # - `RISK_SCORE`: Network-provided score assessing risk level associated with a
          #   given authentication. Scores are on a range of 0-999, with 0 representing the
          #   lowest risk and 999 representing the highest risk. For Visa transactions,
          #   where the raw score has a range of 0-99, Lithic will normalize the score by
          #   multiplying the raw score by 10x.
          # - `MESSAGE_CATEGORY`: The category of the authentication being processed.
          module Attribute
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MCC =
              T.let(
                :MCC,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
              )
            COUNTRY =
              T.let(
                :COUNTRY,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :CURRENCY,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
              )
            MERCHANT_ID =
              T.let(
                :MERCHANT_ID,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
              )
            DESCRIPTOR =
              T.let(
                :DESCRIPTOR,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
              )
            TRANSACTION_AMOUNT =
              T.let(
                :TRANSACTION_AMOUNT,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
              )
            RISK_SCORE =
              T.let(
                :RISK_SCORE,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
              )
            MESSAGE_CATEGORY =
              T.let(
                :MESSAGE_CATEGORY,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The operation to apply to the attribute
          module Operation
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IS_ONE_OF =
              T.let(
                :IS_ONE_OF,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
              )
            IS_NOT_ONE_OF =
              T.let(
                :IS_NOT_ONE_OF,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
              )
            MATCHES =
              T.let(
                :MATCHES,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
              )
            DOES_NOT_MATCH =
              T.let(
                :DOES_NOT_MATCH,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
              )
            IS_GREATER_THAN =
              T.let(
                :IS_GREATER_THAN,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
              )
            IS_LESS_THAN =
              T.let(
                :IS_LESS_THAN,
                Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          module Value
            extend Lithic::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer, T::Array[String]) }

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::Conditional3DSActionParameters::Condition::Value::Variants
                ]
              )
            end
            def self.variants
            end

            StringArray =
              T.let(
                Lithic::Internal::Type::ArrayOf[String],
                Lithic::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
