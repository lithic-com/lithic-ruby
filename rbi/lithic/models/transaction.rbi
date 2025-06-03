# typed: strong

module Lithic
  module Models
    class Transaction < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Transaction, Lithic::Internal::AnyHash) }

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # The token for the account associated with this transaction.
      sig { returns(String) }
      attr_accessor :account_token

      # Fee assessed by the merchant and paid for by the cardholder in the smallest unit
      # of the currency. Will be zero if no fee is assessed. Rebates may be transmitted
      # as a negative value to indicate credited fees.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :acquirer_fee

      # Unique identifier assigned to a transaction by the acquirer that can be used in
      # dispute and chargeback filing. This field has been deprecated in favor of the
      # `acquirer_reference_number` that resides in the event-level `network_info`.
      sig { returns(T.nilable(String)) }
      attr_accessor :acquirer_reference_number

      # When the transaction is pending, this represents the authorization amount of the
      # transaction in the anticipated settlement currency. Once the transaction has
      # settled, this field represents the settled amount in the settlement currency.
      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Lithic::Transaction::Amounts) }
      attr_reader :amounts

      sig { params(amounts: Lithic::Transaction::Amounts::OrHash).void }
      attr_writer :amounts

      # The authorization amount of the transaction in the anticipated settlement
      # currency.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :authorization_amount

      # A fixed-width 6-digit numeric identifier that can be used to identify a
      # transaction with networks.
      sig { returns(T.nilable(String)) }
      attr_accessor :authorization_code

      sig { returns(T.nilable(Lithic::Transaction::Avs)) }
      attr_reader :avs

      sig { params(avs: T.nilable(Lithic::Transaction::Avs::OrHash)).void }
      attr_writer :avs

      # Token for the card used in this transaction.
      sig { returns(String) }
      attr_accessor :card_token

      sig { returns(T.nilable(Lithic::Transaction::CardholderAuthentication)) }
      attr_reader :cardholder_authentication

      sig do
        params(
          cardholder_authentication:
            T.nilable(Lithic::Transaction::CardholderAuthentication::OrHash)
        ).void
      end
      attr_writer :cardholder_authentication

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      sig { returns(Lithic::Transaction::Merchant) }
      attr_reader :merchant

      sig { params(merchant: Lithic::Transaction::Merchant::OrHash).void }
      attr_writer :merchant

      # Analogous to the 'amount', but in the merchant currency.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :merchant_amount

      # Analogous to the 'authorization_amount', but in the merchant currency.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :merchant_authorization_amount

      # 3-character alphabetic ISO 4217 code for the local currency of the transaction.
      sig { returns(String) }
      attr_accessor :merchant_currency

      # Card network of the authorization. Value is `UNKNOWN` when Lithic cannot
      # determine the network code from the upstream provider.
      sig { returns(T.nilable(Lithic::Transaction::Network::TaggedSymbol)) }
      attr_accessor :network

      # Network-provided score assessing risk level associated with a given
      # authorization. Scores are on a range of 0-999, with 0 representing the lowest
      # risk and 999 representing the highest risk. For Visa transactions, where the raw
      # score has a range of 0-99, Lithic will normalize the score by multiplying the
      # raw score by 10x.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :network_risk_score

      sig { returns(Lithic::Transaction::Pos) }
      attr_reader :pos

      sig { params(pos: Lithic::Transaction::Pos::OrHash).void }
      attr_writer :pos

      sig { returns(Lithic::Transaction::Result::TaggedSymbol) }
      attr_accessor :result

      # The settled amount of the transaction in the settlement currency.
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Status of the transaction.
      sig { returns(Lithic::Transaction::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(Lithic::Transaction::TokenInfo)) }
      attr_reader :token_info

      sig do
        params(
          token_info: T.nilable(Lithic::Transaction::TokenInfo::OrHash)
        ).void
      end
      attr_writer :token_info

      # Date and time when the transaction last updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(T::Array[Lithic::Transaction::Event])) }
      attr_reader :events

      sig { params(events: T::Array[Lithic::Transaction::Event::OrHash]).void }
      attr_writer :events

      sig do
        params(
          token: String,
          account_token: String,
          acquirer_fee: T.nilable(Integer),
          acquirer_reference_number: T.nilable(String),
          amount: Integer,
          amounts: Lithic::Transaction::Amounts::OrHash,
          authorization_amount: T.nilable(Integer),
          authorization_code: T.nilable(String),
          avs: T.nilable(Lithic::Transaction::Avs::OrHash),
          card_token: String,
          cardholder_authentication:
            T.nilable(Lithic::Transaction::CardholderAuthentication::OrHash),
          created: Time,
          merchant: Lithic::Transaction::Merchant::OrHash,
          merchant_amount: T.nilable(Integer),
          merchant_authorization_amount: T.nilable(Integer),
          merchant_currency: String,
          network: T.nilable(Lithic::Transaction::Network::OrSymbol),
          network_risk_score: T.nilable(Integer),
          pos: Lithic::Transaction::Pos::OrHash,
          result: Lithic::Transaction::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::Transaction::Status::OrSymbol,
          token_info: T.nilable(Lithic::Transaction::TokenInfo::OrHash),
          updated: Time,
          events: T::Array[Lithic::Transaction::Event::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # The token for the account associated with this transaction.
        account_token:,
        # Fee assessed by the merchant and paid for by the cardholder in the smallest unit
        # of the currency. Will be zero if no fee is assessed. Rebates may be transmitted
        # as a negative value to indicate credited fees.
        acquirer_fee:,
        # Unique identifier assigned to a transaction by the acquirer that can be used in
        # dispute and chargeback filing. This field has been deprecated in favor of the
        # `acquirer_reference_number` that resides in the event-level `network_info`.
        acquirer_reference_number:,
        # When the transaction is pending, this represents the authorization amount of the
        # transaction in the anticipated settlement currency. Once the transaction has
        # settled, this field represents the settled amount in the settlement currency.
        amount:,
        amounts:,
        # The authorization amount of the transaction in the anticipated settlement
        # currency.
        authorization_amount:,
        # A fixed-width 6-digit numeric identifier that can be used to identify a
        # transaction with networks.
        authorization_code:,
        avs:,
        # Token for the card used in this transaction.
        card_token:,
        cardholder_authentication:,
        # Date and time when the transaction first occurred. UTC time zone.
        created:,
        merchant:,
        # Analogous to the 'amount', but in the merchant currency.
        merchant_amount:,
        # Analogous to the 'authorization_amount', but in the merchant currency.
        merchant_authorization_amount:,
        # 3-character alphabetic ISO 4217 code for the local currency of the transaction.
        merchant_currency:,
        # Card network of the authorization. Value is `UNKNOWN` when Lithic cannot
        # determine the network code from the upstream provider.
        network:,
        # Network-provided score assessing risk level associated with a given
        # authorization. Scores are on a range of 0-999, with 0 representing the lowest
        # risk and 999 representing the highest risk. For Visa transactions, where the raw
        # score has a range of 0-99, Lithic will normalize the score by multiplying the
        # raw score by 10x.
        network_risk_score:,
        pos:,
        result:,
        # The settled amount of the transaction in the settlement currency.
        settled_amount:,
        # Status of the transaction.
        status:,
        token_info:,
        # Date and time when the transaction last updated. UTC time zone.
        updated:,
        events: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            account_token: String,
            acquirer_fee: T.nilable(Integer),
            acquirer_reference_number: T.nilable(String),
            amount: Integer,
            amounts: Lithic::Transaction::Amounts,
            authorization_amount: T.nilable(Integer),
            authorization_code: T.nilable(String),
            avs: T.nilable(Lithic::Transaction::Avs),
            card_token: String,
            cardholder_authentication:
              T.nilable(Lithic::Transaction::CardholderAuthentication),
            created: Time,
            merchant: Lithic::Transaction::Merchant,
            merchant_amount: T.nilable(Integer),
            merchant_authorization_amount: T.nilable(Integer),
            merchant_currency: String,
            network: T.nilable(Lithic::Transaction::Network::TaggedSymbol),
            network_risk_score: T.nilable(Integer),
            pos: Lithic::Transaction::Pos,
            result: Lithic::Transaction::Result::TaggedSymbol,
            settled_amount: Integer,
            status: Lithic::Transaction::Status::TaggedSymbol,
            token_info: T.nilable(Lithic::Transaction::TokenInfo),
            updated: Time,
            events: T::Array[Lithic::Transaction::Event]
          }
        )
      end
      def to_hash
      end

      class Amounts < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Transaction::Amounts, Lithic::Internal::AnyHash)
          end

        sig { returns(Lithic::Transaction::Amounts::Cardholder) }
        attr_reader :cardholder

        sig do
          params(
            cardholder: Lithic::Transaction::Amounts::Cardholder::OrHash
          ).void
        end
        attr_writer :cardholder

        sig { returns(Lithic::Transaction::Amounts::Hold) }
        attr_reader :hold

        sig { params(hold: Lithic::Transaction::Amounts::Hold::OrHash).void }
        attr_writer :hold

        sig { returns(Lithic::Transaction::Amounts::Merchant) }
        attr_reader :merchant

        sig do
          params(merchant: Lithic::Transaction::Amounts::Merchant::OrHash).void
        end
        attr_writer :merchant

        sig { returns(Lithic::Transaction::Amounts::Settlement) }
        attr_reader :settlement

        sig do
          params(
            settlement: Lithic::Transaction::Amounts::Settlement::OrHash
          ).void
        end
        attr_writer :settlement

        sig do
          params(
            cardholder: Lithic::Transaction::Amounts::Cardholder::OrHash,
            hold: Lithic::Transaction::Amounts::Hold::OrHash,
            merchant: Lithic::Transaction::Amounts::Merchant::OrHash,
            settlement: Lithic::Transaction::Amounts::Settlement::OrHash
          ).returns(T.attached_class)
        end
        def self.new(cardholder:, hold:, merchant:, settlement:)
        end

        sig do
          override.returns(
            {
              cardholder: Lithic::Transaction::Amounts::Cardholder,
              hold: Lithic::Transaction::Amounts::Hold,
              merchant: Lithic::Transaction::Amounts::Merchant,
              settlement: Lithic::Transaction::Amounts::Settlement
            }
          )
        end
        def to_hash
        end

        class Cardholder < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Amounts::Cardholder,
                Lithic::Internal::AnyHash
              )
            end

          # The estimated settled amount of the transaction in the cardholder billing
          # currency.
          sig { returns(Integer) }
          attr_accessor :amount

          # The exchange rate used to convert the merchant amount to the cardholder billing
          # amount.
          sig { returns(String) }
          attr_accessor :conversion_rate

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(
              amount: Integer,
              conversion_rate: String,
              currency: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The estimated settled amount of the transaction in the cardholder billing
            # currency.
            amount:,
            # The exchange rate used to convert the merchant amount to the cardholder billing
            # amount.
            conversion_rate:,
            # 3-character alphabetic ISO 4217 currency
            currency:
          )
          end

          sig do
            override.returns(
              { amount: Integer, conversion_rate: String, currency: String }
            )
          end
          def to_hash
          end
        end

        class Hold < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Amounts::Hold,
                Lithic::Internal::AnyHash
              )
            end

          # The pending amount of the transaction in the anticipated settlement currency.
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(amount: Integer, currency: String).returns(T.attached_class)
          end
          def self.new(
            # The pending amount of the transaction in the anticipated settlement currency.
            amount:,
            # 3-character alphabetic ISO 4217 currency
            currency:
          )
          end

          sig { override.returns({ amount: Integer, currency: String }) }
          def to_hash
          end
        end

        class Merchant < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Amounts::Merchant,
                Lithic::Internal::AnyHash
              )
            end

          # The settled amount of the transaction in the merchant currency.
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(amount: Integer, currency: String).returns(T.attached_class)
          end
          def self.new(
            # The settled amount of the transaction in the merchant currency.
            amount:,
            # 3-character alphabetic ISO 4217 currency
            currency:
          )
          end

          sig { override.returns({ amount: Integer, currency: String }) }
          def to_hash
          end
        end

        class Settlement < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Amounts::Settlement,
                Lithic::Internal::AnyHash
              )
            end

          # The settled amount of the transaction in the settlement currency.
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(amount: Integer, currency: String).returns(T.attached_class)
          end
          def self.new(
            # The settled amount of the transaction in the settlement currency.
            amount:,
            # 3-character alphabetic ISO 4217 currency
            currency:
          )
          end

          sig { override.returns({ amount: Integer, currency: String }) }
          def to_hash
          end
        end
      end

      class Avs < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Transaction::Avs, Lithic::Internal::AnyHash)
          end

        # Cardholder address
        sig { returns(String) }
        attr_accessor :address

        # Cardholder ZIP code
        sig { returns(String) }
        attr_accessor :zipcode

        sig do
          params(address: String, zipcode: String).returns(T.attached_class)
        end
        def self.new(
          # Cardholder address
          address:,
          # Cardholder ZIP code
          zipcode:
        )
        end

        sig { override.returns({ address: String, zipcode: String }) }
        def to_hash
        end
      end

      class CardholderAuthentication < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Transaction::CardholderAuthentication,
              Lithic::Internal::AnyHash
            )
          end

        # The 3DS version used for the authentication
        sig { returns(T.nilable(String)) }
        attr_accessor :three_ds_version

        # Whether an acquirer exemption applied to the transaction.
        sig do
          returns(
            Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
          )
        end
        attr_accessor :acquirer_exemption

        # Indicates what the outcome of the 3DS authentication process is.
        sig do
          returns(
            Lithic::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol
          )
        end
        attr_accessor :authentication_result

        # Indicates which party made the 3DS authentication decision.
        sig do
          returns(
            Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
          )
        end
        attr_accessor :decision_made_by

        # Indicates whether chargeback liability shift applies to the transaction.
        # Possible enum values:
        #
        #     * `3DS_AUTHENTICATED`: The transaction was fully authenticated through a 3-D Secure flow, chargeback liability shift applies.
        #
        #     * `ACQUIRER_EXEMPTION`: The acquirer utilised an exemption to bypass Strong Customer Authentication (`transStatus = N`, or `transStatus = I`). Liability remains with the acquirer and in this case the `acquirer_exemption` field is expected to be not `NONE`.
        #
        #     * `NONE`: Chargeback liability shift has not shifted to the issuer, i.e. the merchant is liable.
        #
        # - `TOKEN_AUTHENTICATED`: The transaction was a tokenized payment with validated
        #   cryptography, possibly recurring. Chargeback liability shift to the issuer
        #   applies.
        sig do
          returns(
            Lithic::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
          )
        end
        attr_accessor :liability_shift

        # Unique identifier you can use to match a given 3DS authentication (available via
        # the three_ds_authentication.created event webhook) and the transaction. Note
        # that in cases where liability shift does not occur, this token is matched to the
        # transaction on a best-effort basis.
        sig { returns(T.nilable(String)) }
        attr_accessor :three_ds_authentication_token

        # Indicates whether a 3DS challenge flow was used, and if so, what the
        # verification method was. (deprecated, use `authentication_result`)
        sig do
          returns(
            Lithic::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol
          )
        end
        attr_accessor :verification_attempted

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        # use `authentication_result`)
        sig do
          returns(
            Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
          )
        end
        attr_accessor :verification_result

        # Indicates the method used to authenticate the cardholder.
        sig do
          returns(
            T.nilable(
              Lithic::Transaction::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
            )
          )
        end
        attr_reader :authentication_method

        sig do
          params(
            authentication_method:
              Lithic::Transaction::CardholderAuthentication::AuthenticationMethod::OrSymbol
          ).void
        end
        attr_writer :authentication_method

        sig do
          params(
            three_ds_version: T.nilable(String),
            acquirer_exemption:
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::OrSymbol,
            authentication_result:
              Lithic::Transaction::CardholderAuthentication::AuthenticationResult::OrSymbol,
            decision_made_by:
              Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::OrSymbol,
            liability_shift:
              Lithic::Transaction::CardholderAuthentication::LiabilityShift::OrSymbol,
            three_ds_authentication_token: T.nilable(String),
            verification_attempted:
              Lithic::Transaction::CardholderAuthentication::VerificationAttempted::OrSymbol,
            verification_result:
              Lithic::Transaction::CardholderAuthentication::VerificationResult::OrSymbol,
            authentication_method:
              Lithic::Transaction::CardholderAuthentication::AuthenticationMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The 3DS version used for the authentication
          three_ds_version:,
          # Whether an acquirer exemption applied to the transaction.
          acquirer_exemption:,
          # Indicates what the outcome of the 3DS authentication process is.
          authentication_result:,
          # Indicates which party made the 3DS authentication decision.
          decision_made_by:,
          # Indicates whether chargeback liability shift applies to the transaction.
          # Possible enum values:
          #
          #     * `3DS_AUTHENTICATED`: The transaction was fully authenticated through a 3-D Secure flow, chargeback liability shift applies.
          #
          #     * `ACQUIRER_EXEMPTION`: The acquirer utilised an exemption to bypass Strong Customer Authentication (`transStatus = N`, or `transStatus = I`). Liability remains with the acquirer and in this case the `acquirer_exemption` field is expected to be not `NONE`.
          #
          #     * `NONE`: Chargeback liability shift has not shifted to the issuer, i.e. the merchant is liable.
          #
          # - `TOKEN_AUTHENTICATED`: The transaction was a tokenized payment with validated
          #   cryptography, possibly recurring. Chargeback liability shift to the issuer
          #   applies.
          liability_shift:,
          # Unique identifier you can use to match a given 3DS authentication (available via
          # the three_ds_authentication.created event webhook) and the transaction. Note
          # that in cases where liability shift does not occur, this token is matched to the
          # transaction on a best-effort basis.
          three_ds_authentication_token:,
          # Indicates whether a 3DS challenge flow was used, and if so, what the
          # verification method was. (deprecated, use `authentication_result`)
          verification_attempted:,
          # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
          # use `authentication_result`)
          verification_result:,
          # Indicates the method used to authenticate the cardholder.
          authentication_method: nil
        )
        end

        sig do
          override.returns(
            {
              three_ds_version: T.nilable(String),
              acquirer_exemption:
                Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol,
              authentication_result:
                Lithic::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol,
              decision_made_by:
                Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol,
              liability_shift:
                Lithic::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol,
              three_ds_authentication_token: T.nilable(String),
              verification_attempted:
                Lithic::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol,
              verification_result:
                Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol,
              authentication_method:
                Lithic::Transaction::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Whether an acquirer exemption applied to the transaction.
        module AcquirerExemption
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Transaction::CardholderAuthentication::AcquirerExemption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHENTICATION_OUTAGE_EXCEPTION =
            T.let(
              :AUTHENTICATION_OUTAGE_EXCEPTION,
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          LOW_VALUE =
            T.let(
              :LOW_VALUE,
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          MERCHANT_INITIATED_TRANSACTION =
            T.let(
              :MERCHANT_INITIATED_TRANSACTION,
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          RECURRING_PAYMENT =
            T.let(
              :RECURRING_PAYMENT,
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          SECURE_CORPORATE_PAYMENT =
            T.let(
              :SECURE_CORPORATE_PAYMENT,
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          STRONG_CUSTOMER_AUTHENTICATION_DELEGATION =
            T.let(
              :STRONG_CUSTOMER_AUTHENTICATION_DELEGATION,
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          TRANSACTION_RISK_ANALYSIS =
            T.let(
              :TRANSACTION_RISK_ANALYSIS,
              Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates what the outcome of the 3DS authentication process is.
        module AuthenticationResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Transaction::CardholderAuthentication::AuthenticationResult
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ATTEMPTS =
            T.let(
              :ATTEMPTS,
              Lithic::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol
            )
          DECLINE =
            T.let(
              :DECLINE,
              Lithic::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              Lithic::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :SUCCESS,
              Lithic::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates which party made the 3DS authentication decision.
        module DecisionMadeBy
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Transaction::CardholderAuthentication::DecisionMadeBy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER_ENDPOINT =
            T.let(
              :CUSTOMER_ENDPOINT,
              Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
            )
          LITHIC_DEFAULT =
            T.let(
              :LITHIC_DEFAULT,
              Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
            )
          LITHIC_RULES =
            T.let(
              :LITHIC_RULES,
              Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
            )
          NETWORK =
            T.let(
              :NETWORK,
              Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates whether chargeback liability shift applies to the transaction.
        # Possible enum values:
        #
        #     * `3DS_AUTHENTICATED`: The transaction was fully authenticated through a 3-D Secure flow, chargeback liability shift applies.
        #
        #     * `ACQUIRER_EXEMPTION`: The acquirer utilised an exemption to bypass Strong Customer Authentication (`transStatus = N`, or `transStatus = I`). Liability remains with the acquirer and in this case the `acquirer_exemption` field is expected to be not `NONE`.
        #
        #     * `NONE`: Chargeback liability shift has not shifted to the issuer, i.e. the merchant is liable.
        #
        # - `TOKEN_AUTHENTICATED`: The transaction was a tokenized payment with validated
        #   cryptography, possibly recurring. Chargeback liability shift to the issuer
        #   applies.
        module LiabilityShift
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Transaction::CardholderAuthentication::LiabilityShift
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIABILITY_SHIFT_3DS_AUTHENTICATED =
            T.let(
              :"3DS_AUTHENTICATED",
              Lithic::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
            )
          ACQUIRER_EXEMPTION =
            T.let(
              :ACQUIRER_EXEMPTION,
              Lithic::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              Lithic::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
            )
          TOKEN_AUTHENTICATED =
            T.let(
              :TOKEN_AUTHENTICATED,
              Lithic::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates whether a 3DS challenge flow was used, and if so, what the
        # verification method was. (deprecated, use `authentication_result`)
        module VerificationAttempted
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Transaction::CardholderAuthentication::VerificationAttempted
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              Lithic::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              Lithic::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        # use `authentication_result`)
        module VerificationResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Transaction::CardholderAuthentication::VerificationResult
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELLED =
            T.let(
              :CANCELLED,
              Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
            )
          FRICTIONLESS =
            T.let(
              :FRICTIONLESS,
              Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
            )
          NOT_ATTEMPTED =
            T.let(
              :NOT_ATTEMPTED,
              Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
            )
          REJECTED =
            T.let(
              :REJECTED,
              Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :SUCCESS,
              Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates the method used to authenticate the cardholder.
        module AuthenticationMethod
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Transaction::CardholderAuthentication::AuthenticationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FRICTIONLESS =
            T.let(
              :FRICTIONLESS,
              Lithic::Transaction::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
            )
          CHALLENGE =
            T.let(
              :CHALLENGE,
              Lithic::Transaction::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              Lithic::Transaction::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Transaction::CardholderAuthentication::AuthenticationMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Merchant < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Transaction::Merchant, Lithic::Internal::AnyHash)
          end

        # Unique alphanumeric identifier for the payment card acceptor (merchant).
        sig { returns(String) }
        attr_accessor :acceptor_id

        # Unique numeric identifier of the acquiring institution.
        sig { returns(String) }
        attr_accessor :acquiring_institution_id

        # City of card acceptor. Note that in many cases, particularly in card-not-present
        # transactions, merchants may send through a phone number or URL in this field.
        sig { returns(String) }
        attr_accessor :city

        # Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
        # alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
        sig { returns(String) }
        attr_accessor :country

        # Short description of card acceptor.
        sig { returns(String) }
        attr_accessor :descriptor

        # Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
        # used to classify a business by the types of goods or services it provides.
        sig { returns(String) }
        attr_accessor :mcc

        # Geographic state of card acceptor.
        sig { returns(String) }
        attr_accessor :state

        sig do
          params(
            acceptor_id: String,
            acquiring_institution_id: String,
            city: String,
            country: String,
            descriptor: String,
            mcc: String,
            state: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique alphanumeric identifier for the payment card acceptor (merchant).
          acceptor_id:,
          # Unique numeric identifier of the acquiring institution.
          acquiring_institution_id:,
          # City of card acceptor. Note that in many cases, particularly in card-not-present
          # transactions, merchants may send through a phone number or URL in this field.
          city:,
          # Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
          # alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
          country:,
          # Short description of card acceptor.
          descriptor:,
          # Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
          # used to classify a business by the types of goods or services it provides.
          mcc:,
          # Geographic state of card acceptor.
          state:
        )
        end

        sig do
          override.returns(
            {
              acceptor_id: String,
              acquiring_institution_id: String,
              city: String,
              country: String,
              descriptor: String,
              mcc: String,
              state: String
            }
          )
        end
        def to_hash
        end
      end

      # Card network of the authorization. Value is `UNKNOWN` when Lithic cannot
      # determine the network code from the upstream provider.
      module Network
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Transaction::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMEX = T.let(:AMEX, Lithic::Transaction::Network::TaggedSymbol)
        INTERLINK =
          T.let(:INTERLINK, Lithic::Transaction::Network::TaggedSymbol)
        MAESTRO = T.let(:MAESTRO, Lithic::Transaction::Network::TaggedSymbol)
        MASTERCARD =
          T.let(:MASTERCARD, Lithic::Transaction::Network::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, Lithic::Transaction::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::Transaction::Network::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Transaction::Network::TaggedSymbol])
        end
        def self.values
        end
      end

      class Pos < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Transaction::Pos, Lithic::Internal::AnyHash)
          end

        sig { returns(Lithic::Transaction::Pos::EntryMode) }
        attr_reader :entry_mode

        sig do
          params(entry_mode: Lithic::Transaction::Pos::EntryMode::OrHash).void
        end
        attr_writer :entry_mode

        sig { returns(Lithic::Transaction::Pos::Terminal) }
        attr_reader :terminal

        sig do
          params(terminal: Lithic::Transaction::Pos::Terminal::OrHash).void
        end
        attr_writer :terminal

        sig do
          params(
            entry_mode: Lithic::Transaction::Pos::EntryMode::OrHash,
            terminal: Lithic::Transaction::Pos::Terminal::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry_mode:, terminal:)
        end

        sig do
          override.returns(
            {
              entry_mode: Lithic::Transaction::Pos::EntryMode,
              terminal: Lithic::Transaction::Pos::Terminal
            }
          )
        end
        def to_hash
        end

        class EntryMode < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Pos::EntryMode,
                Lithic::Internal::AnyHash
              )
            end

          # Card presence indicator
          sig do
            returns(Lithic::Transaction::Pos::EntryMode::Card::TaggedSymbol)
          end
          attr_accessor :card

          # Cardholder presence indicator
          sig do
            returns(
              Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
            )
          end
          attr_accessor :cardholder

          # Method of entry for the PAN
          sig do
            returns(Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
          end
          attr_accessor :pan

          # Indicates whether the cardholder entered the PIN. True if the PIN was entered.
          sig { returns(T::Boolean) }
          attr_accessor :pin_entered

          sig do
            params(
              card: Lithic::Transaction::Pos::EntryMode::Card::OrSymbol,
              cardholder:
                Lithic::Transaction::Pos::EntryMode::Cardholder::OrSymbol,
              pan: Lithic::Transaction::Pos::EntryMode::Pan::OrSymbol,
              pin_entered: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Card presence indicator
            card:,
            # Cardholder presence indicator
            cardholder:,
            # Method of entry for the PAN
            pan:,
            # Indicates whether the cardholder entered the PIN. True if the PIN was entered.
            pin_entered:
          )
          end

          sig do
            override.returns(
              {
                card: Lithic::Transaction::Pos::EntryMode::Card::TaggedSymbol,
                cardholder:
                  Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol,
                pan: Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol,
                pin_entered: T::Boolean
              }
            )
          end
          def to_hash
          end

          # Card presence indicator
          module Card
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Transaction::Pos::EntryMode::Card)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_PRESENT =
              T.let(
                :NOT_PRESENT,
                Lithic::Transaction::Pos::EntryMode::Card::TaggedSymbol
              )
            PREAUTHORIZED =
              T.let(
                :PREAUTHORIZED,
                Lithic::Transaction::Pos::EntryMode::Card::TaggedSymbol
              )
            PRESENT =
              T.let(
                :PRESENT,
                Lithic::Transaction::Pos::EntryMode::Card::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::Transaction::Pos::EntryMode::Card::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Transaction::Pos::EntryMode::Card::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Cardholder presence indicator
          module Cardholder
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Transaction::Pos::EntryMode::Cardholder)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEFERRED_BILLING =
              T.let(
                :DEFERRED_BILLING,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            ELECTRONIC_ORDER =
              T.let(
                :ELECTRONIC_ORDER,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            INSTALLMENT =
              T.let(
                :INSTALLMENT,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            MAIL_ORDER =
              T.let(
                :MAIL_ORDER,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            NOT_PRESENT =
              T.let(
                :NOT_PRESENT,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            PREAUTHORIZED =
              T.let(
                :PREAUTHORIZED,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            PRESENT =
              T.let(
                :PRESENT,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            REOCCURRING =
              T.let(
                :REOCCURRING,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            TELEPHONE_ORDER =
              T.let(
                :TELEPHONE_ORDER,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Method of entry for the PAN
          module Pan
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Transaction::Pos::EntryMode::Pan)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTO_ENTRY =
              T.let(
                :AUTO_ENTRY,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            BAR_CODE =
              T.let(
                :BAR_CODE,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            CONTACTLESS =
              T.let(
                :CONTACTLESS,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            CREDENTIAL_ON_FILE =
              T.let(
                :CREDENTIAL_ON_FILE,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            ECOMMERCE =
              T.let(
                :ECOMMERCE,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            ERROR_KEYED =
              T.let(
                :ERROR_KEYED,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            ERROR_MAGNETIC_STRIPE =
              T.let(
                :ERROR_MAGNETIC_STRIPE,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            ICC =
              T.let(
                :ICC,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            KEY_ENTERED =
              T.let(
                :KEY_ENTERED,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            MAGNETIC_STRIPE =
              T.let(
                :MAGNETIC_STRIPE,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            MANUAL =
              T.let(
                :MANUAL,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            OCR =
              T.let(
                :OCR,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            SECURE_CARDLESS =
              T.let(
                :SECURE_CARDLESS,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )
            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Lithic::Transaction::Pos::EntryMode::Pan::TaggedSymbol]
              )
            end
            def self.values
            end
          end
        end

        class Terminal < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Pos::Terminal,
                Lithic::Internal::AnyHash
              )
            end

          # True if a clerk is present at the sale.
          sig { returns(T::Boolean) }
          attr_accessor :attended

          # True if the terminal is capable of retaining the card.
          sig { returns(T::Boolean) }
          attr_accessor :card_retention_capable

          # True if the sale was made at the place of business (vs. mobile).
          sig { returns(T::Boolean) }
          attr_accessor :on_premise

          # The person that is designated to swipe the card
          sig do
            returns(Lithic::Transaction::Pos::Terminal::Operator::TaggedSymbol)
          end
          attr_accessor :operator

          # True if the terminal is capable of partial approval. Partial approval is when
          # part of a transaction is approved and another payment must be used for the
          # remainder. Example scenario: A $40 transaction is attempted on a prepaid card
          # with a $25 balance. If partial approval is enabled, $25 can be authorized, at
          # which point the POS will prompt the user for an additional payment of $15.
          sig { returns(T::Boolean) }
          attr_accessor :partial_approval_capable

          # Status of whether the POS is able to accept PINs
          sig do
            returns(
              Lithic::Transaction::Pos::Terminal::PinCapability::TaggedSymbol
            )
          end
          attr_accessor :pin_capability

          # POS Type
          sig do
            returns(Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol)
          end
          attr_accessor :type

          # Uniquely identifies a terminal at the card acceptor location of acquiring
          # institutions or merchant POS Systems
          sig { returns(T.nilable(String)) }
          attr_accessor :acceptor_terminal_id

          sig do
            params(
              attended: T::Boolean,
              card_retention_capable: T::Boolean,
              on_premise: T::Boolean,
              operator: Lithic::Transaction::Pos::Terminal::Operator::OrSymbol,
              partial_approval_capable: T::Boolean,
              pin_capability:
                Lithic::Transaction::Pos::Terminal::PinCapability::OrSymbol,
              type: Lithic::Transaction::Pos::Terminal::Type::OrSymbol,
              acceptor_terminal_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # True if a clerk is present at the sale.
            attended:,
            # True if the terminal is capable of retaining the card.
            card_retention_capable:,
            # True if the sale was made at the place of business (vs. mobile).
            on_premise:,
            # The person that is designated to swipe the card
            operator:,
            # True if the terminal is capable of partial approval. Partial approval is when
            # part of a transaction is approved and another payment must be used for the
            # remainder. Example scenario: A $40 transaction is attempted on a prepaid card
            # with a $25 balance. If partial approval is enabled, $25 can be authorized, at
            # which point the POS will prompt the user for an additional payment of $15.
            partial_approval_capable:,
            # Status of whether the POS is able to accept PINs
            pin_capability:,
            # POS Type
            type:,
            # Uniquely identifies a terminal at the card acceptor location of acquiring
            # institutions or merchant POS Systems
            acceptor_terminal_id: nil
          )
          end

          sig do
            override.returns(
              {
                attended: T::Boolean,
                card_retention_capable: T::Boolean,
                on_premise: T::Boolean,
                operator:
                  Lithic::Transaction::Pos::Terminal::Operator::TaggedSymbol,
                partial_approval_capable: T::Boolean,
                pin_capability:
                  Lithic::Transaction::Pos::Terminal::PinCapability::TaggedSymbol,
                type: Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol,
                acceptor_terminal_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The person that is designated to swipe the card
          module Operator
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Transaction::Pos::Terminal::Operator)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMINISTRATIVE =
              T.let(
                :ADMINISTRATIVE,
                Lithic::Transaction::Pos::Terminal::Operator::TaggedSymbol
              )
            CARDHOLDER =
              T.let(
                :CARDHOLDER,
                Lithic::Transaction::Pos::Terminal::Operator::TaggedSymbol
              )
            CARD_ACCEPTOR =
              T.let(
                :CARD_ACCEPTOR,
                Lithic::Transaction::Pos::Terminal::Operator::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::Transaction::Pos::Terminal::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Transaction::Pos::Terminal::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Status of whether the POS is able to accept PINs
          module PinCapability
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Transaction::Pos::Terminal::PinCapability)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CAPABLE =
              T.let(
                :CAPABLE,
                Lithic::Transaction::Pos::Terminal::PinCapability::TaggedSymbol
              )
            INOPERATIVE =
              T.let(
                :INOPERATIVE,
                Lithic::Transaction::Pos::Terminal::PinCapability::TaggedSymbol
              )
            NOT_CAPABLE =
              T.let(
                :NOT_CAPABLE,
                Lithic::Transaction::Pos::Terminal::PinCapability::TaggedSymbol
              )
            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                Lithic::Transaction::Pos::Terminal::PinCapability::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Transaction::Pos::Terminal::PinCapability::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # POS Type
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Transaction::Pos::Terminal::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMINISTRATIVE =
              T.let(
                :ADMINISTRATIVE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            ATM =
              T.let(
                :ATM,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            AUTHORIZATION =
              T.let(
                :AUTHORIZATION,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            COUPON_MACHINE =
              T.let(
                :COUPON_MACHINE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            DIAL_TERMINAL =
              T.let(
                :DIAL_TERMINAL,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            ECOMMERCE =
              T.let(
                :ECOMMERCE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            ECR =
              T.let(
                :ECR,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            FUEL_MACHINE =
              T.let(
                :FUEL_MACHINE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            HOME_TERMINAL =
              T.let(
                :HOME_TERMINAL,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            MICR =
              T.let(
                :MICR,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            OFF_PREMISE =
              T.let(
                :OFF_PREMISE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            PAYMENT =
              T.let(
                :PAYMENT,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            PDA =
              T.let(
                :PDA,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            PHONE =
              T.let(
                :PHONE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            POINT =
              T.let(
                :POINT,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            POS_TERMINAL =
              T.let(
                :POS_TERMINAL,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            PUBLIC_UTILITY =
              T.let(
                :PUBLIC_UTILITY,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            SELF_SERVICE =
              T.let(
                :SELF_SERVICE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            TELEVISION =
              T.let(
                :TELEVISION,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            TELLER =
              T.let(
                :TELLER,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            TRAVELERS_CHECK_MACHINE =
              T.let(
                :TRAVELERS_CHECK_MACHINE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            VENDING =
              T.let(
                :VENDING,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            VOICE =
              T.let(
                :VOICE,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Lithic::Transaction::Pos::Terminal::Type::TaggedSymbol]
              )
            end
            def self.values
            end
          end
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Transaction::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_STATE_TRANSACTION_FAIL =
          T.let(
            :ACCOUNT_STATE_TRANSACTION_FAIL,
            Lithic::Transaction::Result::TaggedSymbol
          )
        APPROVED = T.let(:APPROVED, Lithic::Transaction::Result::TaggedSymbol)
        BANK_CONNECTION_ERROR =
          T.let(
            :BANK_CONNECTION_ERROR,
            Lithic::Transaction::Result::TaggedSymbol
          )
        BANK_NOT_VERIFIED =
          T.let(:BANK_NOT_VERIFIED, Lithic::Transaction::Result::TaggedSymbol)
        CARD_CLOSED =
          T.let(:CARD_CLOSED, Lithic::Transaction::Result::TaggedSymbol)
        CARD_PAUSED =
          T.let(:CARD_PAUSED, Lithic::Transaction::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Transaction::Result::TaggedSymbol)
        FRAUD_ADVICE =
          T.let(:FRAUD_ADVICE, Lithic::Transaction::Result::TaggedSymbol)
        IGNORED_TTL_EXPIRY =
          T.let(:IGNORED_TTL_EXPIRY, Lithic::Transaction::Result::TaggedSymbol)
        INACTIVE_ACCOUNT =
          T.let(:INACTIVE_ACCOUNT, Lithic::Transaction::Result::TaggedSymbol)
        INCORRECT_PIN =
          T.let(:INCORRECT_PIN, Lithic::Transaction::Result::TaggedSymbol)
        INVALID_CARD_DETAILS =
          T.let(
            :INVALID_CARD_DETAILS,
            Lithic::Transaction::Result::TaggedSymbol
          )
        INSUFFICIENT_FUNDS =
          T.let(:INSUFFICIENT_FUNDS, Lithic::Transaction::Result::TaggedSymbol)
        INSUFFICIENT_FUNDS_PRELOAD =
          T.let(
            :INSUFFICIENT_FUNDS_PRELOAD,
            Lithic::Transaction::Result::TaggedSymbol
          )
        INVALID_TRANSACTION =
          T.let(:INVALID_TRANSACTION, Lithic::Transaction::Result::TaggedSymbol)
        MERCHANT_BLACKLIST =
          T.let(:MERCHANT_BLACKLIST, Lithic::Transaction::Result::TaggedSymbol)
        ORIGINAL_NOT_FOUND =
          T.let(:ORIGINAL_NOT_FOUND, Lithic::Transaction::Result::TaggedSymbol)
        PREVIOUSLY_COMPLETED =
          T.let(
            :PREVIOUSLY_COMPLETED,
            Lithic::Transaction::Result::TaggedSymbol
          )
        SINGLE_USE_RECHARGED =
          T.let(
            :SINGLE_USE_RECHARGED,
            Lithic::Transaction::Result::TaggedSymbol
          )
        SWITCH_INOPERATIVE_ADVICE =
          T.let(
            :SWITCH_INOPERATIVE_ADVICE,
            Lithic::Transaction::Result::TaggedSymbol
          )
        UNAUTHORIZED_MERCHANT =
          T.let(
            :UNAUTHORIZED_MERCHANT,
            Lithic::Transaction::Result::TaggedSymbol
          )
        UNKNOWN_HOST_TIMEOUT =
          T.let(
            :UNKNOWN_HOST_TIMEOUT,
            Lithic::Transaction::Result::TaggedSymbol
          )
        USER_TRANSACTION_LIMIT =
          T.let(
            :USER_TRANSACTION_LIMIT,
            Lithic::Transaction::Result::TaggedSymbol
          )

        sig do
          override.returns(T::Array[Lithic::Transaction::Result::TaggedSymbol])
        end
        def self.values
        end
      end

      # Status of the transaction.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Transaction::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED = T.let(:DECLINED, Lithic::Transaction::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Transaction::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Transaction::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Transaction::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Transaction::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Transaction::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      class TokenInfo < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Transaction::TokenInfo, Lithic::Internal::AnyHash)
          end

        # The wallet_type field will indicate the source of the token. Possible token
        # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        # tokenization, and “other” sources like in-flight commerce. Masterpass is not
        # currently supported and is included for future use.
        sig do
          returns(Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol)
        end
        attr_accessor :wallet_type

        sig do
          params(
            wallet_type: Lithic::Transaction::TokenInfo::WalletType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The wallet_type field will indicate the source of the token. Possible token
          # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
          # tokenization, and “other” sources like in-flight commerce. Masterpass is not
          # currently supported and is included for future use.
          wallet_type:
        )
        end

        sig do
          override.returns(
            {
              wallet_type:
                Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The wallet_type field will indicate the source of the token. Possible token
        # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        # tokenization, and “other” sources like in-flight commerce. Masterpass is not
        # currently supported and is included for future use.
        module WalletType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Transaction::TokenInfo::WalletType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLE_PAY =
            T.let(
              :APPLE_PAY,
              Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol
            )
          GOOGLE_PAY =
            T.let(
              :GOOGLE_PAY,
              Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol
            )
          MASTERPASS =
            T.let(
              :MASTERPASS,
              Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol
            )
          MERCHANT =
            T.let(
              :MERCHANT,
              Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol
            )
          SAMSUNG_PAY =
            T.let(
              :SAMSUNG_PAY,
              Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Transaction::TokenInfo::WalletType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Transaction::Event, Lithic::Internal::AnyHash)
          end

        # Transaction event identifier.
        sig { returns(String) }
        attr_accessor :token

        # Amount of the event in the settlement currency.
        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Lithic::Transaction::Event::Amounts) }
        attr_reader :amounts

        sig do
          params(amounts: Lithic::Transaction::Event::Amounts::OrHash).void
        end
        attr_writer :amounts

        # RFC 3339 date and time this event entered the system. UTC time zone.
        sig { returns(Time) }
        attr_accessor :created

        sig do
          returns(
            T::Array[Lithic::Transaction::Event::DetailedResult::TaggedSymbol]
          )
        end
        attr_accessor :detailed_results

        # Indicates whether the transaction event is a credit or debit to the account.
        sig do
          returns(Lithic::Transaction::Event::EffectivePolarity::TaggedSymbol)
        end
        attr_accessor :effective_polarity

        # Information provided by the card network in each event. This includes common
        # identifiers shared between you, Lithic, the card network and in some cases the
        # acquirer. These identifiers often link together events within the same
        # transaction lifecycle and can be used to locate a particular transaction, such
        # as during processing of disputes. Not all fields are available in all events,
        # and the presence of these fields is dependent on the card network and the event
        # type. If the field is populated by the network, we will pass it through as is
        # unless otherwise specified. Please consult the official network documentation
        # for more details about these fields and how to use them.
        sig { returns(T.nilable(Lithic::Transaction::Event::NetworkInfo)) }
        attr_reader :network_info

        sig do
          params(
            network_info:
              T.nilable(Lithic::Transaction::Event::NetworkInfo::OrHash)
          ).void
        end
        attr_writer :network_info

        sig { returns(Lithic::Transaction::Event::Result::TaggedSymbol) }
        attr_accessor :result

        sig { returns(T::Array[Lithic::Transaction::Event::RuleResult]) }
        attr_accessor :rule_results

        # Type of transaction event
        sig { returns(Lithic::Transaction::Event::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          returns(T.nilable(Lithic::Transaction::Event::NetworkSpecificData))
        end
        attr_reader :network_specific_data

        sig do
          params(
            network_specific_data:
              Lithic::Transaction::Event::NetworkSpecificData::OrHash
          ).void
        end
        attr_writer :network_specific_data

        sig do
          params(
            token: String,
            amount: Integer,
            amounts: Lithic::Transaction::Event::Amounts::OrHash,
            created: Time,
            detailed_results:
              T::Array[Lithic::Transaction::Event::DetailedResult::OrSymbol],
            effective_polarity:
              Lithic::Transaction::Event::EffectivePolarity::OrSymbol,
            network_info:
              T.nilable(Lithic::Transaction::Event::NetworkInfo::OrHash),
            result: Lithic::Transaction::Event::Result::OrSymbol,
            rule_results:
              T::Array[Lithic::Transaction::Event::RuleResult::OrHash],
            type: Lithic::Transaction::Event::Type::OrSymbol,
            network_specific_data:
              Lithic::Transaction::Event::NetworkSpecificData::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Transaction event identifier.
          token:,
          # Amount of the event in the settlement currency.
          amount:,
          amounts:,
          # RFC 3339 date and time this event entered the system. UTC time zone.
          created:,
          detailed_results:,
          # Indicates whether the transaction event is a credit or debit to the account.
          effective_polarity:,
          # Information provided by the card network in each event. This includes common
          # identifiers shared between you, Lithic, the card network and in some cases the
          # acquirer. These identifiers often link together events within the same
          # transaction lifecycle and can be used to locate a particular transaction, such
          # as during processing of disputes. Not all fields are available in all events,
          # and the presence of these fields is dependent on the card network and the event
          # type. If the field is populated by the network, we will pass it through as is
          # unless otherwise specified. Please consult the official network documentation
          # for more details about these fields and how to use them.
          network_info:,
          result:,
          rule_results:,
          # Type of transaction event
          type:,
          network_specific_data: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              amount: Integer,
              amounts: Lithic::Transaction::Event::Amounts,
              created: Time,
              detailed_results:
                T::Array[
                  Lithic::Transaction::Event::DetailedResult::TaggedSymbol
                ],
              effective_polarity:
                Lithic::Transaction::Event::EffectivePolarity::TaggedSymbol,
              network_info: T.nilable(Lithic::Transaction::Event::NetworkInfo),
              result: Lithic::Transaction::Event::Result::TaggedSymbol,
              rule_results: T::Array[Lithic::Transaction::Event::RuleResult],
              type: Lithic::Transaction::Event::Type::TaggedSymbol,
              network_specific_data:
                Lithic::Transaction::Event::NetworkSpecificData
            }
          )
        end
        def to_hash
        end

        class Amounts < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Event::Amounts,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Lithic::Transaction::Event::Amounts::Cardholder) }
          attr_reader :cardholder

          sig do
            params(
              cardholder:
                Lithic::Transaction::Event::Amounts::Cardholder::OrHash
            ).void
          end
          attr_writer :cardholder

          sig { returns(Lithic::Transaction::Event::Amounts::Merchant) }
          attr_reader :merchant

          sig do
            params(
              merchant: Lithic::Transaction::Event::Amounts::Merchant::OrHash
            ).void
          end
          attr_writer :merchant

          sig do
            returns(T.nilable(Lithic::Transaction::Event::Amounts::Settlement))
          end
          attr_reader :settlement

          sig do
            params(
              settlement:
                T.nilable(
                  Lithic::Transaction::Event::Amounts::Settlement::OrHash
                )
            ).void
          end
          attr_writer :settlement

          sig do
            params(
              cardholder:
                Lithic::Transaction::Event::Amounts::Cardholder::OrHash,
              merchant: Lithic::Transaction::Event::Amounts::Merchant::OrHash,
              settlement:
                T.nilable(
                  Lithic::Transaction::Event::Amounts::Settlement::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(cardholder:, merchant:, settlement:)
          end

          sig do
            override.returns(
              {
                cardholder: Lithic::Transaction::Event::Amounts::Cardholder,
                merchant: Lithic::Transaction::Event::Amounts::Merchant,
                settlement:
                  T.nilable(Lithic::Transaction::Event::Amounts::Settlement)
              }
            )
          end
          def to_hash
          end

          class Cardholder < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::Amounts::Cardholder,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount of the event in the cardholder billing currency.
            sig { returns(Integer) }
            attr_accessor :amount

            # Exchange rate used to convert the merchant amount to the cardholder billing
            # amount.
            sig { returns(String) }
            attr_accessor :conversion_rate

            # 3-character alphabetic ISO 4217 currency
            sig { returns(String) }
            attr_accessor :currency

            sig do
              params(
                amount: Integer,
                conversion_rate: String,
                currency: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount of the event in the cardholder billing currency.
              amount:,
              # Exchange rate used to convert the merchant amount to the cardholder billing
              # amount.
              conversion_rate:,
              # 3-character alphabetic ISO 4217 currency
              currency:
            )
            end

            sig do
              override.returns(
                { amount: Integer, conversion_rate: String, currency: String }
              )
            end
            def to_hash
            end
          end

          class Merchant < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::Amounts::Merchant,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount of the event in the merchant currency.
            sig { returns(Integer) }
            attr_accessor :amount

            # 3-character alphabetic ISO 4217 currency
            sig { returns(String) }
            attr_accessor :currency

            sig do
              params(amount: Integer, currency: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Amount of the event in the merchant currency.
              amount:,
              # 3-character alphabetic ISO 4217 currency
              currency:
            )
            end

            sig { override.returns({ amount: Integer, currency: String }) }
            def to_hash
            end
          end

          class Settlement < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::Amounts::Settlement,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount of the event, if it is financial, in the settlement currency.
            # Non-financial events do not contain this amount because they do not move funds.
            sig { returns(Integer) }
            attr_accessor :amount

            # Exchange rate used to convert the merchant amount to the settlement amount.
            sig { returns(String) }
            attr_accessor :conversion_rate

            # 3-character alphabetic ISO 4217 currency
            sig { returns(String) }
            attr_accessor :currency

            sig do
              params(
                amount: Integer,
                conversion_rate: String,
                currency: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount of the event, if it is financial, in the settlement currency.
              # Non-financial events do not contain this amount because they do not move funds.
              amount:,
              # Exchange rate used to convert the merchant amount to the settlement amount.
              conversion_rate:,
              # 3-character alphabetic ISO 4217 currency
              currency:
            )
            end

            sig do
              override.returns(
                { amount: Integer, conversion_rate: String, currency: String }
              )
            end
            def to_hash
            end
          end
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Transaction::Event::DetailedResult)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED =
            T.let(
              :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_DELINQUENT =
            T.let(
              :ACCOUNT_DELINQUENT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_INACTIVE =
            T.let(
              :ACCOUNT_INACTIVE,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED =
            T.let(
              :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED =
            T.let(
              :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_UNDER_REVIEW =
            T.let(
              :ACCOUNT_UNDER_REVIEW,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ADDRESS_INCORRECT =
            T.let(
              :ADDRESS_INCORRECT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          AUTH_RULE_ALLOWED_COUNTRY =
            T.let(
              :AUTH_RULE_ALLOWED_COUNTRY,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          AUTH_RULE_ALLOWED_MCC =
            T.let(
              :AUTH_RULE_ALLOWED_MCC,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          AUTH_RULE_BLOCKED_COUNTRY =
            T.let(
              :AUTH_RULE_BLOCKED_COUNTRY,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          AUTH_RULE_BLOCKED_MCC =
            T.let(
              :AUTH_RULE_BLOCKED_MCC,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_CLOSED =
            T.let(
              :CARD_CLOSED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_CRYPTOGRAM_VALIDATION_FAILURE =
            T.let(
              :CARD_CRYPTOGRAM_VALIDATION_FAILURE,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_EXPIRED =
            T.let(
              :CARD_EXPIRED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_EXPIRY_DATE_INCORRECT =
            T.let(
              :CARD_EXPIRY_DATE_INCORRECT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_INVALID =
            T.let(
              :CARD_INVALID,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_NOT_ACTIVATED =
            T.let(
              :CARD_NOT_ACTIVATED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_PAUSED =
            T.let(
              :CARD_PAUSED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_PIN_INCORRECT =
            T.let(
              :CARD_PIN_INCORRECT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_RESTRICTED =
            T.let(
              :CARD_RESTRICTED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_SECURITY_CODE_INCORRECT =
            T.let(
              :CARD_SECURITY_CODE_INCORRECT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_SPEND_LIMIT_EXCEEDED =
            T.let(
              :CARD_SPEND_LIMIT_EXCEEDED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CONTACT_CARD_ISSUER =
            T.let(
              :CONTACT_CARD_ISSUER,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CUSTOMER_ASA_TIMEOUT =
            T.let(
              :CUSTOMER_ASA_TIMEOUT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CUSTOM_ASA_RESULT =
            T.let(
              :CUSTOM_ASA_RESULT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          DO_NOT_HONOR =
            T.let(
              :DO_NOT_HONOR,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          DRIVER_NUMBER_INVALID =
            T.let(
              :DRIVER_NUMBER_INVALID,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          FORMAT_ERROR =
            T.let(
              :FORMAT_ERROR,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          INSUFFICIENT_FUNDING_SOURCE_BALANCE =
            T.let(
              :INSUFFICIENT_FUNDING_SOURCE_BALANCE,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          INSUFFICIENT_FUNDS =
            T.let(
              :INSUFFICIENT_FUNDS,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          LITHIC_SYSTEM_ERROR =
            T.let(
              :LITHIC_SYSTEM_ERROR,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          LITHIC_SYSTEM_RATE_LIMIT =
            T.let(
              :LITHIC_SYSTEM_RATE_LIMIT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          MALFORMED_ASA_RESPONSE =
            T.let(
              :MALFORMED_ASA_RESPONSE,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          MERCHANT_INVALID =
            T.let(
              :MERCHANT_INVALID,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE =
            T.let(
              :MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          MERCHANT_NOT_PERMITTED =
            T.let(
              :MERCHANT_NOT_PERMITTED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          OVER_REVERSAL_ATTEMPTED =
            T.let(
              :OVER_REVERSAL_ATTEMPTED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          PIN_BLOCKED =
            T.let(
              :PIN_BLOCKED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_CARD_SPEND_LIMIT_EXCEEDED =
            T.let(
              :PROGRAM_CARD_SPEND_LIMIT_EXCEEDED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_SUSPENDED =
            T.let(
              :PROGRAM_SUSPENDED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_USAGE_RESTRICTION =
            T.let(
              :PROGRAM_USAGE_RESTRICTION,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          REVERSAL_UNMATCHED =
            T.let(
              :REVERSAL_UNMATCHED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          SECURITY_VIOLATION =
            T.let(
              :SECURITY_VIOLATION,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          SINGLE_USE_CARD_REATTEMPTED =
            T.let(
              :SINGLE_USE_CARD_REATTEMPTED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          TRANSACTION_INVALID =
            T.let(
              :TRANSACTION_INVALID,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL =
            T.let(
              :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER =
            T.let(
              :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          TRANSACTION_PREVIOUSLY_COMPLETED =
            T.let(
              :TRANSACTION_PREVIOUSLY_COMPLETED,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          UNAUTHORIZED_MERCHANT =
            T.let(
              :UNAUTHORIZED_MERCHANT,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )
          VEHICLE_NUMBER_INVALID =
            T.let(
              :VEHICLE_NUMBER_INVALID,
              Lithic::Transaction::Event::DetailedResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Transaction::Event::DetailedResult::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Indicates whether the transaction event is a credit or debit to the account.
        module EffectivePolarity
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Transaction::Event::EffectivePolarity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT =
            T.let(
              :CREDIT,
              Lithic::Transaction::Event::EffectivePolarity::TaggedSymbol
            )
          DEBIT =
            T.let(
              :DEBIT,
              Lithic::Transaction::Event::EffectivePolarity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Transaction::Event::EffectivePolarity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class NetworkInfo < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Event::NetworkInfo,
                Lithic::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(Lithic::Transaction::Event::NetworkInfo::Acquirer)
            )
          end
          attr_reader :acquirer

          sig do
            params(
              acquirer:
                T.nilable(
                  Lithic::Transaction::Event::NetworkInfo::Acquirer::OrHash
                )
            ).void
          end
          attr_writer :acquirer

          sig do
            returns(T.nilable(Lithic::Transaction::Event::NetworkInfo::Amex))
          end
          attr_reader :amex

          sig do
            params(
              amex:
                T.nilable(Lithic::Transaction::Event::NetworkInfo::Amex::OrHash)
            ).void
          end
          attr_writer :amex

          sig do
            returns(
              T.nilable(Lithic::Transaction::Event::NetworkInfo::Mastercard)
            )
          end
          attr_reader :mastercard

          sig do
            params(
              mastercard:
                T.nilable(
                  Lithic::Transaction::Event::NetworkInfo::Mastercard::OrHash
                )
            ).void
          end
          attr_writer :mastercard

          sig do
            returns(T.nilable(Lithic::Transaction::Event::NetworkInfo::Visa))
          end
          attr_reader :visa

          sig do
            params(
              visa:
                T.nilable(Lithic::Transaction::Event::NetworkInfo::Visa::OrHash)
            ).void
          end
          attr_writer :visa

          # Information provided by the card network in each event. This includes common
          # identifiers shared between you, Lithic, the card network and in some cases the
          # acquirer. These identifiers often link together events within the same
          # transaction lifecycle and can be used to locate a particular transaction, such
          # as during processing of disputes. Not all fields are available in all events,
          # and the presence of these fields is dependent on the card network and the event
          # type. If the field is populated by the network, we will pass it through as is
          # unless otherwise specified. Please consult the official network documentation
          # for more details about these fields and how to use them.
          sig do
            params(
              acquirer:
                T.nilable(
                  Lithic::Transaction::Event::NetworkInfo::Acquirer::OrHash
                ),
              amex:
                T.nilable(
                  Lithic::Transaction::Event::NetworkInfo::Amex::OrHash
                ),
              mastercard:
                T.nilable(
                  Lithic::Transaction::Event::NetworkInfo::Mastercard::OrHash
                ),
              visa:
                T.nilable(Lithic::Transaction::Event::NetworkInfo::Visa::OrHash)
            ).returns(T.attached_class)
          end
          def self.new(acquirer:, amex:, mastercard:, visa:)
          end

          sig do
            override.returns(
              {
                acquirer:
                  T.nilable(Lithic::Transaction::Event::NetworkInfo::Acquirer),
                amex: T.nilable(Lithic::Transaction::Event::NetworkInfo::Amex),
                mastercard:
                  T.nilable(
                    Lithic::Transaction::Event::NetworkInfo::Mastercard
                  ),
                visa: T.nilable(Lithic::Transaction::Event::NetworkInfo::Visa)
              }
            )
          end
          def to_hash
          end

          class Acquirer < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::NetworkInfo::Acquirer,
                  Lithic::Internal::AnyHash
                )
              end

            # Identifier assigned by the acquirer, applicable to dual-message transactions
            # only. The acquirer reference number (ARN) is only populated once a transaction
            # has been cleared, and it is not available in all transactions (such as automated
            # fuel dispenser transactions). A single transaction can contain multiple ARNs if
            # the merchant sends multiple clearings.
            sig { returns(T.nilable(String)) }
            attr_accessor :acquirer_reference_number

            # Identifier assigned by the acquirer.
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            sig do
              params(
                acquirer_reference_number: T.nilable(String),
                retrieval_reference_number: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Identifier assigned by the acquirer, applicable to dual-message transactions
              # only. The acquirer reference number (ARN) is only populated once a transaction
              # has been cleared, and it is not available in all transactions (such as automated
              # fuel dispenser transactions). A single transaction can contain multiple ARNs if
              # the merchant sends multiple clearings.
              acquirer_reference_number:,
              # Identifier assigned by the acquirer.
              retrieval_reference_number:
            )
            end

            sig do
              override.returns(
                {
                  acquirer_reference_number: T.nilable(String),
                  retrieval_reference_number: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class Amex < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::NetworkInfo::Amex,
                  Lithic::Internal::AnyHash
                )
              end

            # Identifier assigned by American Express. Matches the `transaction_id` of a prior
            # related event. May be populated in incremental authorizations (authorization
            # requests that augment a previously authorized amount), authorization advices,
            # financial authorizations, and clearings.
            sig { returns(T.nilable(String)) }
            attr_accessor :original_transaction_id

            # Identifier assigned by American Express to link original messages to subsequent
            # messages. Guaranteed by American Express to be unique for each original
            # authorization and financial authorization.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

            sig do
              params(
                original_transaction_id: T.nilable(String),
                transaction_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Identifier assigned by American Express. Matches the `transaction_id` of a prior
              # related event. May be populated in incremental authorizations (authorization
              # requests that augment a previously authorized amount), authorization advices,
              # financial authorizations, and clearings.
              original_transaction_id:,
              # Identifier assigned by American Express to link original messages to subsequent
              # messages. Guaranteed by American Express to be unique for each original
              # authorization and financial authorization.
              transaction_id:
            )
            end

            sig do
              override.returns(
                {
                  original_transaction_id: T.nilable(String),
                  transaction_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class Mastercard < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::NetworkInfo::Mastercard,
                  Lithic::Internal::AnyHash
                )
              end

            # Identifier assigned by Mastercard. Guaranteed by Mastercard to be unique for any
            # transaction within a specific financial network on any processing day.
            sig { returns(T.nilable(String)) }
            attr_accessor :banknet_reference_number

            # Identifier assigned by Mastercard. Matches the `banknet_reference_number` of a
            # prior related event. May be populated in authorization reversals, incremental
            # authorizations (authorization requests that augment a previously authorized
            # amount), automated fuel dispenser authorization advices and clearings, and
            # financial authorizations. If the original banknet reference number contains all
            # zeroes, then no actual reference number could be found by the network or
            # acquirer. If Mastercard converts a transaction from dual-message to
            # single-message, such as for certain ATM transactions, it will populate the
            # original banknet reference number in the resulting financial authorization with
            # the banknet reference number of the initial authorization, which Lithic does not
            # receive.
            sig { returns(T.nilable(String)) }
            attr_accessor :original_banknet_reference_number

            # Identifier assigned by Mastercard. Matches the `switch_serial_number` of a prior
            # related event. May be populated in returns and return reversals. Applicable to
            # single-message transactions only.
            sig { returns(T.nilable(String)) }
            attr_accessor :original_switch_serial_number

            # Identifier assigned by Mastercard, applicable to single-message transactions
            # only.
            sig { returns(T.nilable(String)) }
            attr_accessor :switch_serial_number

            sig do
              params(
                banknet_reference_number: T.nilable(String),
                original_banknet_reference_number: T.nilable(String),
                original_switch_serial_number: T.nilable(String),
                switch_serial_number: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Identifier assigned by Mastercard. Guaranteed by Mastercard to be unique for any
              # transaction within a specific financial network on any processing day.
              banknet_reference_number:,
              # Identifier assigned by Mastercard. Matches the `banknet_reference_number` of a
              # prior related event. May be populated in authorization reversals, incremental
              # authorizations (authorization requests that augment a previously authorized
              # amount), automated fuel dispenser authorization advices and clearings, and
              # financial authorizations. If the original banknet reference number contains all
              # zeroes, then no actual reference number could be found by the network or
              # acquirer. If Mastercard converts a transaction from dual-message to
              # single-message, such as for certain ATM transactions, it will populate the
              # original banknet reference number in the resulting financial authorization with
              # the banknet reference number of the initial authorization, which Lithic does not
              # receive.
              original_banknet_reference_number:,
              # Identifier assigned by Mastercard. Matches the `switch_serial_number` of a prior
              # related event. May be populated in returns and return reversals. Applicable to
              # single-message transactions only.
              original_switch_serial_number:,
              # Identifier assigned by Mastercard, applicable to single-message transactions
              # only.
              switch_serial_number:
            )
            end

            sig do
              override.returns(
                {
                  banknet_reference_number: T.nilable(String),
                  original_banknet_reference_number: T.nilable(String),
                  original_switch_serial_number: T.nilable(String),
                  switch_serial_number: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class Visa < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::NetworkInfo::Visa,
                  Lithic::Internal::AnyHash
                )
              end

            # Identifier assigned by Visa. Matches the `transaction_id` of a prior related
            # event. May be populated in incremental authorizations (authorization requests
            # that augment a previously authorized amount), authorization advices, financial
            # authorizations, and clearings.
            sig { returns(T.nilable(String)) }
            attr_accessor :original_transaction_id

            # Identifier assigned by Visa to link original messages to subsequent messages.
            # Guaranteed by Visa to be unique for each original authorization and financial
            # authorization.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

            sig do
              params(
                original_transaction_id: T.nilable(String),
                transaction_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Identifier assigned by Visa. Matches the `transaction_id` of a prior related
              # event. May be populated in incremental authorizations (authorization requests
              # that augment a previously authorized amount), authorization advices, financial
              # authorizations, and clearings.
              original_transaction_id:,
              # Identifier assigned by Visa to link original messages to subsequent messages.
              # Guaranteed by Visa to be unique for each original authorization and financial
              # authorization.
              transaction_id:
            )
            end

            sig do
              override.returns(
                {
                  original_transaction_id: T.nilable(String),
                  transaction_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Transaction::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_STATE_TRANSACTION_FAIL =
            T.let(
              :ACCOUNT_STATE_TRANSACTION_FAIL,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          APPROVED =
            T.let(:APPROVED, Lithic::Transaction::Event::Result::TaggedSymbol)
          BANK_CONNECTION_ERROR =
            T.let(
              :BANK_CONNECTION_ERROR,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          BANK_NOT_VERIFIED =
            T.let(
              :BANK_NOT_VERIFIED,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          CARD_CLOSED =
            T.let(
              :CARD_CLOSED,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          CARD_PAUSED =
            T.let(
              :CARD_PAUSED,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          DECLINED =
            T.let(:DECLINED, Lithic::Transaction::Event::Result::TaggedSymbol)
          FRAUD_ADVICE =
            T.let(
              :FRAUD_ADVICE,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          IGNORED_TTL_EXPIRY =
            T.let(
              :IGNORED_TTL_EXPIRY,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          INACTIVE_ACCOUNT =
            T.let(
              :INACTIVE_ACCOUNT,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          INCORRECT_PIN =
            T.let(
              :INCORRECT_PIN,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          INVALID_CARD_DETAILS =
            T.let(
              :INVALID_CARD_DETAILS,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          INSUFFICIENT_FUNDS =
            T.let(
              :INSUFFICIENT_FUNDS,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          INSUFFICIENT_FUNDS_PRELOAD =
            T.let(
              :INSUFFICIENT_FUNDS_PRELOAD,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          INVALID_TRANSACTION =
            T.let(
              :INVALID_TRANSACTION,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          MERCHANT_BLACKLIST =
            T.let(
              :MERCHANT_BLACKLIST,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          ORIGINAL_NOT_FOUND =
            T.let(
              :ORIGINAL_NOT_FOUND,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          PREVIOUSLY_COMPLETED =
            T.let(
              :PREVIOUSLY_COMPLETED,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          SINGLE_USE_RECHARGED =
            T.let(
              :SINGLE_USE_RECHARGED,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          SWITCH_INOPERATIVE_ADVICE =
            T.let(
              :SWITCH_INOPERATIVE_ADVICE,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          UNAUTHORIZED_MERCHANT =
            T.let(
              :UNAUTHORIZED_MERCHANT,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          UNKNOWN_HOST_TIMEOUT =
            T.let(
              :UNKNOWN_HOST_TIMEOUT,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )
          USER_TRANSACTION_LIMIT =
            T.let(
              :USER_TRANSACTION_LIMIT,
              Lithic::Transaction::Event::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Transaction::Event::Result::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class RuleResult < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Event::RuleResult,
                Lithic::Internal::AnyHash
              )
            end

          # The Auth Rule Token associated with the rule from which the decline originated.
          # If this is set to null, then the decline was not associated with a
          # customer-configured Auth Rule. This may happen in cases where a transaction is
          # declined due to a Lithic-configured security or compliance rule, for example.
          sig { returns(T.nilable(String)) }
          attr_accessor :auth_rule_token

          # A human-readable explanation outlining the motivation for the rule's decline.
          sig { returns(T.nilable(String)) }
          attr_accessor :explanation

          # The name for the rule, if any was configured.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The detailed_result associated with this rule's decline.
          sig do
            returns(
              Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
            )
          end
          attr_accessor :result

          sig do
            params(
              auth_rule_token: T.nilable(String),
              explanation: T.nilable(String),
              name: T.nilable(String),
              result: Lithic::Transaction::Event::RuleResult::Result::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The Auth Rule Token associated with the rule from which the decline originated.
            # If this is set to null, then the decline was not associated with a
            # customer-configured Auth Rule. This may happen in cases where a transaction is
            # declined due to a Lithic-configured security or compliance rule, for example.
            auth_rule_token:,
            # A human-readable explanation outlining the motivation for the rule's decline.
            explanation:,
            # The name for the rule, if any was configured.
            name:,
            # The detailed_result associated with this rule's decline.
            result:
          )
          end

          sig do
            override.returns(
              {
                auth_rule_token: T.nilable(String),
                explanation: T.nilable(String),
                name: T.nilable(String),
                result:
                  Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The detailed_result associated with this rule's decline.
          module Result
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Transaction::Event::RuleResult::Result)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED =
              T.let(
                :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ACCOUNT_DELINQUENT =
              T.let(
                :ACCOUNT_DELINQUENT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ACCOUNT_INACTIVE =
              T.let(
                :ACCOUNT_INACTIVE,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED =
              T.let(
                :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED =
              T.let(
                :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ACCOUNT_UNDER_REVIEW =
              T.let(
                :ACCOUNT_UNDER_REVIEW,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ADDRESS_INCORRECT =
              T.let(
                :ADDRESS_INCORRECT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            APPROVED =
              T.let(
                :APPROVED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            AUTH_RULE_ALLOWED_COUNTRY =
              T.let(
                :AUTH_RULE_ALLOWED_COUNTRY,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            AUTH_RULE_ALLOWED_MCC =
              T.let(
                :AUTH_RULE_ALLOWED_MCC,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            AUTH_RULE_BLOCKED_COUNTRY =
              T.let(
                :AUTH_RULE_BLOCKED_COUNTRY,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            AUTH_RULE_BLOCKED_MCC =
              T.let(
                :AUTH_RULE_BLOCKED_MCC,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_CLOSED =
              T.let(
                :CARD_CLOSED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_CRYPTOGRAM_VALIDATION_FAILURE =
              T.let(
                :CARD_CRYPTOGRAM_VALIDATION_FAILURE,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_EXPIRED =
              T.let(
                :CARD_EXPIRED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_EXPIRY_DATE_INCORRECT =
              T.let(
                :CARD_EXPIRY_DATE_INCORRECT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_INVALID =
              T.let(
                :CARD_INVALID,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_NOT_ACTIVATED =
              T.let(
                :CARD_NOT_ACTIVATED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_PAUSED =
              T.let(
                :CARD_PAUSED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_PIN_INCORRECT =
              T.let(
                :CARD_PIN_INCORRECT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_RESTRICTED =
              T.let(
                :CARD_RESTRICTED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_SECURITY_CODE_INCORRECT =
              T.let(
                :CARD_SECURITY_CODE_INCORRECT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_SPEND_LIMIT_EXCEEDED =
              T.let(
                :CARD_SPEND_LIMIT_EXCEEDED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CONTACT_CARD_ISSUER =
              T.let(
                :CONTACT_CARD_ISSUER,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CUSTOMER_ASA_TIMEOUT =
              T.let(
                :CUSTOMER_ASA_TIMEOUT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CUSTOM_ASA_RESULT =
              T.let(
                :CUSTOM_ASA_RESULT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            DECLINED =
              T.let(
                :DECLINED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            DO_NOT_HONOR =
              T.let(
                :DO_NOT_HONOR,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            DRIVER_NUMBER_INVALID =
              T.let(
                :DRIVER_NUMBER_INVALID,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            FORMAT_ERROR =
              T.let(
                :FORMAT_ERROR,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            INSUFFICIENT_FUNDING_SOURCE_BALANCE =
              T.let(
                :INSUFFICIENT_FUNDING_SOURCE_BALANCE,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            INSUFFICIENT_FUNDS =
              T.let(
                :INSUFFICIENT_FUNDS,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            LITHIC_SYSTEM_ERROR =
              T.let(
                :LITHIC_SYSTEM_ERROR,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            LITHIC_SYSTEM_RATE_LIMIT =
              T.let(
                :LITHIC_SYSTEM_RATE_LIMIT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            MALFORMED_ASA_RESPONSE =
              T.let(
                :MALFORMED_ASA_RESPONSE,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            MERCHANT_INVALID =
              T.let(
                :MERCHANT_INVALID,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE =
              T.let(
                :MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            MERCHANT_NOT_PERMITTED =
              T.let(
                :MERCHANT_NOT_PERMITTED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            OVER_REVERSAL_ATTEMPTED =
              T.let(
                :OVER_REVERSAL_ATTEMPTED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            PIN_BLOCKED =
              T.let(
                :PIN_BLOCKED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            PROGRAM_CARD_SPEND_LIMIT_EXCEEDED =
              T.let(
                :PROGRAM_CARD_SPEND_LIMIT_EXCEEDED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            PROGRAM_SUSPENDED =
              T.let(
                :PROGRAM_SUSPENDED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            PROGRAM_USAGE_RESTRICTION =
              T.let(
                :PROGRAM_USAGE_RESTRICTION,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            REVERSAL_UNMATCHED =
              T.let(
                :REVERSAL_UNMATCHED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            SECURITY_VIOLATION =
              T.let(
                :SECURITY_VIOLATION,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            SINGLE_USE_CARD_REATTEMPTED =
              T.let(
                :SINGLE_USE_CARD_REATTEMPTED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            TRANSACTION_INVALID =
              T.let(
                :TRANSACTION_INVALID,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL =
              T.let(
                :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER =
              T.let(
                :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            TRANSACTION_PREVIOUSLY_COMPLETED =
              T.let(
                :TRANSACTION_PREVIOUSLY_COMPLETED,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            UNAUTHORIZED_MERCHANT =
              T.let(
                :UNAUTHORIZED_MERCHANT,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            VEHICLE_NUMBER_INVALID =
              T.let(
                :VEHICLE_NUMBER_INVALID,
                Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Transaction::Event::RuleResult::Result::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Type of transaction event
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Transaction::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION =
            T.let(
              :AUTHORIZATION,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          AUTHORIZATION_ADVICE =
            T.let(
              :AUTHORIZATION_ADVICE,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          AUTHORIZATION_EXPIRY =
            T.let(
              :AUTHORIZATION_EXPIRY,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          AUTHORIZATION_REVERSAL =
            T.let(
              :AUTHORIZATION_REVERSAL,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          BALANCE_INQUIRY =
            T.let(
              :BALANCE_INQUIRY,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          CLEARING =
            T.let(:CLEARING, Lithic::Transaction::Event::Type::TaggedSymbol)
          CORRECTION_CREDIT =
            T.let(
              :CORRECTION_CREDIT,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          CORRECTION_DEBIT =
            T.let(
              :CORRECTION_DEBIT,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          CREDIT_AUTHORIZATION =
            T.let(
              :CREDIT_AUTHORIZATION,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          CREDIT_AUTHORIZATION_ADVICE =
            T.let(
              :CREDIT_AUTHORIZATION_ADVICE,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          FINANCIAL_AUTHORIZATION =
            T.let(
              :FINANCIAL_AUTHORIZATION,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          FINANCIAL_CREDIT_AUTHORIZATION =
            T.let(
              :FINANCIAL_CREDIT_AUTHORIZATION,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )
          RETURN =
            T.let(:RETURN, Lithic::Transaction::Event::Type::TaggedSymbol)
          RETURN_REVERSAL =
            T.let(
              :RETURN_REVERSAL,
              Lithic::Transaction::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Transaction::Event::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class NetworkSpecificData < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transaction::Event::NetworkSpecificData,
                Lithic::Internal::AnyHash
              )
            end

          sig do
            returns(Lithic::Transaction::Event::NetworkSpecificData::Mastercard)
          end
          attr_reader :mastercard

          sig do
            params(
              mastercard:
                Lithic::Transaction::Event::NetworkSpecificData::Mastercard::OrHash
            ).void
          end
          attr_writer :mastercard

          sig { returns(Lithic::Transaction::Event::NetworkSpecificData::Visa) }
          attr_reader :visa

          sig do
            params(
              visa:
                Lithic::Transaction::Event::NetworkSpecificData::Visa::OrHash
            ).void
          end
          attr_writer :visa

          sig do
            params(
              mastercard:
                Lithic::Transaction::Event::NetworkSpecificData::Mastercard::OrHash,
              visa:
                Lithic::Transaction::Event::NetworkSpecificData::Visa::OrHash
            ).returns(T.attached_class)
          end
          def self.new(mastercard:, visa:)
          end

          sig do
            override.returns(
              {
                mastercard:
                  Lithic::Transaction::Event::NetworkSpecificData::Mastercard,
                visa: Lithic::Transaction::Event::NetworkSpecificData::Visa
              }
            )
          end
          def to_hash
          end

          class Mastercard < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::NetworkSpecificData::Mastercard,
                  Lithic::Internal::AnyHash
                )
              end

            # Indicates the electronic commerce security level and UCAF collection.
            sig { returns(T.nilable(String)) }
            attr_accessor :ecommerce_security_level_indicator

            # The On-behalf Service performed on the transaction and the results. Contains all
            # applicable, on-behalf service results that were performed on a given
            # transaction.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Lithic::Transaction::Event::NetworkSpecificData::Mastercard::OnBehalfServiceResult
                  ]
                )
              )
            end
            attr_accessor :on_behalf_service_result

            # Indicates the type of additional transaction purpose.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_type_identifier

            sig do
              params(
                ecommerce_security_level_indicator: T.nilable(String),
                on_behalf_service_result:
                  T.nilable(
                    T::Array[
                      Lithic::Transaction::Event::NetworkSpecificData::Mastercard::OnBehalfServiceResult::OrHash
                    ]
                  ),
                transaction_type_identifier: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Indicates the electronic commerce security level and UCAF collection.
              ecommerce_security_level_indicator:,
              # The On-behalf Service performed on the transaction and the results. Contains all
              # applicable, on-behalf service results that were performed on a given
              # transaction.
              on_behalf_service_result:,
              # Indicates the type of additional transaction purpose.
              transaction_type_identifier:
            )
            end

            sig do
              override.returns(
                {
                  ecommerce_security_level_indicator: T.nilable(String),
                  on_behalf_service_result:
                    T.nilable(
                      T::Array[
                        Lithic::Transaction::Event::NetworkSpecificData::Mastercard::OnBehalfServiceResult
                      ]
                    ),
                  transaction_type_identifier: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class OnBehalfServiceResult < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Transaction::Event::NetworkSpecificData::Mastercard::OnBehalfServiceResult,
                    Lithic::Internal::AnyHash
                  )
                end

              # Indicates the results of the service processing.
              sig { returns(String) }
              attr_accessor :result_1

              # Identifies the results of the service processing.
              sig { returns(String) }
              attr_accessor :result_2

              # Indicates the service performed on the transaction.
              sig { returns(String) }
              attr_accessor :service

              sig do
                params(
                  result_1: String,
                  result_2: String,
                  service: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Indicates the results of the service processing.
                result_1:,
                # Identifies the results of the service processing.
                result_2:,
                # Indicates the service performed on the transaction.
                service:
              )
              end

              sig do
                override.returns(
                  { result_1: String, result_2: String, service: String }
                )
              end
              def to_hash
              end
            end
          end

          class Visa < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transaction::Event::NetworkSpecificData::Visa,
                  Lithic::Internal::AnyHash
                )
              end

            # Identifies the purpose or category of a transaction, used to classify and
            # process transactions according to Visa’s rules.
            sig { returns(T.nilable(String)) }
            attr_accessor :business_application_identifier

            sig do
              params(
                business_application_identifier: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Identifies the purpose or category of a transaction, used to classify and
              # process transactions according to Visa’s rules.
              business_application_identifier:
            )
            end

            sig do
              override.returns(
                { business_application_identifier: T.nilable(String) }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
