# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ListResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AuthRules::V2ListResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Auth Rule Token
        sig { returns(String) }
        attr_accessor :token

        # Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :account_tokens

        # Business Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :business_account_tokens

        # Card tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :card_tokens

        sig do
          returns(
            T.nilable(Lithic::Models::AuthRules::V2ListResponse::CurrentVersion)
          )
        end
        attr_reader :current_version

        sig do
          params(
            current_version:
              T.nilable(
                Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::OrHash
              )
          ).void
        end
        attr_writer :current_version

        sig do
          returns(
            T.nilable(Lithic::Models::AuthRules::V2ListResponse::DraftVersion)
          )
        end
        attr_reader :draft_version

        sig do
          params(
            draft_version:
              T.nilable(
                Lithic::Models::AuthRules::V2ListResponse::DraftVersion::OrHash
              )
          ).void
        end
        attr_writer :draft_version

        # The event stream during which the rule will be evaluated.
        sig do
          returns(
            Lithic::Models::AuthRules::V2ListResponse::EventStream::TaggedSymbol
          )
        end
        attr_accessor :event_stream

        # Indicates whether this auth rule is managed by Lithic. If true, the rule cannot
        # be modified or deleted by the user
        sig { returns(T::Boolean) }
        attr_accessor :lithic_managed

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        attr_accessor :program_level

        # The state of the Auth Rule
        sig do
          returns(
            Lithic::Models::AuthRules::V2ListResponse::State::TaggedSymbol
          )
        end
        attr_accessor :state

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
          returns(Lithic::Models::AuthRules::V2ListResponse::Type::TaggedSymbol)
        end
        attr_accessor :type

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_card_tokens

        sig { params(excluded_card_tokens: T::Array[String]).void }
        attr_writer :excluded_card_tokens

        sig do
          params(
            token: String,
            account_tokens: T::Array[String],
            business_account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            current_version:
              T.nilable(
                Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::OrHash
              ),
            draft_version:
              T.nilable(
                Lithic::Models::AuthRules::V2ListResponse::DraftVersion::OrHash
              ),
            event_stream:
              Lithic::Models::AuthRules::V2ListResponse::EventStream::OrSymbol,
            lithic_managed: T::Boolean,
            name: T.nilable(String),
            program_level: T::Boolean,
            state: Lithic::Models::AuthRules::V2ListResponse::State::OrSymbol,
            type: Lithic::Models::AuthRules::V2ListResponse::Type::OrSymbol,
            excluded_card_tokens: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Auth Rule Token
          token:,
          # Account tokens to which the Auth Rule applies.
          account_tokens:,
          # Business Account tokens to which the Auth Rule applies.
          business_account_tokens:,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          current_version:,
          draft_version:,
          # The event stream during which the rule will be evaluated.
          event_stream:,
          # Indicates whether this auth rule is managed by Lithic. If true, the rule cannot
          # be modified or deleted by the user
          lithic_managed:,
          # Auth Rule Name
          name:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # The state of the Auth Rule
          state:,
          # The type of Auth Rule. For certain rule types, this determines the event stream
          # during which it will be evaluated. For rules that can be applied to one of
          # several event streams, the effective one is defined by the separate
          # `event_stream` field.
          #
          # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
          # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
          # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
          # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
          type:,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              account_tokens: T::Array[String],
              business_account_tokens: T::Array[String],
              card_tokens: T::Array[String],
              current_version:
                T.nilable(
                  Lithic::Models::AuthRules::V2ListResponse::CurrentVersion
                ),
              draft_version:
                T.nilable(
                  Lithic::Models::AuthRules::V2ListResponse::DraftVersion
                ),
              event_stream:
                Lithic::Models::AuthRules::V2ListResponse::EventStream::TaggedSymbol,
              lithic_managed: T::Boolean,
              name: T.nilable(String),
              program_level: T::Boolean,
              state:
                Lithic::Models::AuthRules::V2ListResponse::State::TaggedSymbol,
              type:
                Lithic::Models::AuthRules::V2ListResponse::Type::TaggedSymbol,
              excluded_card_tokens: T::Array[String]
            }
          )
        end
        def to_hash
        end

        class CurrentVersion < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::AuthRules::V2ListResponse::CurrentVersion,
                Lithic::Internal::AnyHash
              )
            end

          # Parameters for the Auth Rule
          sig do
            returns(
              Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Variants
            )
          end
          attr_accessor :parameters

          # The version of the rule, this is incremented whenever the rule's parameters
          # change.
          sig { returns(Integer) }
          attr_accessor :version

          sig do
            params(
              parameters:
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                  Lithic::AuthRules::VelocityLimitParams::OrHash,
                  Lithic::AuthRules::MerchantLockParameters::OrHash,
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                  Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::OrHash
                ),
              version: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Parameters for the Auth Rule
            parameters:,
            # The version of the rule, this is incremented whenever the rule's parameters
            # change.
            version:
          )
          end

          sig do
            override.returns(
              {
                parameters:
                  Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Variants,
                version: Integer
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
                  Lithic::AuthRules::MerchantLockParameters,
                  Lithic::AuthRules::Conditional3DSActionParameters,
                  Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters
                )
              end

            class ConditionalAuthorizationActionParameters < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters,
                    Lithic::Internal::AnyHash
                  )
                end

              # The action to take if the conditions are met.
              sig do
                returns(
                  Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
                )
              end
              attr_accessor :action

              sig do
                returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition
                  ]
                )
              end
              attr_accessor :conditions

              sig do
                params(
                  action:
                    Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action::OrSymbol,
                  conditions:
                    T::Array[
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::OrHash
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
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol,
                    conditions:
                      T::Array[
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition
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
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DECLINE =
                  T.let(
                    :DECLINE,
                    Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
                  )
                CHALLENGE =
                  T.let(
                    :CHALLENGE,
                    Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
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
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition,
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
                # - `CASH_AMOUNT`: The cash amount of the transaction in minor units (cents). This
                #   represents the amount of cash being withdrawn or advanced.
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
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  )
                end
                attr_reader :attribute

                sig do
                  params(
                    attribute:
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::OrSymbol
                  ).void
                end
                attr_writer :attribute

                # The operation to apply to the attribute
                sig do
                  returns(
                    T.nilable(
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  )
                end
                attr_reader :operation

                sig do
                  params(
                    operation:
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::OrSymbol
                  ).void
                end
                attr_writer :operation

                # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                sig do
                  returns(
                    T.nilable(
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
                    )
                  )
                end
                attr_reader :value

                sig do
                  params(
                    value:
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
                  ).void
                end
                attr_writer :value

                sig do
                  params(
                    attribute:
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::OrSymbol,
                    operation:
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::OrSymbol,
                    value:
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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
                  # - `CASH_AMOUNT`: The cash amount of the transaction in minor units (cents). This
                  #   represents the amount of cash being withdrawn or advanced.
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
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol,
                      operation:
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol,
                      value:
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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
                # - `CASH_AMOUNT`: The cash amount of the transaction in minor units (cents). This
                #   represents the amount of cash being withdrawn or advanced.
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
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  MCC =
                    T.let(
                      :MCC,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  COUNTRY =
                    T.let(
                      :COUNTRY,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :CURRENCY,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  MERCHANT_ID =
                    T.let(
                      :MERCHANT_ID,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  DESCRIPTOR =
                    T.let(
                      :DESCRIPTOR,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  LIABILITY_SHIFT =
                    T.let(
                      :LIABILITY_SHIFT,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  PAN_ENTRY_MODE =
                    T.let(
                      :PAN_ENTRY_MODE,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  TRANSACTION_AMOUNT =
                    T.let(
                      :TRANSACTION_AMOUNT,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CASH_AMOUNT =
                    T.let(
                      :CASH_AMOUNT,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  RISK_SCORE =
                    T.let(
                      :RISK_SCORE,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CARD_TRANSACTION_COUNT_15_M =
                    T.let(
                      :CARD_TRANSACTION_COUNT_15M,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CARD_TRANSACTION_COUNT_1_H =
                    T.let(
                      :CARD_TRANSACTION_COUNT_1H,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CARD_TRANSACTION_COUNT_24_H =
                    T.let(
                      :CARD_TRANSACTION_COUNT_24H,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CARD_STATE =
                    T.let(
                      :CARD_STATE,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  PIN_ENTERED =
                    T.let(
                      :PIN_ENTERED,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  PIN_STATUS =
                    T.let(
                      :PIN_STATUS,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  WALLET_TYPE =
                    T.let(
                      :WALLET_TYPE,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  TRANSACTION_INITIATOR =
                    T.let(
                      :TRANSACTION_INITIATOR,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
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
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  IS_ONE_OF =
                    T.let(
                      :IS_ONE_OF,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_NOT_ONE_OF =
                    T.let(
                      :IS_NOT_ONE_OF,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  MATCHES =
                    T.let(
                      :MATCHES,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  DOES_NOT_MATCH =
                    T.let(
                      :DOES_NOT_MATCH,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_EQUAL_TO =
                    T.let(
                      :IS_EQUAL_TO,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_NOT_EQUAL_TO =
                    T.let(
                      :IS_NOT_EQUAL_TO,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_GREATER_THAN =
                    T.let(
                      :IS_GREATER_THAN,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_GREATER_THAN_OR_EQUAL_TO =
                    T.let(
                      :IS_GREATER_THAN_OR_EQUAL_TO,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_LESS_THAN =
                    T.let(
                      :IS_LESS_THAN,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_LESS_THAN_OR_EQUAL_TO =
                    T.let(
                      :IS_LESS_THAN_OR_EQUAL_TO,
                      Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
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
                        Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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
                T::Array[
                  Lithic::Models::AuthRules::V2ListResponse::CurrentVersion::Parameters::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class DraftVersion < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::AuthRules::V2ListResponse::DraftVersion,
                Lithic::Internal::AnyHash
              )
            end

          # Parameters for the Auth Rule
          sig do
            returns(
              Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Variants
            )
          end
          attr_accessor :parameters

          # The version of the rule, this is incremented whenever the rule's parameters
          # change.
          sig { returns(Integer) }
          attr_accessor :version

          sig do
            params(
              parameters:
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                  Lithic::AuthRules::VelocityLimitParams::OrHash,
                  Lithic::AuthRules::MerchantLockParameters::OrHash,
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                  Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::OrHash
                ),
              version: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Parameters for the Auth Rule
            parameters:,
            # The version of the rule, this is incremented whenever the rule's parameters
            # change.
            version:
          )
          end

          sig do
            override.returns(
              {
                parameters:
                  Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Variants,
                version: Integer
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
                  Lithic::AuthRules::MerchantLockParameters,
                  Lithic::AuthRules::Conditional3DSActionParameters,
                  Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters
                )
              end

            class ConditionalAuthorizationActionParameters < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters,
                    Lithic::Internal::AnyHash
                  )
                end

              # The action to take if the conditions are met.
              sig do
                returns(
                  Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
                )
              end
              attr_accessor :action

              sig do
                returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition
                  ]
                )
              end
              attr_accessor :conditions

              sig do
                params(
                  action:
                    Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action::OrSymbol,
                  conditions:
                    T::Array[
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::OrHash
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
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol,
                    conditions:
                      T::Array[
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition
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
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DECLINE =
                  T.let(
                    :DECLINE,
                    Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
                  )
                CHALLENGE =
                  T.let(
                    :CHALLENGE,
                    Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
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
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition,
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
                # - `CASH_AMOUNT`: The cash amount of the transaction in minor units (cents). This
                #   represents the amount of cash being withdrawn or advanced.
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
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  )
                end
                attr_reader :attribute

                sig do
                  params(
                    attribute:
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::OrSymbol
                  ).void
                end
                attr_writer :attribute

                # The operation to apply to the attribute
                sig do
                  returns(
                    T.nilable(
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  )
                end
                attr_reader :operation

                sig do
                  params(
                    operation:
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::OrSymbol
                  ).void
                end
                attr_writer :operation

                # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
                sig do
                  returns(
                    T.nilable(
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
                    )
                  )
                end
                attr_reader :value

                sig do
                  params(
                    value:
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
                  ).void
                end
                attr_writer :value

                sig do
                  params(
                    attribute:
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::OrSymbol,
                    operation:
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::OrSymbol,
                    value:
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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
                  # - `CASH_AMOUNT`: The cash amount of the transaction in minor units (cents). This
                  #   represents the amount of cash being withdrawn or advanced.
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
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol,
                      operation:
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol,
                      value:
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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
                # - `CASH_AMOUNT`: The cash amount of the transaction in minor units (cents). This
                #   represents the amount of cash being withdrawn or advanced.
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
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  MCC =
                    T.let(
                      :MCC,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  COUNTRY =
                    T.let(
                      :COUNTRY,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :CURRENCY,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  MERCHANT_ID =
                    T.let(
                      :MERCHANT_ID,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  DESCRIPTOR =
                    T.let(
                      :DESCRIPTOR,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  LIABILITY_SHIFT =
                    T.let(
                      :LIABILITY_SHIFT,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  PAN_ENTRY_MODE =
                    T.let(
                      :PAN_ENTRY_MODE,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  TRANSACTION_AMOUNT =
                    T.let(
                      :TRANSACTION_AMOUNT,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CASH_AMOUNT =
                    T.let(
                      :CASH_AMOUNT,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  RISK_SCORE =
                    T.let(
                      :RISK_SCORE,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CARD_TRANSACTION_COUNT_15_M =
                    T.let(
                      :CARD_TRANSACTION_COUNT_15M,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CARD_TRANSACTION_COUNT_1_H =
                    T.let(
                      :CARD_TRANSACTION_COUNT_1H,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CARD_TRANSACTION_COUNT_24_H =
                    T.let(
                      :CARD_TRANSACTION_COUNT_24H,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  CARD_STATE =
                    T.let(
                      :CARD_STATE,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  PIN_ENTERED =
                    T.let(
                      :PIN_ENTERED,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  PIN_STATUS =
                    T.let(
                      :PIN_STATUS,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  WALLET_TYPE =
                    T.let(
                      :WALLET_TYPE,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )
                  TRANSACTION_INITIATOR =
                    T.let(
                      :TRANSACTION_INITIATOR,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Attribute::TaggedSymbol
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
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  IS_ONE_OF =
                    T.let(
                      :IS_ONE_OF,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_NOT_ONE_OF =
                    T.let(
                      :IS_NOT_ONE_OF,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  MATCHES =
                    T.let(
                      :MATCHES,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  DOES_NOT_MATCH =
                    T.let(
                      :DOES_NOT_MATCH,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_EQUAL_TO =
                    T.let(
                      :IS_EQUAL_TO,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_NOT_EQUAL_TO =
                    T.let(
                      :IS_NOT_EQUAL_TO,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_GREATER_THAN =
                    T.let(
                      :IS_GREATER_THAN,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_GREATER_THAN_OR_EQUAL_TO =
                    T.let(
                      :IS_GREATER_THAN_OR_EQUAL_TO,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_LESS_THAN =
                    T.let(
                      :IS_LESS_THAN,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )
                  IS_LESS_THAN_OR_EQUAL_TO =
                    T.let(
                      :IS_LESS_THAN_OR_EQUAL_TO,
                      Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Operation::TaggedSymbol
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
                        Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::ConditionalAuthorizationActionParameters::Condition::Value::Variants
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
                T::Array[
                  Lithic::Models::AuthRules::V2ListResponse::DraftVersion::Parameters::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        # The event stream during which the rule will be evaluated.
        module EventStream
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AuthRules::V2ListResponse::EventStream
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION =
            T.let(
              :AUTHORIZATION,
              Lithic::Models::AuthRules::V2ListResponse::EventStream::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION =
            T.let(
              :THREE_DS_AUTHENTICATION,
              Lithic::Models::AuthRules::V2ListResponse::EventStream::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2ListResponse::EventStream::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The state of the Auth Rule
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Models::AuthRules::V2ListResponse::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :ACTIVE,
              Lithic::Models::AuthRules::V2ListResponse::State::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :INACTIVE,
              Lithic::Models::AuthRules::V2ListResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2ListResponse::State::TaggedSymbol
              ]
            )
          end
          def self.values
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
              T.all(Symbol, Lithic::Models::AuthRules::V2ListResponse::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONDITIONAL_BLOCK =
            T.let(
              :CONDITIONAL_BLOCK,
              Lithic::Models::AuthRules::V2ListResponse::Type::TaggedSymbol
            )
          VELOCITY_LIMIT =
            T.let(
              :VELOCITY_LIMIT,
              Lithic::Models::AuthRules::V2ListResponse::Type::TaggedSymbol
            )
          MERCHANT_LOCK =
            T.let(
              :MERCHANT_LOCK,
              Lithic::Models::AuthRules::V2ListResponse::Type::TaggedSymbol
            )
          CONDITIONAL_ACTION =
            T.let(
              :CONDITIONAL_ACTION,
              Lithic::Models::AuthRules::V2ListResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2ListResponse::Type::TaggedSymbol
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
