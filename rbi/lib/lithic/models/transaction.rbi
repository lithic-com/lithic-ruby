# typed: strong

module Lithic
  module Models
    class Transaction < Lithic::Internal::Type::BaseModel
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
      # dispute and chargeback filing.
      sig { returns(T.nilable(String)) }
      attr_accessor :acquirer_reference_number

      # When the transaction is pending, this represents the authorization amount of the
      # transaction in the anticipated settlement currency. Once the transaction has
      # settled, this field represents the settled amount in the settlement currency.
      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Lithic::Models::Transaction::Amounts) }
      attr_reader :amounts

      sig { params(amounts: T.any(Lithic::Models::Transaction::Amounts, Lithic::Internal::AnyHash)).void }
      attr_writer :amounts

      # The authorization amount of the transaction in the anticipated settlement
      # currency.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :authorization_amount

      # A fixed-width 6-digit numeric identifier that can be used to identify a
      # transaction with networks.
      sig { returns(T.nilable(String)) }
      attr_accessor :authorization_code

      sig { returns(T.nilable(Lithic::Models::Transaction::Avs)) }
      attr_reader :avs

      sig { params(avs: T.nilable(T.any(Lithic::Models::Transaction::Avs, Lithic::Internal::AnyHash))).void }
      attr_writer :avs

      # Token for the card used in this transaction.
      sig { returns(String) }
      attr_accessor :card_token

      sig { returns(T.nilable(Lithic::Models::Transaction::CardholderAuthentication)) }
      attr_reader :cardholder_authentication

      sig do
        params(
          cardholder_authentication: T.nilable(T.any(Lithic::Models::Transaction::CardholderAuthentication, Lithic::Internal::AnyHash))
        )
          .void
      end
      attr_writer :cardholder_authentication

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      sig { returns(Lithic::Models::Transaction::Merchant) }
      attr_reader :merchant

      sig { params(merchant: T.any(Lithic::Models::Transaction::Merchant, Lithic::Internal::AnyHash)).void }
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

      # Card network of the authorization. Can be `INTERLINK`, `MAESTRO`, `MASTERCARD`,
      # `VISA`, or `UNKNOWN`. Value is `UNKNOWN` when Lithic cannot determine the
      # network code from the upstream provider.
      sig { returns(T.nilable(Lithic::Models::Transaction::Network::TaggedSymbol)) }
      attr_accessor :network

      # Network-provided score assessing risk level associated with a given
      # authorization. Scores are on a range of 0-999, with 0 representing the lowest
      # risk and 999 representing the highest risk. For Visa transactions, where the raw
      # score has a range of 0-99, Lithic will normalize the score by multiplying the
      # raw score by 10x.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :network_risk_score

      sig { returns(Lithic::Models::Transaction::Pos) }
      attr_reader :pos

      sig { params(pos: T.any(Lithic::Models::Transaction::Pos, Lithic::Internal::AnyHash)).void }
      attr_writer :pos

      sig { returns(Lithic::Models::Transaction::Result::TaggedSymbol) }
      attr_accessor :result

      # The settled amount of the transaction in the settlement currency.
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Status of the transaction.
      sig { returns(Lithic::Models::Transaction::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(Lithic::Models::Transaction::TokenInfo)) }
      attr_reader :token_info

      sig do
        params(token_info: T.nilable(T.any(Lithic::Models::Transaction::TokenInfo, Lithic::Internal::AnyHash)))
          .void
      end
      attr_writer :token_info

      # Date and time when the transaction last updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(T::Array[Lithic::Models::Transaction::Event])) }
      attr_reader :events

      sig { params(events: T::Array[T.any(Lithic::Models::Transaction::Event, Lithic::Internal::AnyHash)]).void }
      attr_writer :events

      sig do
        params(
          token: String,
          account_token: String,
          acquirer_fee: T.nilable(Integer),
          acquirer_reference_number: T.nilable(String),
          amount: Integer,
          amounts: T.any(Lithic::Models::Transaction::Amounts, Lithic::Internal::AnyHash),
          authorization_amount: T.nilable(Integer),
          authorization_code: T.nilable(String),
          avs: T.nilable(T.any(Lithic::Models::Transaction::Avs, Lithic::Internal::AnyHash)),
          card_token: String,
          cardholder_authentication: T.nilable(T.any(Lithic::Models::Transaction::CardholderAuthentication, Lithic::Internal::AnyHash)),
          created: Time,
          merchant: T.any(Lithic::Models::Transaction::Merchant, Lithic::Internal::AnyHash),
          merchant_amount: T.nilable(Integer),
          merchant_authorization_amount: T.nilable(Integer),
          merchant_currency: String,
          network: T.nilable(Lithic::Models::Transaction::Network::OrSymbol),
          network_risk_score: T.nilable(Integer),
          pos: T.any(Lithic::Models::Transaction::Pos, Lithic::Internal::AnyHash),
          result: Lithic::Models::Transaction::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::Models::Transaction::Status::OrSymbol,
          token_info: T.nilable(T.any(Lithic::Models::Transaction::TokenInfo, Lithic::Internal::AnyHash)),
          updated: Time,
          events: T::Array[T.any(Lithic::Models::Transaction::Event, Lithic::Internal::AnyHash)]
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        account_token:,
        acquirer_fee:,
        acquirer_reference_number:,
        amount:,
        amounts:,
        authorization_amount:,
        authorization_code:,
        avs:,
        card_token:,
        cardholder_authentication:,
        created:,
        merchant:,
        merchant_amount:,
        merchant_authorization_amount:,
        merchant_currency:,
        network:,
        network_risk_score:,
        pos:,
        result:,
        settled_amount:,
        status:,
        token_info:,
        updated:,
        events: nil
      ); end
      sig do
        override
          .returns(
            {
              token: String,
              account_token: String,
              acquirer_fee: T.nilable(Integer),
              acquirer_reference_number: T.nilable(String),
              amount: Integer,
              amounts: Lithic::Models::Transaction::Amounts,
              authorization_amount: T.nilable(Integer),
              authorization_code: T.nilable(String),
              avs: T.nilable(Lithic::Models::Transaction::Avs),
              card_token: String,
              cardholder_authentication: T.nilable(Lithic::Models::Transaction::CardholderAuthentication),
              created: Time,
              merchant: Lithic::Models::Transaction::Merchant,
              merchant_amount: T.nilable(Integer),
              merchant_authorization_amount: T.nilable(Integer),
              merchant_currency: String,
              network: T.nilable(Lithic::Models::Transaction::Network::TaggedSymbol),
              network_risk_score: T.nilable(Integer),
              pos: Lithic::Models::Transaction::Pos,
              result: Lithic::Models::Transaction::Result::TaggedSymbol,
              settled_amount: Integer,
              status: Lithic::Models::Transaction::Status::TaggedSymbol,
              token_info: T.nilable(Lithic::Models::Transaction::TokenInfo),
              updated: Time,
              events: T::Array[Lithic::Models::Transaction::Event]
            }
          )
      end
      def to_hash; end

      class Amounts < Lithic::Internal::Type::BaseModel
        sig { returns(Lithic::Models::Transaction::Amounts::Cardholder) }
        attr_reader :cardholder

        sig do
          params(cardholder: T.any(Lithic::Models::Transaction::Amounts::Cardholder, Lithic::Internal::AnyHash)).void
        end
        attr_writer :cardholder

        sig { returns(Lithic::Models::Transaction::Amounts::Hold) }
        attr_reader :hold

        sig { params(hold: T.any(Lithic::Models::Transaction::Amounts::Hold, Lithic::Internal::AnyHash)).void }
        attr_writer :hold

        sig { returns(Lithic::Models::Transaction::Amounts::Merchant) }
        attr_reader :merchant

        sig { params(merchant: T.any(Lithic::Models::Transaction::Amounts::Merchant, Lithic::Internal::AnyHash)).void }
        attr_writer :merchant

        sig { returns(Lithic::Models::Transaction::Amounts::Settlement) }
        attr_reader :settlement

        sig do
          params(settlement: T.any(Lithic::Models::Transaction::Amounts::Settlement, Lithic::Internal::AnyHash)).void
        end
        attr_writer :settlement

        sig do
          params(
            cardholder: T.any(Lithic::Models::Transaction::Amounts::Cardholder, Lithic::Internal::AnyHash),
            hold: T.any(Lithic::Models::Transaction::Amounts::Hold, Lithic::Internal::AnyHash),
            merchant: T.any(Lithic::Models::Transaction::Amounts::Merchant, Lithic::Internal::AnyHash),
            settlement: T.any(Lithic::Models::Transaction::Amounts::Settlement, Lithic::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(cardholder:, hold:, merchant:, settlement:); end

        sig do
          override
            .returns(
              {
                cardholder: Lithic::Models::Transaction::Amounts::Cardholder,
                hold: Lithic::Models::Transaction::Amounts::Hold,
                merchant: Lithic::Models::Transaction::Amounts::Merchant,
                settlement: Lithic::Models::Transaction::Amounts::Settlement
              }
            )
        end
        def to_hash; end

        class Cardholder < Lithic::Internal::Type::BaseModel
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

          sig { params(amount: Integer, conversion_rate: String, currency: String).returns(T.attached_class) }
          def self.new(amount:, conversion_rate:, currency:); end

          sig { override.returns({amount: Integer, conversion_rate: String, currency: String}) }
          def to_hash; end
        end

        class Hold < Lithic::Internal::Type::BaseModel
          # The pending amount of the transaction in the anticipated settlement currency.
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig { params(amount: Integer, currency: String).returns(T.attached_class) }
          def self.new(amount:, currency:); end

          sig { override.returns({amount: Integer, currency: String}) }
          def to_hash; end
        end

        class Merchant < Lithic::Internal::Type::BaseModel
          # The settled amount of the transaction in the merchant currency.
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig { params(amount: Integer, currency: String).returns(T.attached_class) }
          def self.new(amount:, currency:); end

          sig { override.returns({amount: Integer, currency: String}) }
          def to_hash; end
        end

        class Settlement < Lithic::Internal::Type::BaseModel
          # The settled amount of the transaction in the settlement currency.
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig { params(amount: Integer, currency: String).returns(T.attached_class) }
          def self.new(amount:, currency:); end

          sig { override.returns({amount: Integer, currency: String}) }
          def to_hash; end
        end
      end

      class Avs < Lithic::Internal::Type::BaseModel
        # Cardholder address
        sig { returns(String) }
        attr_accessor :address

        # Cardholder ZIP code
        sig { returns(String) }
        attr_accessor :zipcode

        sig { params(address: String, zipcode: String).returns(T.attached_class) }
        def self.new(address:, zipcode:); end

        sig { override.returns({address: String, zipcode: String}) }
        def to_hash; end
      end

      class CardholderAuthentication < Lithic::Internal::Type::BaseModel
        # The 3DS version used for the authentication
        sig { returns(T.nilable(String)) }
        attr_accessor :three_ds_version

        # Whether an acquirer exemption applied to the transaction.
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol) }
        attr_accessor :acquirer_exemption

        # Indicates what the outcome of the 3DS authentication process is.
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol) }
        attr_accessor :authentication_result

        # Indicates which party made the 3DS authentication decision.
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol) }
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
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol) }
        attr_accessor :liability_shift

        # Unique identifier you can use to match a given 3DS authentication (available via
        # the three_ds_authentication.created event webhook) and the transaction. Note
        # that in cases where liability shift does not occur, this token is matched to the
        # transaction on a best-effort basis.
        sig { returns(T.nilable(String)) }
        attr_accessor :three_ds_authentication_token

        # Indicates whether a 3DS challenge flow was used, and if so, what the
        # verification method was. (deprecated, use `authentication_result`)
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol) }
        attr_accessor :verification_attempted

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        # use `authentication_result`)
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol) }
        attr_accessor :verification_result

        sig do
          params(
            three_ds_version: T.nilable(String),
            acquirer_exemption: Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::OrSymbol,
            authentication_result: Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::OrSymbol,
            decision_made_by: Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::OrSymbol,
            liability_shift: Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::OrSymbol,
            three_ds_authentication_token: T.nilable(String),
            verification_attempted: Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::OrSymbol,
            verification_result: Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          three_ds_version:,
          acquirer_exemption:,
          authentication_result:,
          decision_made_by:,
          liability_shift:,
          three_ds_authentication_token:,
          verification_attempted:,
          verification_result:
        ); end
        sig do
          override
            .returns(
              {
                three_ds_version: T.nilable(String),
                acquirer_exemption: Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol,
                authentication_result: Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol,
                decision_made_by: Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol,
                liability_shift: Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol,
                three_ds_authentication_token: T.nilable(String),
                verification_attempted: Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol,
                verification_result: Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # Whether an acquirer exemption applied to the transaction.
        module AcquirerExemption
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHENTICATION_OUTAGE_EXCEPTION =
            T.let(
              :AUTHENTICATION_OUTAGE_EXCEPTION,
              Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          LOW_VALUE =
            T.let(:LOW_VALUE, Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol)
          MERCHANT_INITIATED_TRANSACTION =
            T.let(
              :MERCHANT_INITIATED_TRANSACTION,
              Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          NONE =
            T.let(:NONE, Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol)
          RECURRING_PAYMENT =
            T.let(
              :RECURRING_PAYMENT,
              Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          SECURE_CORPORATE_PAYMENT =
            T.let(
              :SECURE_CORPORATE_PAYMENT,
              Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          STRONG_CUSTOMER_AUTHENTICATION_DELEGATION =
            T.let(
              :STRONG_CUSTOMER_AUTHENTICATION_DELEGATION,
              Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )
          TRANSACTION_RISK_ANALYSIS =
            T.let(
              :TRANSACTION_RISK_ANALYSIS,
              Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol
            )

          sig do
            override
              .returns(T::Array[Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol])
          end
          def self.values; end
        end

        # Indicates what the outcome of the 3DS authentication process is.
        module AuthenticationResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ATTEMPTS =
            T.let(
              :ATTEMPTS,
              Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol
            )
          DECLINE =
            T.let(:DECLINE, Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol)
          NONE =
            T.let(:NONE, Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol)
          SUCCESS =
            T.let(:SUCCESS, Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol)

          sig do
            override
              .returns(
                T::Array[Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # Indicates which party made the 3DS authentication decision.
        module DecisionMadeBy
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER_ENDPOINT =
            T.let(
              :CUSTOMER_ENDPOINT,
              Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
            )
          LITHIC_DEFAULT =
            T.let(
              :LITHIC_DEFAULT,
              Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol
            )
          LITHIC_RULES =
            T.let(:LITHIC_RULES, Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol)
          NETWORK =
            T.let(:NETWORK, Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol)
          UNKNOWN =
            T.let(:UNKNOWN, Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol])
          end
          def self.values; end
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
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIABILITY_SHIFT_3DS_AUTHENTICATED =
            T.let(
              :"3DS_AUTHENTICATED",
              Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
            )
          ACQUIRER_EXEMPTION =
            T.let(
              :ACQUIRER_EXEMPTION,
              Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
            )
          NONE = T.let(:NONE, Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol)
          TOKEN_AUTHENTICATED =
            T.let(
              :TOKEN_AUTHENTICATED,
              Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol
            )

          sig do
            override
              .returns(T::Array[Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol])
          end
          def self.values; end
        end

        # Indicates whether a 3DS challenge flow was used, and if so, what the
        # verification method was. (deprecated, use `authentication_result`)
        module VerificationAttempted
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(:NONE, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol)
          OTHER =
            T.let(:OTHER, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol)

          sig do
            override
              .returns(
                T::Array[Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        # use `authentication_result`)
        module VerificationResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELLED =
            T.let(:CANCELLED, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol)
          FAILED =
            T.let(:FAILED, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol)
          FRICTIONLESS =
            T.let(
              :FRICTIONLESS,
              Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
            )
          NOT_ATTEMPTED =
            T.let(
              :NOT_ATTEMPTED,
              Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
            )
          REJECTED =
            T.let(:REJECTED, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol)
          SUCCESS =
            T.let(:SUCCESS, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class Merchant < Lithic::Internal::Type::BaseModel
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
          )
            .returns(T.attached_class)
        end
        def self.new(acceptor_id:, acquiring_institution_id:, city:, country:, descriptor:, mcc:, state:); end

        sig do
          override
            .returns(
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
        def to_hash; end
      end

      # Card network of the authorization. Can be `INTERLINK`, `MAESTRO`, `MASTERCARD`,
      # `VISA`, or `UNKNOWN`. Value is `UNKNOWN` when Lithic cannot determine the
      # network code from the upstream provider.
      module Network
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTERLINK = T.let(:INTERLINK, Lithic::Models::Transaction::Network::TaggedSymbol)
        MAESTRO = T.let(:MAESTRO, Lithic::Models::Transaction::Network::TaggedSymbol)
        MASTERCARD = T.let(:MASTERCARD, Lithic::Models::Transaction::Network::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::Models::Transaction::Network::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Transaction::Network::TaggedSymbol]) }
        def self.values; end
      end

      class Pos < Lithic::Internal::Type::BaseModel
        sig { returns(Lithic::Models::Transaction::Pos::EntryMode) }
        attr_reader :entry_mode

        sig { params(entry_mode: T.any(Lithic::Models::Transaction::Pos::EntryMode, Lithic::Internal::AnyHash)).void }
        attr_writer :entry_mode

        sig { returns(Lithic::Models::Transaction::Pos::Terminal) }
        attr_reader :terminal

        sig { params(terminal: T.any(Lithic::Models::Transaction::Pos::Terminal, Lithic::Internal::AnyHash)).void }
        attr_writer :terminal

        sig do
          params(
            entry_mode: T.any(Lithic::Models::Transaction::Pos::EntryMode, Lithic::Internal::AnyHash),
            terminal: T.any(Lithic::Models::Transaction::Pos::Terminal, Lithic::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(entry_mode:, terminal:); end

        sig do
          override
            .returns(
              {
                entry_mode: Lithic::Models::Transaction::Pos::EntryMode,
                terminal: Lithic::Models::Transaction::Pos::Terminal
              }
            )
        end
        def to_hash; end

        class EntryMode < Lithic::Internal::Type::BaseModel
          # Card presence indicator
          sig { returns(Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol) }
          attr_accessor :card

          # Cardholder presence indicator
          sig { returns(Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol) }
          attr_accessor :cardholder

          # Method of entry for the PAN
          sig { returns(Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol) }
          attr_accessor :pan

          # Indicates whether the cardholder entered the PIN. True if the PIN was entered.
          sig { returns(T::Boolean) }
          attr_accessor :pin_entered

          sig do
            params(
              card: Lithic::Models::Transaction::Pos::EntryMode::Card::OrSymbol,
              cardholder: Lithic::Models::Transaction::Pos::EntryMode::Cardholder::OrSymbol,
              pan: Lithic::Models::Transaction::Pos::EntryMode::Pan::OrSymbol,
              pin_entered: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(card:, cardholder:, pan:, pin_entered:); end

          sig do
            override
              .returns(
                {
                  card: Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol,
                  cardholder: Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol,
                  pan: Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol,
                  pin_entered: T::Boolean
                }
              )
          end
          def to_hash; end

          # Card presence indicator
          module Card
            extend Lithic::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Card) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_PRESENT = T.let(:NOT_PRESENT, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
            PREAUTHORIZED = T.let(:PREAUTHORIZED, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
            PRESENT = T.let(:PRESENT, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
            UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)

            sig { override.returns(T::Array[Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol]) }
            def self.values; end
          end

          # Cardholder presence indicator
          module Cardholder
            extend Lithic::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Cardholder) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEFERRED_BILLING =
              T.let(:DEFERRED_BILLING, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            ELECTRONIC_ORDER =
              T.let(:ELECTRONIC_ORDER, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            INSTALLMENT = T.let(:INSTALLMENT, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            MAIL_ORDER = T.let(:MAIL_ORDER, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            NOT_PRESENT = T.let(:NOT_PRESENT, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            PREAUTHORIZED =
              T.let(:PREAUTHORIZED, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            PRESENT = T.let(:PRESENT, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            REOCCURRING = T.let(:REOCCURRING, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            TELEPHONE_ORDER =
              T.let(:TELEPHONE_ORDER, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
            UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)

            sig { override.returns(T::Array[Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol]) }
            def self.values; end
          end

          # Method of entry for the PAN
          module Pan
            extend Lithic::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Pan) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTO_ENTRY = T.let(:AUTO_ENTRY, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            BAR_CODE = T.let(:BAR_CODE, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            CONTACTLESS = T.let(:CONTACTLESS, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            CREDENTIAL_ON_FILE =
              T.let(:CREDENTIAL_ON_FILE, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            ECOMMERCE = T.let(:ECOMMERCE, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            ERROR_KEYED = T.let(:ERROR_KEYED, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            ERROR_MAGNETIC_STRIPE =
              T.let(:ERROR_MAGNETIC_STRIPE, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            ICC = T.let(:ICC, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            KEY_ENTERED = T.let(:KEY_ENTERED, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            MAGNETIC_STRIPE = T.let(:MAGNETIC_STRIPE, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            MANUAL = T.let(:MANUAL, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            OCR = T.let(:OCR, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            SECURE_CARDLESS = T.let(:SECURE_CARDLESS, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
            UNSPECIFIED = T.let(:UNSPECIFIED, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)

            sig { override.returns(T::Array[Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol]) }
            def self.values; end
          end
        end

        class Terminal < Lithic::Internal::Type::BaseModel
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
          sig { returns(Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol) }
          attr_accessor :operator

          # True if the terminal is capable of partial approval. Partial approval is when
          # part of a transaction is approved and another payment must be used for the
          # remainder. Example scenario: A $40 transaction is attempted on a prepaid card
          # with a $25 balance. If partial approval is enabled, $25 can be authorized, at
          # which point the POS will prompt the user for an additional payment of $15.
          sig { returns(T::Boolean) }
          attr_accessor :partial_approval_capable

          # Status of whether the POS is able to accept PINs
          sig { returns(Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol) }
          attr_accessor :pin_capability

          # POS Type
          sig { returns(Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol) }
          attr_accessor :type

          sig do
            params(
              attended: T::Boolean,
              card_retention_capable: T::Boolean,
              on_premise: T::Boolean,
              operator: Lithic::Models::Transaction::Pos::Terminal::Operator::OrSymbol,
              partial_approval_capable: T::Boolean,
              pin_capability: Lithic::Models::Transaction::Pos::Terminal::PinCapability::OrSymbol,
              type: Lithic::Models::Transaction::Pos::Terminal::Type::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            attended:,
            card_retention_capable:,
            on_premise:,
            operator:,
            partial_approval_capable:,
            pin_capability:,
            type:
          ); end
          sig do
            override
              .returns(
                {
                  attended: T::Boolean,
                  card_retention_capable: T::Boolean,
                  on_premise: T::Boolean,
                  operator: Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol,
                  partial_approval_capable: T::Boolean,
                  pin_capability: Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol,
                  type: Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol
                }
              )
          end
          def to_hash; end

          # The person that is designated to swipe the card
          module Operator
            extend Lithic::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::Terminal::Operator) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMINISTRATIVE =
              T.let(:ADMINISTRATIVE, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
            CARDHOLDER = T.let(:CARDHOLDER, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
            CARD_ACCEPTOR = T.let(:CARD_ACCEPTOR, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
            UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)

            sig { override.returns(T::Array[Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol]) }
            def self.values; end
          end

          # Status of whether the POS is able to accept PINs
          module PinCapability
            extend Lithic::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::Terminal::PinCapability) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CAPABLE = T.let(:CAPABLE, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
            INOPERATIVE =
              T.let(:INOPERATIVE, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
            NOT_CAPABLE =
              T.let(:NOT_CAPABLE, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
            UNSPECIFIED =
              T.let(:UNSPECIFIED, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)

            sig { override.returns(T::Array[Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol]) }
            def self.values; end
          end

          # POS Type
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::Terminal::Type) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMINISTRATIVE = T.let(:ADMINISTRATIVE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            ATM = T.let(:ATM, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            AUTHORIZATION = T.let(:AUTHORIZATION, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            COUPON_MACHINE = T.let(:COUPON_MACHINE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            DIAL_TERMINAL = T.let(:DIAL_TERMINAL, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            ECOMMERCE = T.let(:ECOMMERCE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            ECR = T.let(:ECR, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            FUEL_MACHINE = T.let(:FUEL_MACHINE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            HOME_TERMINAL = T.let(:HOME_TERMINAL, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            MICR = T.let(:MICR, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            OFF_PREMISE = T.let(:OFF_PREMISE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            PAYMENT = T.let(:PAYMENT, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            PDA = T.let(:PDA, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            PHONE = T.let(:PHONE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            POINT = T.let(:POINT, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            POS_TERMINAL = T.let(:POS_TERMINAL, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            PUBLIC_UTILITY = T.let(:PUBLIC_UTILITY, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            SELF_SERVICE = T.let(:SELF_SERVICE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            TELEVISION = T.let(:TELEVISION, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            TELLER = T.let(:TELLER, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            TRAVELERS_CHECK_MACHINE =
              T.let(:TRAVELERS_CHECK_MACHINE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            VENDING = T.let(:VENDING, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            VOICE = T.let(:VOICE, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
            UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)

            sig { override.returns(T::Array[Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol]) }
            def self.values; end
          end
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_STATE_TRANSACTION_FAIL =
          T.let(:ACCOUNT_STATE_TRANSACTION_FAIL, Lithic::Models::Transaction::Result::TaggedSymbol)
        APPROVED = T.let(:APPROVED, Lithic::Models::Transaction::Result::TaggedSymbol)
        BANK_CONNECTION_ERROR = T.let(:BANK_CONNECTION_ERROR, Lithic::Models::Transaction::Result::TaggedSymbol)
        BANK_NOT_VERIFIED = T.let(:BANK_NOT_VERIFIED, Lithic::Models::Transaction::Result::TaggedSymbol)
        CARD_CLOSED = T.let(:CARD_CLOSED, Lithic::Models::Transaction::Result::TaggedSymbol)
        CARD_PAUSED = T.let(:CARD_PAUSED, Lithic::Models::Transaction::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::Transaction::Result::TaggedSymbol)
        FRAUD_ADVICE = T.let(:FRAUD_ADVICE, Lithic::Models::Transaction::Result::TaggedSymbol)
        IGNORED_TTL_EXPIRY = T.let(:IGNORED_TTL_EXPIRY, Lithic::Models::Transaction::Result::TaggedSymbol)
        INACTIVE_ACCOUNT = T.let(:INACTIVE_ACCOUNT, Lithic::Models::Transaction::Result::TaggedSymbol)
        INCORRECT_PIN = T.let(:INCORRECT_PIN, Lithic::Models::Transaction::Result::TaggedSymbol)
        INVALID_CARD_DETAILS = T.let(:INVALID_CARD_DETAILS, Lithic::Models::Transaction::Result::TaggedSymbol)
        INSUFFICIENT_FUNDS = T.let(:INSUFFICIENT_FUNDS, Lithic::Models::Transaction::Result::TaggedSymbol)
        INSUFFICIENT_FUNDS_PRELOAD =
          T.let(:INSUFFICIENT_FUNDS_PRELOAD, Lithic::Models::Transaction::Result::TaggedSymbol)
        INVALID_TRANSACTION = T.let(:INVALID_TRANSACTION, Lithic::Models::Transaction::Result::TaggedSymbol)
        MERCHANT_BLACKLIST = T.let(:MERCHANT_BLACKLIST, Lithic::Models::Transaction::Result::TaggedSymbol)
        ORIGINAL_NOT_FOUND = T.let(:ORIGINAL_NOT_FOUND, Lithic::Models::Transaction::Result::TaggedSymbol)
        PREVIOUSLY_COMPLETED = T.let(:PREVIOUSLY_COMPLETED, Lithic::Models::Transaction::Result::TaggedSymbol)
        SINGLE_USE_RECHARGED = T.let(:SINGLE_USE_RECHARGED, Lithic::Models::Transaction::Result::TaggedSymbol)
        SWITCH_INOPERATIVE_ADVICE =
          T.let(:SWITCH_INOPERATIVE_ADVICE, Lithic::Models::Transaction::Result::TaggedSymbol)
        UNAUTHORIZED_MERCHANT = T.let(:UNAUTHORIZED_MERCHANT, Lithic::Models::Transaction::Result::TaggedSymbol)
        UNKNOWN_HOST_TIMEOUT = T.let(:UNKNOWN_HOST_TIMEOUT, Lithic::Models::Transaction::Result::TaggedSymbol)
        USER_TRANSACTION_LIMIT =
          T.let(:USER_TRANSACTION_LIMIT, Lithic::Models::Transaction::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Transaction::Result::TaggedSymbol]) }
        def self.values; end
      end

      # Status of the transaction.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED = T.let(:DECLINED, Lithic::Models::Transaction::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Models::Transaction::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::Transaction::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::Transaction::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Models::Transaction::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Transaction::Status::TaggedSymbol]) }
        def self.values; end
      end

      class TokenInfo < Lithic::Internal::Type::BaseModel
        # The wallet_type field will indicate the source of the token. Possible token
        # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        # tokenization, and “other” sources like in-flight commerce. Masterpass is not
        # currently supported and is included for future use.
        sig { returns(Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol) }
        attr_accessor :wallet_type

        sig do
          params(wallet_type: Lithic::Models::Transaction::TokenInfo::WalletType::OrSymbol).returns(T.attached_class)
        end
        def self.new(wallet_type:); end

        sig { override.returns({wallet_type: Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol}) }
        def to_hash; end

        # The wallet_type field will indicate the source of the token. Possible token
        # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        # tokenization, and “other” sources like in-flight commerce. Masterpass is not
        # currently supported and is included for future use.
        module WalletType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::TokenInfo::WalletType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLE_PAY = T.let(:APPLE_PAY, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          GOOGLE_PAY = T.let(:GOOGLE_PAY, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          MASTERPASS = T.let(:MASTERPASS, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          MERCHANT = T.let(:MERCHANT, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          OTHER = T.let(:OTHER, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          SAMSUNG_PAY = T.let(:SAMSUNG_PAY, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol]) }
          def self.values; end
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        # Transaction event identifier.
        sig { returns(String) }
        attr_accessor :token

        # Amount of the event in the settlement currency.
        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Lithic::Models::Transaction::Event::Amounts) }
        attr_reader :amounts

        sig { params(amounts: T.any(Lithic::Models::Transaction::Event::Amounts, Lithic::Internal::AnyHash)).void }
        attr_writer :amounts

        # RFC 3339 date and time this event entered the system. UTC time zone.
        sig { returns(Time) }
        attr_accessor :created

        sig { returns(T::Array[Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol]) }
        attr_accessor :detailed_results

        # Indicates whether the transaction event is a credit or debit to the account.
        sig { returns(Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol) }
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
        sig { returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo)) }
        attr_reader :network_info

        sig do
          params(
            network_info: T.nilable(T.any(Lithic::Models::Transaction::Event::NetworkInfo, Lithic::Internal::AnyHash))
          )
            .void
        end
        attr_writer :network_info

        sig { returns(Lithic::Models::Transaction::Event::Result::TaggedSymbol) }
        attr_accessor :result

        sig { returns(T::Array[Lithic::Models::Transaction::Event::RuleResult]) }
        attr_accessor :rule_results

        # Type of transaction event
        sig { returns(Lithic::Models::Transaction::Event::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          params(
            token: String,
            amount: Integer,
            amounts: T.any(Lithic::Models::Transaction::Event::Amounts, Lithic::Internal::AnyHash),
            created: Time,
            detailed_results: T::Array[Lithic::Models::Transaction::Event::DetailedResult::OrSymbol],
            effective_polarity: Lithic::Models::Transaction::Event::EffectivePolarity::OrSymbol,
            network_info: T.nilable(T.any(Lithic::Models::Transaction::Event::NetworkInfo, Lithic::Internal::AnyHash)),
            result: Lithic::Models::Transaction::Event::Result::OrSymbol,
            rule_results: T::Array[T.any(Lithic::Models::Transaction::Event::RuleResult, Lithic::Internal::AnyHash)],
            type: Lithic::Models::Transaction::Event::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          token:,
          amount:,
          amounts:,
          created:,
          detailed_results:,
          effective_polarity:,
          network_info:,
          result:,
          rule_results:,
          type:
        ); end
        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                amounts: Lithic::Models::Transaction::Event::Amounts,
                created: Time,
                detailed_results: T::Array[Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol],
                effective_polarity: Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol,
                network_info: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo),
                result: Lithic::Models::Transaction::Event::Result::TaggedSymbol,
                rule_results: T::Array[Lithic::Models::Transaction::Event::RuleResult],
                type: Lithic::Models::Transaction::Event::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        class Amounts < Lithic::Internal::Type::BaseModel
          sig { returns(Lithic::Models::Transaction::Event::Amounts::Cardholder) }
          attr_reader :cardholder

          sig do
            params(
              cardholder: T.any(Lithic::Models::Transaction::Event::Amounts::Cardholder, Lithic::Internal::AnyHash)
            )
              .void
          end
          attr_writer :cardholder

          sig { returns(Lithic::Models::Transaction::Event::Amounts::Merchant) }
          attr_reader :merchant

          sig do
            params(merchant: T.any(Lithic::Models::Transaction::Event::Amounts::Merchant, Lithic::Internal::AnyHash))
              .void
          end
          attr_writer :merchant

          sig { returns(T.nilable(Lithic::Models::Transaction::Event::Amounts::Settlement)) }
          attr_reader :settlement

          sig do
            params(
              settlement: T.nilable(T.any(Lithic::Models::Transaction::Event::Amounts::Settlement, Lithic::Internal::AnyHash))
            )
              .void
          end
          attr_writer :settlement

          sig do
            params(
              cardholder: T.any(Lithic::Models::Transaction::Event::Amounts::Cardholder, Lithic::Internal::AnyHash),
              merchant: T.any(Lithic::Models::Transaction::Event::Amounts::Merchant, Lithic::Internal::AnyHash),
              settlement: T.nilable(T.any(Lithic::Models::Transaction::Event::Amounts::Settlement, Lithic::Internal::AnyHash))
            )
              .returns(T.attached_class)
          end
          def self.new(cardholder:, merchant:, settlement:); end

          sig do
            override
              .returns(
                {
                  cardholder: Lithic::Models::Transaction::Event::Amounts::Cardholder,
                  merchant: Lithic::Models::Transaction::Event::Amounts::Merchant,
                  settlement: T.nilable(Lithic::Models::Transaction::Event::Amounts::Settlement)
                }
              )
          end
          def to_hash; end

          class Cardholder < Lithic::Internal::Type::BaseModel
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
              params(amount: Integer, conversion_rate: String, currency: String).returns(T.attached_class)
            end
            def self.new(amount:, conversion_rate:, currency:); end

            sig { override.returns({amount: Integer, conversion_rate: String, currency: String}) }
            def to_hash; end
          end

          class Merchant < Lithic::Internal::Type::BaseModel
            # Amount of the event in the merchant currency.
            sig { returns(Integer) }
            attr_accessor :amount

            # 3-character alphabetic ISO 4217 currency
            sig { returns(String) }
            attr_accessor :currency

            sig { params(amount: Integer, currency: String).returns(T.attached_class) }
            def self.new(amount:, currency:); end

            sig { override.returns({amount: Integer, currency: String}) }
            def to_hash; end
          end

          class Settlement < Lithic::Internal::Type::BaseModel
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
              params(amount: Integer, conversion_rate: String, currency: String).returns(T.attached_class)
            end
            def self.new(amount:, conversion_rate:, currency:); end

            sig { override.returns({amount: Integer, conversion_rate: String, currency: String}) }
            def to_hash; end
          end
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::DetailedResult) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED =
            T.let(
              :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_DELINQUENT =
            T.let(:ACCOUNT_DELINQUENT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          ACCOUNT_INACTIVE =
            T.let(:ACCOUNT_INACTIVE, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED =
            T.let(
              :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED =
            T.let(
              :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_UNDER_REVIEW =
            T.let(:ACCOUNT_UNDER_REVIEW, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          ADDRESS_INCORRECT =
            T.let(:ADDRESS_INCORRECT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          APPROVED = T.let(:APPROVED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          AUTH_RULE_ALLOWED_COUNTRY =
            T.let(:AUTH_RULE_ALLOWED_COUNTRY, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          AUTH_RULE_ALLOWED_MCC =
            T.let(:AUTH_RULE_ALLOWED_MCC, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          AUTH_RULE_BLOCKED_COUNTRY =
            T.let(:AUTH_RULE_BLOCKED_COUNTRY, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          AUTH_RULE_BLOCKED_MCC =
            T.let(:AUTH_RULE_BLOCKED_MCC, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_CLOSED = T.let(:CARD_CLOSED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_CRYPTOGRAM_VALIDATION_FAILURE =
            T.let(
              :CARD_CRYPTOGRAM_VALIDATION_FAILURE,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          CARD_EXPIRED = T.let(:CARD_EXPIRED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_EXPIRY_DATE_INCORRECT =
            T.let(:CARD_EXPIRY_DATE_INCORRECT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_INVALID = T.let(:CARD_INVALID, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_NOT_ACTIVATED =
            T.let(:CARD_NOT_ACTIVATED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_PAUSED = T.let(:CARD_PAUSED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_PIN_INCORRECT =
            T.let(:CARD_PIN_INCORRECT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_RESTRICTED =
            T.let(:CARD_RESTRICTED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_SECURITY_CODE_INCORRECT =
            T.let(:CARD_SECURITY_CODE_INCORRECT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CARD_SPEND_LIMIT_EXCEEDED =
            T.let(:CARD_SPEND_LIMIT_EXCEEDED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CONTACT_CARD_ISSUER =
            T.let(:CONTACT_CARD_ISSUER, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CUSTOMER_ASA_TIMEOUT =
            T.let(:CUSTOMER_ASA_TIMEOUT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          CUSTOM_ASA_RESULT =
            T.let(:CUSTOM_ASA_RESULT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          DO_NOT_HONOR = T.let(:DO_NOT_HONOR, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          DRIVER_NUMBER_INVALID =
            T.let(:DRIVER_NUMBER_INVALID, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          FORMAT_ERROR = T.let(:FORMAT_ERROR, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          INSUFFICIENT_FUNDING_SOURCE_BALANCE =
            T.let(
              :INSUFFICIENT_FUNDING_SOURCE_BALANCE,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          INSUFFICIENT_FUNDS =
            T.let(:INSUFFICIENT_FUNDS, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          LITHIC_SYSTEM_ERROR =
            T.let(:LITHIC_SYSTEM_ERROR, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          LITHIC_SYSTEM_RATE_LIMIT =
            T.let(:LITHIC_SYSTEM_RATE_LIMIT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          MALFORMED_ASA_RESPONSE =
            T.let(:MALFORMED_ASA_RESPONSE, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          MERCHANT_INVALID =
            T.let(:MERCHANT_INVALID, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE =
            T.let(
              :MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          MERCHANT_NOT_PERMITTED =
            T.let(:MERCHANT_NOT_PERMITTED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          OVER_REVERSAL_ATTEMPTED =
            T.let(:OVER_REVERSAL_ATTEMPTED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          PIN_BLOCKED = T.let(:PIN_BLOCKED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          PROGRAM_CARD_SPEND_LIMIT_EXCEEDED =
            T.let(
              :PROGRAM_CARD_SPEND_LIMIT_EXCEEDED,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_SUSPENDED =
            T.let(:PROGRAM_SUSPENDED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          PROGRAM_USAGE_RESTRICTION =
            T.let(:PROGRAM_USAGE_RESTRICTION, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          REVERSAL_UNMATCHED =
            T.let(:REVERSAL_UNMATCHED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          SECURITY_VIOLATION =
            T.let(:SECURITY_VIOLATION, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          SINGLE_USE_CARD_REATTEMPTED =
            T.let(:SINGLE_USE_CARD_REATTEMPTED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          TRANSACTION_INVALID =
            T.let(:TRANSACTION_INVALID, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL =
            T.let(
              :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER =
            T.let(
              :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER,
              Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol
            )
          TRANSACTION_PREVIOUSLY_COMPLETED =
            T.let(:TRANSACTION_PREVIOUSLY_COMPLETED, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          UNAUTHORIZED_MERCHANT =
            T.let(:UNAUTHORIZED_MERCHANT, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)
          VEHICLE_NUMBER_INVALID =
            T.let(:VEHICLE_NUMBER_INVALID, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol]) }
          def self.values; end
        end

        # Indicates whether the transaction event is a credit or debit to the account.
        module EffectivePolarity
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::EffectivePolarity) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT = T.let(:CREDIT, Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol)
          DEBIT = T.let(:DEBIT, Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol]) }
          def self.values; end
        end

        class NetworkInfo < Lithic::Internal::Type::BaseModel
          sig { returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Acquirer)) }
          attr_reader :acquirer

          sig do
            params(
              acquirer: T.nilable(T.any(Lithic::Models::Transaction::Event::NetworkInfo::Acquirer, Lithic::Internal::AnyHash))
            )
              .void
          end
          attr_writer :acquirer

          sig { returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Mastercard)) }
          attr_reader :mastercard

          sig do
            params(
              mastercard: T.nilable(T.any(Lithic::Models::Transaction::Event::NetworkInfo::Mastercard, Lithic::Internal::AnyHash))
            )
              .void
          end
          attr_writer :mastercard

          sig { returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Visa)) }
          attr_reader :visa

          sig do
            params(
              visa: T.nilable(T.any(Lithic::Models::Transaction::Event::NetworkInfo::Visa, Lithic::Internal::AnyHash))
            )
              .void
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
              acquirer: T.nilable(T.any(Lithic::Models::Transaction::Event::NetworkInfo::Acquirer, Lithic::Internal::AnyHash)),
              mastercard: T.nilable(T.any(Lithic::Models::Transaction::Event::NetworkInfo::Mastercard, Lithic::Internal::AnyHash)),
              visa: T.nilable(T.any(Lithic::Models::Transaction::Event::NetworkInfo::Visa, Lithic::Internal::AnyHash))
            )
              .returns(T.attached_class)
          end
          def self.new(acquirer:, mastercard:, visa:); end

          sig do
            override
              .returns(
                {
                  acquirer: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Acquirer),
                  mastercard: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Mastercard),
                  visa: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Visa)
                }
              )
          end
          def to_hash; end

          class Acquirer < Lithic::Internal::Type::BaseModel
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
              )
                .returns(T.attached_class)
            end
            def self.new(acquirer_reference_number:, retrieval_reference_number:); end

            sig do
              override
                .returns({
                           acquirer_reference_number: T.nilable(String),
                           retrieval_reference_number: T.nilable(String)
                         })
            end
            def to_hash; end
          end

          class Mastercard < Lithic::Internal::Type::BaseModel
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
              )
                .returns(T.attached_class)
            end
            def self.new(
              banknet_reference_number:,
              original_banknet_reference_number:,
              original_switch_serial_number:,
              switch_serial_number:
            ); end
            sig do
              override
                .returns(
                  {
                    banknet_reference_number: T.nilable(String),
                    original_banknet_reference_number: T.nilable(String),
                    original_switch_serial_number: T.nilable(String),
                    switch_serial_number: T.nilable(String)
                  }
                )
            end
            def to_hash; end
          end

          class Visa < Lithic::Internal::Type::BaseModel
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
              params(original_transaction_id: T.nilable(String), transaction_id: T.nilable(String))
                .returns(T.attached_class)
            end
            def self.new(original_transaction_id:, transaction_id:); end

            sig do
              override.returns(
                {
                  original_transaction_id: T.nilable(String),
                  transaction_id: T.nilable(String)
                }
              )
            end
            def to_hash; end
          end
        end

        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_STATE_TRANSACTION_FAIL =
            T.let(:ACCOUNT_STATE_TRANSACTION_FAIL, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          APPROVED = T.let(:APPROVED, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          BANK_CONNECTION_ERROR =
            T.let(:BANK_CONNECTION_ERROR, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          BANK_NOT_VERIFIED = T.let(:BANK_NOT_VERIFIED, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          CARD_CLOSED = T.let(:CARD_CLOSED, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          CARD_PAUSED = T.let(:CARD_PAUSED, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          FRAUD_ADVICE = T.let(:FRAUD_ADVICE, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          IGNORED_TTL_EXPIRY = T.let(:IGNORED_TTL_EXPIRY, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          INACTIVE_ACCOUNT = T.let(:INACTIVE_ACCOUNT, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          INCORRECT_PIN = T.let(:INCORRECT_PIN, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          INVALID_CARD_DETAILS =
            T.let(:INVALID_CARD_DETAILS, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          INSUFFICIENT_FUNDS = T.let(:INSUFFICIENT_FUNDS, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          INSUFFICIENT_FUNDS_PRELOAD =
            T.let(:INSUFFICIENT_FUNDS_PRELOAD, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          INVALID_TRANSACTION =
            T.let(:INVALID_TRANSACTION, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          MERCHANT_BLACKLIST = T.let(:MERCHANT_BLACKLIST, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          ORIGINAL_NOT_FOUND = T.let(:ORIGINAL_NOT_FOUND, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          PREVIOUSLY_COMPLETED =
            T.let(:PREVIOUSLY_COMPLETED, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          SINGLE_USE_RECHARGED =
            T.let(:SINGLE_USE_RECHARGED, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          SWITCH_INOPERATIVE_ADVICE =
            T.let(:SWITCH_INOPERATIVE_ADVICE, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          UNAUTHORIZED_MERCHANT =
            T.let(:UNAUTHORIZED_MERCHANT, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          UNKNOWN_HOST_TIMEOUT =
            T.let(:UNKNOWN_HOST_TIMEOUT, Lithic::Models::Transaction::Event::Result::TaggedSymbol)
          USER_TRANSACTION_LIMIT =
            T.let(:USER_TRANSACTION_LIMIT, Lithic::Models::Transaction::Event::Result::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Transaction::Event::Result::TaggedSymbol]) }
          def self.values; end
        end

        class RuleResult < Lithic::Internal::Type::BaseModel
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
          sig { returns(Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol) }
          attr_accessor :result

          sig do
            params(
              auth_rule_token: T.nilable(String),
              explanation: T.nilable(String),
              name: T.nilable(String),
              result: Lithic::Models::Transaction::Event::RuleResult::Result::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(auth_rule_token:, explanation:, name:, result:); end

          sig do
            override
              .returns(
                {
                  auth_rule_token: T.nilable(String),
                  explanation: T.nilable(String),
                  name: T.nilable(String),
                  result: Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
                }
              )
          end
          def to_hash; end

          # The detailed_result associated with this rule's decline.
          module Result
            extend Lithic::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::RuleResult::Result) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED =
              T.let(
                :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ACCOUNT_DELINQUENT =
              T.let(:ACCOUNT_DELINQUENT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            ACCOUNT_INACTIVE =
              T.let(:ACCOUNT_INACTIVE, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED =
              T.let(
                :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED =
              T.let(
                :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            ACCOUNT_UNDER_REVIEW =
              T.let(:ACCOUNT_UNDER_REVIEW, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            ADDRESS_INCORRECT =
              T.let(:ADDRESS_INCORRECT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            APPROVED = T.let(:APPROVED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            AUTH_RULE_ALLOWED_COUNTRY =
              T.let(:AUTH_RULE_ALLOWED_COUNTRY, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            AUTH_RULE_ALLOWED_MCC =
              T.let(:AUTH_RULE_ALLOWED_MCC, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            AUTH_RULE_BLOCKED_COUNTRY =
              T.let(:AUTH_RULE_BLOCKED_COUNTRY, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            AUTH_RULE_BLOCKED_MCC =
              T.let(:AUTH_RULE_BLOCKED_MCC, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_CLOSED = T.let(:CARD_CLOSED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_CRYPTOGRAM_VALIDATION_FAILURE =
              T.let(
                :CARD_CRYPTOGRAM_VALIDATION_FAILURE,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            CARD_EXPIRED = T.let(:CARD_EXPIRED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_EXPIRY_DATE_INCORRECT =
              T.let(:CARD_EXPIRY_DATE_INCORRECT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_INVALID = T.let(:CARD_INVALID, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_NOT_ACTIVATED =
              T.let(:CARD_NOT_ACTIVATED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_PAUSED = T.let(:CARD_PAUSED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_PIN_INCORRECT =
              T.let(:CARD_PIN_INCORRECT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_RESTRICTED =
              T.let(:CARD_RESTRICTED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_SECURITY_CODE_INCORRECT =
              T.let(:CARD_SECURITY_CODE_INCORRECT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CARD_SPEND_LIMIT_EXCEEDED =
              T.let(:CARD_SPEND_LIMIT_EXCEEDED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CONTACT_CARD_ISSUER =
              T.let(:CONTACT_CARD_ISSUER, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CUSTOMER_ASA_TIMEOUT =
              T.let(:CUSTOMER_ASA_TIMEOUT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            CUSTOM_ASA_RESULT =
              T.let(:CUSTOM_ASA_RESULT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            DECLINED = T.let(:DECLINED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            DO_NOT_HONOR = T.let(:DO_NOT_HONOR, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            DRIVER_NUMBER_INVALID =
              T.let(:DRIVER_NUMBER_INVALID, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            FORMAT_ERROR = T.let(:FORMAT_ERROR, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            INSUFFICIENT_FUNDING_SOURCE_BALANCE =
              T.let(
                :INSUFFICIENT_FUNDING_SOURCE_BALANCE,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            INSUFFICIENT_FUNDS =
              T.let(:INSUFFICIENT_FUNDS, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            LITHIC_SYSTEM_ERROR =
              T.let(:LITHIC_SYSTEM_ERROR, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            LITHIC_SYSTEM_RATE_LIMIT =
              T.let(:LITHIC_SYSTEM_RATE_LIMIT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            MALFORMED_ASA_RESPONSE =
              T.let(:MALFORMED_ASA_RESPONSE, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            MERCHANT_INVALID =
              T.let(:MERCHANT_INVALID, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE =
              T.let(
                :MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            MERCHANT_NOT_PERMITTED =
              T.let(:MERCHANT_NOT_PERMITTED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            OVER_REVERSAL_ATTEMPTED =
              T.let(:OVER_REVERSAL_ATTEMPTED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            PIN_BLOCKED = T.let(:PIN_BLOCKED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            PROGRAM_CARD_SPEND_LIMIT_EXCEEDED =
              T.let(
                :PROGRAM_CARD_SPEND_LIMIT_EXCEEDED,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            PROGRAM_SUSPENDED =
              T.let(:PROGRAM_SUSPENDED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            PROGRAM_USAGE_RESTRICTION =
              T.let(:PROGRAM_USAGE_RESTRICTION, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            REVERSAL_UNMATCHED =
              T.let(:REVERSAL_UNMATCHED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            SECURITY_VIOLATION =
              T.let(:SECURITY_VIOLATION, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            SINGLE_USE_CARD_REATTEMPTED =
              T.let(:SINGLE_USE_CARD_REATTEMPTED, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            TRANSACTION_INVALID =
              T.let(:TRANSACTION_INVALID, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL =
              T.let(
                :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER =
              T.let(
                :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            TRANSACTION_PREVIOUSLY_COMPLETED =
              T.let(
                :TRANSACTION_PREVIOUSLY_COMPLETED,
                Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
              )
            UNAUTHORIZED_MERCHANT =
              T.let(:UNAUTHORIZED_MERCHANT, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
            VEHICLE_NUMBER_INVALID =
              T.let(:VEHICLE_NUMBER_INVALID, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)

            sig { override.returns(T::Array[Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol]) }
            def self.values; end
          end
        end

        # Type of transaction event
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION = T.let(:AUTHORIZATION, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          AUTHORIZATION_ADVICE =
            T.let(:AUTHORIZATION_ADVICE, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          AUTHORIZATION_EXPIRY =
            T.let(:AUTHORIZATION_EXPIRY, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          AUTHORIZATION_REVERSAL =
            T.let(:AUTHORIZATION_REVERSAL, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          BALANCE_INQUIRY = T.let(:BALANCE_INQUIRY, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          CLEARING = T.let(:CLEARING, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          CORRECTION_CREDIT = T.let(:CORRECTION_CREDIT, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          CORRECTION_DEBIT = T.let(:CORRECTION_DEBIT, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          CREDIT_AUTHORIZATION =
            T.let(:CREDIT_AUTHORIZATION, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          CREDIT_AUTHORIZATION_ADVICE =
            T.let(:CREDIT_AUTHORIZATION_ADVICE, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          FINANCIAL_AUTHORIZATION =
            T.let(:FINANCIAL_AUTHORIZATION, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          FINANCIAL_CREDIT_AUTHORIZATION =
            T.let(:FINANCIAL_CREDIT_AUTHORIZATION, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          RETURN = T.let(:RETURN, Lithic::Models::Transaction::Event::Type::TaggedSymbol)
          RETURN_REVERSAL = T.let(:RETURN_REVERSAL, Lithic::Models::Transaction::Event::Type::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Transaction::Event::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
