# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2CreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::V2CreateParams, Lithic::Internal::AnyHash)
          end

        # Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :account_tokens

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Parameters for the Auth Rule
        sig do
          returns(
            T.nilable(
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters,
                Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters
              )
            )
          )
        end
        attr_reader :parameters

        sig do
          params(
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::OrHash
              )
          ).void
        end
        attr_writer :parameters

        # The type of Auth Rule. Effectively determines the event stream during which it
        # will be evaluated.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
        sig do
          returns(T.nilable(Lithic::AuthRules::V2CreateParams::Type::OrSymbol))
        end
        attr_reader :type

        sig do
          params(type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol).void
        end
        attr_writer :type

        # Card tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :card_tokens

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        attr_accessor :program_level

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_card_tokens

        sig { params(excluded_card_tokens: T::Array[String]).void }
        attr_writer :excluded_card_tokens

        sig do
          params(
            account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            name: T.nilable(String),
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::OrHash
              ),
            type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Account tokens to which the Auth Rule applies.
          account_tokens:,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Auth Rule Name
          name: nil,
          # Parameters for the Auth Rule
          parameters: nil,
          # The type of Auth Rule. Effectively determines the event stream during which it
          # will be evaluated.
          #
          # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
          # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
          # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
          # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
          type: nil,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_tokens: T::Array[String],
              name: T.nilable(String),
              parameters:
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters,
                  Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters
                ),
              type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
              card_tokens: T::Array[String],
              program_level: T::Boolean,
              excluded_card_tokens: T::Array[String],
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters,
                Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters
              )
            end

          class MerchantLockParameters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters,
                  Lithic::Internal::AnyHash
                )
              end

            # A list of merchant locks defining specific merchants or groups of merchants
            # (based on descriptors or IDs) that the lock applies to.
            sig do
              returns(
                T::Array[
                  Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant
                ]
              )
            end
            attr_accessor :merchants

            sig do
              params(
                merchants:
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # A list of merchant locks defining specific merchants or groups of merchants
              # (based on descriptors or IDs) that the lock applies to.
              merchants:
            )
            end

            sig do
              override.returns(
                {
                  merchants:
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant
                    ]
                }
              )
            end
            def to_hash
            end

            class Merchant < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant,
                    Lithic::Internal::AnyHash
                  )
                end

              # A comment or explanation about the merchant, used internally for rule management
              # purposes.
              sig { returns(T.nilable(String)) }
              attr_reader :comment

              sig { params(comment: String).void }
              attr_writer :comment

              # Short description of the merchant, often used to provide more human-readable
              # context about the transaction merchant. This is typically the name or label
              # shown on transaction summaries.
              sig { returns(T.nilable(String)) }
              attr_reader :descriptor

              sig { params(descriptor: String).void }
              attr_writer :descriptor

              # Unique alphanumeric identifier for the payment card acceptor (merchant). This
              # attribute specifies the merchant entity that will be locked or referenced for
              # authorization rules.
              sig { returns(T.nilable(String)) }
              attr_reader :merchant_id

              sig { params(merchant_id: String).void }
              attr_writer :merchant_id

              # Represents a specific merchant lock based on their ID or descriptor. Each
              # merchant object allows transaction rules to work at a granular level and
              # requires at least one of merchant_id or descriptor.
              sig do
                params(
                  comment: String,
                  descriptor: String,
                  merchant_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                # A comment or explanation about the merchant, used internally for rule management
                # purposes.
                comment: nil,
                # Short description of the merchant, often used to provide more human-readable
                # context about the transaction merchant. This is typically the name or label
                # shown on transaction summaries.
                descriptor: nil,
                # Unique alphanumeric identifier for the payment card acceptor (merchant). This
                # attribute specifies the merchant entity that will be locked or referenced for
                # authorization rules.
                merchant_id: nil
              )
              end

              sig do
                override.returns(
                  { comment: String, descriptor: String, merchant_id: String }
                )
              end
              def to_hash
              end
            end
          end

          class Conditional3DSActionParameters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters,
                  Lithic::Internal::AnyHash
                )
              end

            # The action to take if the conditions are met.
            sig do
              returns(
                Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Action::OrSymbol
              )
            end
            attr_accessor :action

            sig do
              returns(
                T::Array[
                  Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition
                ]
              )
            end
            attr_accessor :conditions

            sig do
              params(
                action:
                  Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Action::OrSymbol,
                conditions:
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::OrHash
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
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Action::OrSymbol,
                  conditions:
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition
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
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DECLINE =
                T.let(
                  :DECLINE,
                  Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Action::TaggedSymbol
                )
              CHALLENGE =
                T.let(
                  :CHALLENGE,
                  Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Action::TaggedSymbol
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
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition,
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
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::OrSymbol
                  )
                )
              end
              attr_reader :attribute

              sig do
                params(
                  attribute:
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::OrSymbol
                ).void
              end
              attr_writer :attribute

              # The operation to apply to the attribute
              sig do
                returns(
                  T.nilable(
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::OrSymbol
                  )
                )
              end
              attr_reader :operation

              sig do
                params(
                  operation:
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::OrSymbol
                ).void
              end
              attr_writer :operation

              # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
              sig do
                returns(
                  T.nilable(
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Value::Variants
                  )
                )
              end
              attr_reader :value

              sig do
                params(
                  value:
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Value::Variants
                ).void
              end
              attr_writer :value

              sig do
                params(
                  attribute:
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::OrSymbol,
                  operation:
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::OrSymbol,
                  value:
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Value::Variants
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
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::OrSymbol,
                    operation:
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::OrSymbol,
                    value:
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Value::Variants
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
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MCC =
                  T.let(
                    :MCC,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                  )
                COUNTRY =
                  T.let(
                    :COUNTRY,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                  )
                CURRENCY =
                  T.let(
                    :CURRENCY,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                  )
                MERCHANT_ID =
                  T.let(
                    :MERCHANT_ID,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                  )
                DESCRIPTOR =
                  T.let(
                    :DESCRIPTOR,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                  )
                TRANSACTION_AMOUNT =
                  T.let(
                    :TRANSACTION_AMOUNT,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                  )
                RISK_SCORE =
                  T.let(
                    :RISK_SCORE,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                  )
                MESSAGE_CATEGORY =
                  T.let(
                    :MESSAGE_CATEGORY,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Attribute::TaggedSymbol
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
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                IS_ONE_OF =
                  T.let(
                    :IS_ONE_OF,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_NOT_ONE_OF =
                  T.let(
                    :IS_NOT_ONE_OF,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
                  )
                MATCHES =
                  T.let(
                    :MATCHES,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
                  )
                DOES_NOT_MATCH =
                  T.let(
                    :DOES_NOT_MATCH,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_GREATER_THAN =
                  T.let(
                    :IS_GREATER_THAN,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_LESS_THAN =
                  T.let(
                    :IS_LESS_THAN,
                    Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Operation::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
              module Value
                extend Lithic::Internal::Type::Union

                Variants =
                  T.type_alias { T.any(String, Integer, T::Array[String]) }

                sig do
                  override.returns(
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::Conditional3DSActionParameters::Condition::Value::Variants
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

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2CreateParams::Parameters::Variants]
            )
          end
          def self.variants
          end
        end

        # The type of Auth Rule. Effectively determines the event stream during which it
        # will be evaluated.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::V2CreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONDITIONAL_BLOCK =
            T.let(
              :CONDITIONAL_BLOCK,
              Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol
            )
          VELOCITY_LIMIT =
            T.let(
              :VELOCITY_LIMIT,
              Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol
            )
          MERCHANT_LOCK =
            T.let(
              :MERCHANT_LOCK,
              Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol
            )
          CONDITIONAL_3DS_ACTION =
            T.let(
              :CONDITIONAL_3DS_ACTION,
              Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
