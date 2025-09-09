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
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :account_tokens

        sig { params(account_tokens: T::Array[String]).void }
        attr_writer :account_tokens

        # Business Account tokens to which the Auth Rule applies.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :business_account_tokens

        sig { params(business_account_tokens: T::Array[String]).void }
        attr_writer :business_account_tokens

        # The event stream during which the rule will be evaluated.
        sig do
          returns(
            T.nilable(Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol)
          )
        end
        attr_reader :event_stream

        sig do
          params(
            event_stream:
              Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol
          ).void
        end
        attr_writer :event_stream

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
                Lithic::AuthRules::MerchantLockParameters,
                Lithic::AuthRules::Conditional3DSActionParameters,
                Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters
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
                Lithic::AuthRules::MerchantLockParameters::OrHash,
                Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::OrHash
              )
          ).void
        end
        attr_writer :parameters

        # The type of Auth Rule. For certain rule types, this determines the event stream
        # during which it will be evaluated. For rules that can be applied to one of
        # several event streams, the effective one is defined by the separate
        # `event_stream` field.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
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
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            account_tokens: T::Array[String],
            business_account_tokens: T::Array[String],
            event_stream:
              Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol,
            name: T.nilable(String),
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::MerchantLockParameters::OrHash,
                Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::OrHash
              ),
            type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Account tokens to which the Auth Rule applies.
          account_tokens: nil,
          # Business Account tokens to which the Auth Rule applies.
          business_account_tokens: nil,
          # The event stream during which the rule will be evaluated.
          event_stream: nil,
          # Auth Rule Name
          name: nil,
          # Parameters for the Auth Rule
          parameters: nil,
          # The type of Auth Rule. For certain rule types, this determines the event stream
          # during which it will be evaluated. For rules that can be applied to one of
          # several event streams, the effective one is defined by the separate
          # `event_stream` field.
          #
          # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
          # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
          # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
          # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
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
              business_account_tokens: T::Array[String],
              event_stream:
                Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol,
              name: T.nilable(String),
              parameters:
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::AuthRules::MerchantLockParameters,
                  Lithic::AuthRules::Conditional3DSActionParameters,
                  Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters
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

        # The event stream during which the rule will be evaluated.
        module EventStream
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::V2CreateParams::EventStream)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION =
            T.let(
              :AUTHORIZATION,
              Lithic::AuthRules::V2CreateParams::EventStream::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION =
            T.let(
              :THREE_DS_AUTHENTICATION,
              Lithic::AuthRules::V2CreateParams::EventStream::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::V2CreateParams::EventStream::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::MerchantLockParameters,
                Lithic::AuthRules::Conditional3DSActionParameters,
                Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters
              )
            end

          class ConditionalAuthorizationActionParameters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters,
                  Lithic::Internal::AnyHash
                )
              end

            # The action to take if the conditions are met.
            sig do
              returns(
                Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Action::OrSymbol
              )
            end
            attr_accessor :action

            sig do
              returns(
                T::Array[
                  Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition
                ]
              )
            end
            attr_accessor :conditions

            sig do
              params(
                action:
                  Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Action::OrSymbol,
                conditions:
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::OrHash
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
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Action::OrSymbol,
                  conditions:
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition
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
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DECLINE =
                T.let(
                  :DECLINE,
                  Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
                )
              CHALLENGE =
                T.let(
                  :CHALLENGE,
                  Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
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
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition,
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
              # - `TRANSACTION_INITIATOR`: The entity that initiated the transaction indicates
              #   the source of the token. Valid values are `CARDHOLDER`, `MERCHANT`, `UNKNOWN`.
              sig do
                returns(
                  T.nilable(
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::OrSymbol
                  )
                )
              end
              attr_reader :attribute

              sig do
                params(
                  attribute:
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::OrSymbol
                ).void
              end
              attr_writer :attribute

              # The operation to apply to the attribute
              sig do
                returns(
                  T.nilable(
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::OrSymbol
                  )
                )
              end
              attr_reader :operation

              sig do
                params(
                  operation:
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::OrSymbol
                ).void
              end
              attr_writer :operation

              # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
              sig do
                returns(
                  T.nilable(
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
                  )
                )
              end
              attr_reader :value

              sig do
                params(
                  value:
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
                ).void
              end
              attr_writer :value

              sig do
                params(
                  attribute:
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::OrSymbol,
                  operation:
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::OrSymbol,
                  value:
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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
                # - `TRANSACTION_INITIATOR`: The entity that initiated the transaction indicates
                #   the source of the token. Valid values are `CARDHOLDER`, `MERCHANT`, `UNKNOWN`.
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
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::OrSymbol,
                    operation:
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::OrSymbol,
                    value:
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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
              # - `TRANSACTION_INITIATOR`: The entity that initiated the transaction indicates
              #   the source of the token. Valid values are `CARDHOLDER`, `MERCHANT`, `UNKNOWN`.
              module Attribute
                extend Lithic::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MCC =
                  T.let(
                    :MCC,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                COUNTRY =
                  T.let(
                    :COUNTRY,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                CURRENCY =
                  T.let(
                    :CURRENCY,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                MERCHANT_ID =
                  T.let(
                    :MERCHANT_ID,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                DESCRIPTOR =
                  T.let(
                    :DESCRIPTOR,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                LIABILITY_SHIFT =
                  T.let(
                    :LIABILITY_SHIFT,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                PAN_ENTRY_MODE =
                  T.let(
                    :PAN_ENTRY_MODE,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                TRANSACTION_AMOUNT =
                  T.let(
                    :TRANSACTION_AMOUNT,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                RISK_SCORE =
                  T.let(
                    :RISK_SCORE,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                CARD_TRANSACTION_COUNT_15_M =
                  T.let(
                    :CARD_TRANSACTION_COUNT_15M,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                CARD_TRANSACTION_COUNT_1_H =
                  T.let(
                    :CARD_TRANSACTION_COUNT_1H,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                CARD_TRANSACTION_COUNT_24_H =
                  T.let(
                    :CARD_TRANSACTION_COUNT_24H,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                CARD_STATE =
                  T.let(
                    :CARD_STATE,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                PIN_ENTERED =
                  T.let(
                    :PIN_ENTERED,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                PIN_STATUS =
                  T.let(
                    :PIN_STATUS,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                WALLET_TYPE =
                  T.let(
                    :WALLET_TYPE,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )
                TRANSACTION_INITIATOR =
                  T.let(
                    :TRANSACTION_INITIATOR,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
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
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                IS_ONE_OF =
                  T.let(
                    :IS_ONE_OF,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_NOT_ONE_OF =
                  T.let(
                    :IS_NOT_ONE_OF,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                MATCHES =
                  T.let(
                    :MATCHES,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                DOES_NOT_MATCH =
                  T.let(
                    :DOES_NOT_MATCH,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_EQUAL_TO =
                  T.let(
                    :IS_EQUAL_TO,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_NOT_EQUAL_TO =
                  T.let(
                    :IS_NOT_EQUAL_TO,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_GREATER_THAN =
                  T.let(
                    :IS_GREATER_THAN,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_GREATER_THAN_OR_EQUAL_TO =
                  T.let(
                    :IS_GREATER_THAN_OR_EQUAL_TO,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_LESS_THAN =
                  T.let(
                    :IS_LESS_THAN,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )
                IS_LESS_THAN_OR_EQUAL_TO =
                  T.let(
                    :IS_LESS_THAN_OR_EQUAL_TO,
                    Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
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
                      Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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

        # The type of Auth Rule. For certain rule types, this determines the event stream
        # during which it will be evaluated. For rules that can be applied to one of
        # several event streams, the effective one is defined by the separate
        # `event_stream` field.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
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
          CONDITIONAL_ACTION =
            T.let(
              :CONDITIONAL_ACTION,
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
