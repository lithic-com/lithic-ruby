# typed: strong

module Lithic
  module Models
    class Transaction < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # The token for the account associated with this transaction.
      sig { returns(String) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Fee assessed by the merchant and paid for by the cardholder in the smallest unit
      #   of the currency. Will be zero if no fee is assessed. Rebates may be transmitted
      #   as a negative value to indicate credited fees.
      sig { returns(T.nilable(Integer)) }
      def acquirer_fee
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def acquirer_fee=(_)
      end

      # Unique identifier assigned to a transaction by the acquirer that can be used in
      #   dispute and chargeback filing.
      sig { returns(T.nilable(String)) }
      def acquirer_reference_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def acquirer_reference_number=(_)
      end

      # When the transaction is pending, this represents the authorization amount of the
      #   transaction in the anticipated settlement currency. Once the transaction has
      #   settled, this field represents the settled amount in the settlement currency.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Lithic::Models::Transaction::Amounts) }
      def amounts
      end

      sig { params(_: Lithic::Models::Transaction::Amounts).returns(Lithic::Models::Transaction::Amounts) }
      def amounts=(_)
      end

      # The authorization amount of the transaction in the anticipated settlement
      #   currency.
      sig { returns(T.nilable(Integer)) }
      def authorization_amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def authorization_amount=(_)
      end

      # A fixed-width 6-digit numeric identifier that can be used to identify a
      #   transaction with networks.
      sig { returns(T.nilable(String)) }
      def authorization_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorization_code=(_)
      end

      sig { returns(T.nilable(Lithic::Models::Transaction::Avs)) }
      def avs
      end

      sig do
        params(_: T.nilable(Lithic::Models::Transaction::Avs)).returns(T.nilable(Lithic::Models::Transaction::Avs))
      end
      def avs=(_)
      end

      # Token for the card used in this transaction.
      sig { returns(String) }
      def card_token
      end

      sig { params(_: String).returns(String) }
      def card_token=(_)
      end

      sig { returns(T.nilable(Lithic::Models::Transaction::CardholderAuthentication)) }
      def cardholder_authentication
      end

      sig do
        params(_: T.nilable(Lithic::Models::Transaction::CardholderAuthentication))
          .returns(T.nilable(Lithic::Models::Transaction::CardholderAuthentication))
      end
      def cardholder_authentication=(_)
      end

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      sig { returns(Lithic::Models::Transaction::Merchant) }
      def merchant
      end

      sig { params(_: Lithic::Models::Transaction::Merchant).returns(Lithic::Models::Transaction::Merchant) }
      def merchant=(_)
      end

      # Analogous to the 'amount', but in the merchant currency.
      sig { returns(T.nilable(Integer)) }
      def merchant_amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def merchant_amount=(_)
      end

      # Analogous to the 'authorization_amount', but in the merchant currency.
      sig { returns(T.nilable(Integer)) }
      def merchant_authorization_amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def merchant_authorization_amount=(_)
      end

      # 3-character alphabetic ISO 4217 code for the local currency of the transaction.
      sig { returns(String) }
      def merchant_currency
      end

      sig { params(_: String).returns(String) }
      def merchant_currency=(_)
      end

      # Card network of the authorization. Can be `INTERLINK`, `MAESTRO`, `MASTERCARD`,
      #   `VISA`, or `UNKNOWN`. Value is `UNKNOWN` when Lithic cannot determine the
      #   network code from the upstream provider.
      sig { returns(T.nilable(Symbol)) }
      def network
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def network=(_)
      end

      # Network-provided score assessing risk level associated with a given
      #   authorization. Scores are on a range of 0-999, with 0 representing the lowest
      #   risk and 999 representing the highest risk. For Visa transactions, where the raw
      #   score has a range of 0-99, Lithic will normalize the score by multiplying the
      #   raw score by 10x.
      sig { returns(T.nilable(Integer)) }
      def network_risk_score
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def network_risk_score=(_)
      end

      sig { returns(Lithic::Models::Transaction::Pos) }
      def pos
      end

      sig { params(_: Lithic::Models::Transaction::Pos).returns(Lithic::Models::Transaction::Pos) }
      def pos=(_)
      end

      sig { returns(Symbol) }
      def result
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result=(_)
      end

      # The settled amount of the transaction in the settlement currency.
      sig { returns(Integer) }
      def settled_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_amount=(_)
      end

      # Status of the transaction.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Lithic::Models::Transaction::TokenInfo)) }
      def token_info
      end

      sig do
        params(_: T.nilable(Lithic::Models::Transaction::TokenInfo))
          .returns(T.nilable(Lithic::Models::Transaction::TokenInfo))
      end
      def token_info=(_)
      end

      # Date and time when the transaction last updated. UTC time zone.
      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      sig { returns(T.nilable(T::Array[Lithic::Models::Transaction::Event])) }
      def events
      end

      sig do
        params(_: T::Array[Lithic::Models::Transaction::Event])
          .returns(T::Array[Lithic::Models::Transaction::Event])
      end
      def events=(_)
      end

      sig do
        params(
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
          network: T.nilable(Symbol),
          network_risk_score: T.nilable(Integer),
          pos: Lithic::Models::Transaction::Pos,
          result: Symbol,
          settled_amount: Integer,
          status: Symbol,
          token_info: T.nilable(Lithic::Models::Transaction::TokenInfo),
          updated: Time,
          events: T::Array[Lithic::Models::Transaction::Event]
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
      )
      end

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
              network: T.nilable(Symbol),
              network_risk_score: T.nilable(Integer),
              pos: Lithic::Models::Transaction::Pos,
              result: Symbol,
              settled_amount: Integer,
              status: Symbol,
              token_info: T.nilable(Lithic::Models::Transaction::TokenInfo),
              updated: Time,
              events: T::Array[Lithic::Models::Transaction::Event]
            }
          )
      end
      def to_hash
      end

      class Amounts < Lithic::BaseModel
        sig { returns(Lithic::Models::Transaction::Amounts::Cardholder) }
        def cardholder
        end

        sig do
          params(_: Lithic::Models::Transaction::Amounts::Cardholder)
            .returns(Lithic::Models::Transaction::Amounts::Cardholder)
        end
        def cardholder=(_)
        end

        sig { returns(Lithic::Models::Transaction::Amounts::Hold) }
        def hold
        end

        sig { params(_: Lithic::Models::Transaction::Amounts::Hold).returns(Lithic::Models::Transaction::Amounts::Hold) }
        def hold=(_)
        end

        sig { returns(Lithic::Models::Transaction::Amounts::Merchant) }
        def merchant
        end

        sig do
          params(_: Lithic::Models::Transaction::Amounts::Merchant)
            .returns(Lithic::Models::Transaction::Amounts::Merchant)
        end
        def merchant=(_)
        end

        sig { returns(Lithic::Models::Transaction::Amounts::Settlement) }
        def settlement
        end

        sig do
          params(_: Lithic::Models::Transaction::Amounts::Settlement)
            .returns(Lithic::Models::Transaction::Amounts::Settlement)
        end
        def settlement=(_)
        end

        sig do
          params(
            cardholder: Lithic::Models::Transaction::Amounts::Cardholder,
            hold: Lithic::Models::Transaction::Amounts::Hold,
            merchant: Lithic::Models::Transaction::Amounts::Merchant,
            settlement: Lithic::Models::Transaction::Amounts::Settlement
          )
            .returns(T.attached_class)
        end
        def self.new(cardholder:, hold:, merchant:, settlement:)
        end

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
        def to_hash
        end

        class Cardholder < Lithic::BaseModel
          # The estimated settled amount of the transaction in the cardholder billing
          #   currency.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The exchange rate used to convert the merchant amount to the cardholder billing
          #   amount.
          sig { returns(String) }
          def conversion_rate
          end

          sig { params(_: String).returns(String) }
          def conversion_rate=(_)
          end

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(amount: Integer, conversion_rate: String, currency: String).returns(T.attached_class) }
          def self.new(amount:, conversion_rate:, currency:)
          end

          sig { override.returns({amount: Integer, conversion_rate: String, currency: String}) }
          def to_hash
          end
        end

        class Hold < Lithic::BaseModel
          # The pending amount of the transaction in the anticipated settlement currency.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(amount: Integer, currency: String).returns(T.attached_class) }
          def self.new(amount:, currency:)
          end

          sig { override.returns({amount: Integer, currency: String}) }
          def to_hash
          end
        end

        class Merchant < Lithic::BaseModel
          # The settled amount of the transaction in the merchant currency.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(amount: Integer, currency: String).returns(T.attached_class) }
          def self.new(amount:, currency:)
          end

          sig { override.returns({amount: Integer, currency: String}) }
          def to_hash
          end
        end

        class Settlement < Lithic::BaseModel
          # The settled amount of the transaction in the settlement currency.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(amount: Integer, currency: String).returns(T.attached_class) }
          def self.new(amount:, currency:)
          end

          sig { override.returns({amount: Integer, currency: String}) }
          def to_hash
          end
        end
      end

      class Avs < Lithic::BaseModel
        # Cardholder address
        sig { returns(String) }
        def address
        end

        sig { params(_: String).returns(String) }
        def address=(_)
        end

        # Cardholder ZIP code
        sig { returns(String) }
        def zipcode
        end

        sig { params(_: String).returns(String) }
        def zipcode=(_)
        end

        sig { params(address: String, zipcode: String).returns(T.attached_class) }
        def self.new(address:, zipcode:)
        end

        sig { override.returns({address: String, zipcode: String}) }
        def to_hash
        end
      end

      class CardholderAuthentication < Lithic::BaseModel
        # The 3DS version used for the authentication
        sig { returns(T.nilable(String)) }
        def three_ds_version
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def three_ds_version=(_)
        end

        # Whether an acquirer exemption applied to the transaction.
        sig { returns(Symbol) }
        def acquirer_exemption
        end

        sig { params(_: Symbol).returns(Symbol) }
        def acquirer_exemption=(_)
        end

        # Indicates what the outcome of the 3DS authentication process is.
        sig { returns(Symbol) }
        def authentication_result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def authentication_result=(_)
        end

        # Indicates which party made the 3DS authentication decision.
        sig { returns(Symbol) }
        def decision_made_by
        end

        sig { params(_: Symbol).returns(Symbol) }
        def decision_made_by=(_)
        end

        # Indicates whether chargeback liability shift applies to the transaction.
        #   Possible enum values:
        #
        #       * `3DS_AUTHENTICATED`: The transaction was fully authenticated through a 3-D Secure flow, chargeback liability shift applies.
        #
        #       * `ACQUIRER_EXEMPTION`: The acquirer utilised an exemption to bypass Strong Customer Authentication (`transStatus = N`, or `transStatus = I`). Liability remains with the acquirer and in this case the `acquirer_exemption` field is expected to be not `NONE`.
        #
        #       * `NONE`: Chargeback liability shift has not shifted to the issuer, i.e. the merchant is liable.
        #
        #   - `TOKEN_AUTHENTICATED`: The transaction was a tokenized payment with validated
        #     cryptography, possibly recurring. Chargeback liability shift to the issuer
        #     applies.
        sig { returns(Symbol) }
        def liability_shift
        end

        sig { params(_: Symbol).returns(Symbol) }
        def liability_shift=(_)
        end

        # Unique identifier you can use to match a given 3DS authentication (available via
        #   the three_ds_authentication.created event webhook) and the transaction. Note
        #   that in cases where liability shift does not occur, this token is matched to the
        #   transaction on a best-effort basis.
        sig { returns(T.nilable(String)) }
        def three_ds_authentication_token
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def three_ds_authentication_token=(_)
        end

        # Indicates whether a 3DS challenge flow was used, and if so, what the
        #   verification method was. (deprecated, use `authentication_result`)
        sig { returns(Symbol) }
        def verification_attempted
        end

        sig { params(_: Symbol).returns(Symbol) }
        def verification_attempted=(_)
        end

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        #   use `authentication_result`)
        sig { returns(Symbol) }
        def verification_result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def verification_result=(_)
        end

        sig do
          params(
            three_ds_version: T.nilable(String),
            acquirer_exemption: Symbol,
            authentication_result: Symbol,
            decision_made_by: Symbol,
            liability_shift: Symbol,
            three_ds_authentication_token: T.nilable(String),
            verification_attempted: Symbol,
            verification_result: Symbol
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
        )
        end

        sig do
          override
            .returns(
              {
                three_ds_version: T.nilable(String),
                acquirer_exemption: Symbol,
                authentication_result: Symbol,
                decision_made_by: Symbol,
                liability_shift: Symbol,
                three_ds_authentication_token: T.nilable(String),
                verification_attempted: Symbol,
                verification_result: Symbol
              }
            )
        end
        def to_hash
        end

        # Whether an acquirer exemption applied to the transaction.
        class AcquirerExemption < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          AUTHENTICATION_OUTAGE_EXCEPTION = :AUTHENTICATION_OUTAGE_EXCEPTION
          LOW_VALUE = :LOW_VALUE
          MERCHANT_INITIATED_TRANSACTION = :MERCHANT_INITIATED_TRANSACTION
          NONE = :NONE
          RECURRING_PAYMENT = :RECURRING_PAYMENT
          SECURE_CORPORATE_PAYMENT = :SECURE_CORPORATE_PAYMENT
          STRONG_CUSTOMER_AUTHENTICATION_DELEGATION = :STRONG_CUSTOMER_AUTHENTICATION_DELEGATION
          TRANSACTION_RISK_ANALYSIS = :TRANSACTION_RISK_ANALYSIS
        end

        # Indicates what the outcome of the 3DS authentication process is.
        class AuthenticationResult < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ATTEMPTS = :ATTEMPTS
          DECLINE = :DECLINE
          NONE = :NONE
          SUCCESS = :SUCCESS
        end

        # Indicates which party made the 3DS authentication decision.
        class DecisionMadeBy < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CUSTOMER_ENDPOINT = :CUSTOMER_ENDPOINT
          LITHIC_DEFAULT = :LITHIC_DEFAULT
          LITHIC_RULES = :LITHIC_RULES
          NETWORK = :NETWORK
          UNKNOWN = :UNKNOWN
        end

        # Indicates whether chargeback liability shift applies to the transaction.
        #   Possible enum values:
        #
        #       * `3DS_AUTHENTICATED`: The transaction was fully authenticated through a 3-D Secure flow, chargeback liability shift applies.
        #
        #       * `ACQUIRER_EXEMPTION`: The acquirer utilised an exemption to bypass Strong Customer Authentication (`transStatus = N`, or `transStatus = I`). Liability remains with the acquirer and in this case the `acquirer_exemption` field is expected to be not `NONE`.
        #
        #       * `NONE`: Chargeback liability shift has not shifted to the issuer, i.e. the merchant is liable.
        #
        #   - `TOKEN_AUTHENTICATED`: The transaction was a tokenized payment with validated
        #     cryptography, possibly recurring. Chargeback liability shift to the issuer
        #     applies.
        class LiabilityShift < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          NUMBER_3DS_AUTHENTICATED = :"3DS_AUTHENTICATED"
          ACQUIRER_EXEMPTION = :ACQUIRER_EXEMPTION
          NONE = :NONE
          TOKEN_AUTHENTICATED = :TOKEN_AUTHENTICATED
        end

        # Indicates whether a 3DS challenge flow was used, and if so, what the
        #   verification method was. (deprecated, use `authentication_result`)
        class VerificationAttempted < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          NONE = :NONE
          OTHER = :OTHER
        end

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        #   use `authentication_result`)
        class VerificationResult < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CANCELLED = :CANCELLED
          FAILED = :FAILED
          FRICTIONLESS = :FRICTIONLESS
          NOT_ATTEMPTED = :NOT_ATTEMPTED
          REJECTED = :REJECTED
          SUCCESS = :SUCCESS
        end
      end

      class Merchant < Lithic::BaseModel
        # Unique alphanumeric identifier for the payment card acceptor (merchant).
        sig { returns(String) }
        def acceptor_id
        end

        sig { params(_: String).returns(String) }
        def acceptor_id=(_)
        end

        # Unique numeric identifier of the acquiring institution.
        sig { returns(String) }
        def acquiring_institution_id
        end

        sig { params(_: String).returns(String) }
        def acquiring_institution_id=(_)
        end

        # City of card acceptor. Note that in many cases, particularly in card-not-present
        #   transactions, merchants may send through a phone number or URL in this field.
        sig { returns(String) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        # Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
        #   alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
        sig { returns(String) }
        def country
        end

        sig { params(_: String).returns(String) }
        def country=(_)
        end

        # Short description of card acceptor.
        sig { returns(String) }
        def descriptor
        end

        sig { params(_: String).returns(String) }
        def descriptor=(_)
        end

        # Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
        #   used to classify a business by the types of goods or services it provides.
        sig { returns(String) }
        def mcc
        end

        sig { params(_: String).returns(String) }
        def mcc=(_)
        end

        # Geographic state of card acceptor.
        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

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
        def self.new(acceptor_id:, acquiring_institution_id:, city:, country:, descriptor:, mcc:, state:)
        end

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
        def to_hash
        end
      end

      # Card network of the authorization. Can be `INTERLINK`, `MAESTRO`, `MASTERCARD`,
      #   `VISA`, or `UNKNOWN`. Value is `UNKNOWN` when Lithic cannot determine the
      #   network code from the upstream provider.
      class Network < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        INTERLINK = :INTERLINK
        MAESTRO = :MAESTRO
        MASTERCARD = :MASTERCARD
        UNKNOWN = :UNKNOWN
        VISA = :VISA
      end

      class Pos < Lithic::BaseModel
        sig { returns(Lithic::Models::Transaction::Pos::EntryMode) }
        def entry_mode
        end

        sig do
          params(_: Lithic::Models::Transaction::Pos::EntryMode).returns(Lithic::Models::Transaction::Pos::EntryMode)
        end
        def entry_mode=(_)
        end

        sig { returns(Lithic::Models::Transaction::Pos::Terminal) }
        def terminal
        end

        sig { params(_: Lithic::Models::Transaction::Pos::Terminal).returns(Lithic::Models::Transaction::Pos::Terminal) }
        def terminal=(_)
        end

        sig do
          params(
            entry_mode: Lithic::Models::Transaction::Pos::EntryMode,
            terminal: Lithic::Models::Transaction::Pos::Terminal
          )
            .returns(T.attached_class)
        end
        def self.new(entry_mode:, terminal:)
        end

        sig do
          override
            .returns(
              {
                entry_mode: Lithic::Models::Transaction::Pos::EntryMode,
                terminal: Lithic::Models::Transaction::Pos::Terminal
              }
            )
        end
        def to_hash
        end

        class EntryMode < Lithic::BaseModel
          # Card presence indicator
          sig { returns(Symbol) }
          def card
          end

          sig { params(_: Symbol).returns(Symbol) }
          def card=(_)
          end

          # Cardholder presence indicator
          sig { returns(Symbol) }
          def cardholder
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cardholder=(_)
          end

          # Method of entry for the PAN
          sig { returns(Symbol) }
          def pan
          end

          sig { params(_: Symbol).returns(Symbol) }
          def pan=(_)
          end

          # Indicates whether the cardholder entered the PIN. True if the PIN was entered.
          sig { returns(T::Boolean) }
          def pin_entered
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def pin_entered=(_)
          end

          sig do
            params(
              card: Symbol,
              cardholder: Symbol,
              pan: Symbol,
              pin_entered: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(card:, cardholder:, pan:, pin_entered:)
          end

          sig { override.returns({card: Symbol, cardholder: Symbol, pan: Symbol, pin_entered: T::Boolean}) }
          def to_hash
          end

          # Card presence indicator
          class Card < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            NOT_PRESENT = :NOT_PRESENT
            PREAUTHORIZED = :PREAUTHORIZED
            PRESENT = :PRESENT
            UNKNOWN = :UNKNOWN
          end

          # Cardholder presence indicator
          class Cardholder < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            DEFERRED_BILLING = :DEFERRED_BILLING
            ELECTRONIC_ORDER = :ELECTRONIC_ORDER
            INSTALLMENT = :INSTALLMENT
            MAIL_ORDER = :MAIL_ORDER
            NOT_PRESENT = :NOT_PRESENT
            PREAUTHORIZED = :PREAUTHORIZED
            PRESENT = :PRESENT
            REOCCURRING = :REOCCURRING
            TELEPHONE_ORDER = :TELEPHONE_ORDER
            UNKNOWN = :UNKNOWN
          end

          # Method of entry for the PAN
          class Pan < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            AUTO_ENTRY = :AUTO_ENTRY
            BAR_CODE = :BAR_CODE
            CONTACTLESS = :CONTACTLESS
            CREDENTIAL_ON_FILE = :CREDENTIAL_ON_FILE
            ECOMMERCE = :ECOMMERCE
            ERROR_KEYED = :ERROR_KEYED
            ERROR_MAGNETIC_STRIPE = :ERROR_MAGNETIC_STRIPE
            ICC = :ICC
            KEY_ENTERED = :KEY_ENTERED
            MAGNETIC_STRIPE = :MAGNETIC_STRIPE
            MANUAL = :MANUAL
            OCR = :OCR
            SECURE_CARDLESS = :SECURE_CARDLESS
            UNKNOWN = :UNKNOWN
            UNSPECIFIED = :UNSPECIFIED
          end
        end

        class Terminal < Lithic::BaseModel
          # True if a clerk is present at the sale.
          sig { returns(T::Boolean) }
          def attended
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def attended=(_)
          end

          # True if the terminal is capable of retaining the card.
          sig { returns(T::Boolean) }
          def card_retention_capable
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def card_retention_capable=(_)
          end

          # True if the sale was made at the place of business (vs. mobile).
          sig { returns(T::Boolean) }
          def on_premise
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def on_premise=(_)
          end

          # The person that is designated to swipe the card
          sig { returns(Symbol) }
          def operator
          end

          sig { params(_: Symbol).returns(Symbol) }
          def operator=(_)
          end

          # True if the terminal is capable of partial approval. Partial approval is when
          #   part of a transaction is approved and another payment must be used for the
          #   remainder. Example scenario: A $40 transaction is attempted on a prepaid card
          #   with a $25 balance. If partial approval is enabled, $25 can be authorized, at
          #   which point the POS will prompt the user for an additional payment of $15.
          sig { returns(T::Boolean) }
          def partial_approval_capable
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def partial_approval_capable=(_)
          end

          # Status of whether the POS is able to accept PINs
          sig { returns(Symbol) }
          def pin_capability
          end

          sig { params(_: Symbol).returns(Symbol) }
          def pin_capability=(_)
          end

          # POS Type
          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              attended: T::Boolean,
              card_retention_capable: T::Boolean,
              on_premise: T::Boolean,
              operator: Symbol,
              partial_approval_capable: T::Boolean,
              pin_capability: Symbol,
              type: Symbol
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
          )
          end

          sig do
            override
              .returns(
                {
                  attended: T::Boolean,
                  card_retention_capable: T::Boolean,
                  on_premise: T::Boolean,
                  operator: Symbol,
                  partial_approval_capable: T::Boolean,
                  pin_capability: Symbol,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          # The person that is designated to swipe the card
          class Operator < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            ADMINISTRATIVE = :ADMINISTRATIVE
            CARDHOLDER = :CARDHOLDER
            CARD_ACCEPTOR = :CARD_ACCEPTOR
            UNKNOWN = :UNKNOWN
          end

          # Status of whether the POS is able to accept PINs
          class PinCapability < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            CAPABLE = :CAPABLE
            INOPERATIVE = :INOPERATIVE
            NOT_CAPABLE = :NOT_CAPABLE
            UNSPECIFIED = :UNSPECIFIED
          end

          # POS Type
          class Type < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            ADMINISTRATIVE = :ADMINISTRATIVE
            ATM = :ATM
            AUTHORIZATION = :AUTHORIZATION
            COUPON_MACHINE = :COUPON_MACHINE
            DIAL_TERMINAL = :DIAL_TERMINAL
            ECOMMERCE = :ECOMMERCE
            ECR = :ECR
            FUEL_MACHINE = :FUEL_MACHINE
            HOME_TERMINAL = :HOME_TERMINAL
            MICR = :MICR
            OFF_PREMISE = :OFF_PREMISE
            PAYMENT = :PAYMENT
            PDA = :PDA
            PHONE = :PHONE
            POINT = :POINT
            POS_TERMINAL = :POS_TERMINAL
            PUBLIC_UTILITY = :PUBLIC_UTILITY
            SELF_SERVICE = :SELF_SERVICE
            TELEVISION = :TELEVISION
            TELLER = :TELLER
            TRAVELERS_CHECK_MACHINE = :TRAVELERS_CHECK_MACHINE
            VENDING = :VENDING
            VOICE = :VOICE
            UNKNOWN = :UNKNOWN
          end
        end
      end

      class Result < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACCOUNT_STATE_TRANSACTION_FAIL = :ACCOUNT_STATE_TRANSACTION_FAIL
        APPROVED = :APPROVED
        BANK_CONNECTION_ERROR = :BANK_CONNECTION_ERROR
        BANK_NOT_VERIFIED = :BANK_NOT_VERIFIED
        CARD_CLOSED = :CARD_CLOSED
        CARD_PAUSED = :CARD_PAUSED
        DECLINED = :DECLINED
        FRAUD_ADVICE = :FRAUD_ADVICE
        IGNORED_TTL_EXPIRY = :IGNORED_TTL_EXPIRY
        INACTIVE_ACCOUNT = :INACTIVE_ACCOUNT
        INCORRECT_PIN = :INCORRECT_PIN
        INVALID_CARD_DETAILS = :INVALID_CARD_DETAILS
        INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS
        INSUFFICIENT_FUNDS_PRELOAD = :INSUFFICIENT_FUNDS_PRELOAD
        INVALID_TRANSACTION = :INVALID_TRANSACTION
        MERCHANT_BLACKLIST = :MERCHANT_BLACKLIST
        ORIGINAL_NOT_FOUND = :ORIGINAL_NOT_FOUND
        PREVIOUSLY_COMPLETED = :PREVIOUSLY_COMPLETED
        SINGLE_USE_RECHARGED = :SINGLE_USE_RECHARGED
        SWITCH_INOPERATIVE_ADVICE = :SWITCH_INOPERATIVE_ADVICE
        UNAUTHORIZED_MERCHANT = :UNAUTHORIZED_MERCHANT
        UNKNOWN_HOST_TIMEOUT = :UNKNOWN_HOST_TIMEOUT
        USER_TRANSACTION_LIMIT = :USER_TRANSACTION_LIMIT
      end

      # Status of the transaction.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        SETTLED = :SETTLED
        VOIDED = :VOIDED
      end

      class TokenInfo < Lithic::BaseModel
        # The wallet_type field will indicate the source of the token. Possible token
        #   sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        #   tokenization, and “other” sources like in-flight commerce. Masterpass is not
        #   currently supported and is included for future use.
        sig { returns(Symbol) }
        def wallet_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def wallet_type=(_)
        end

        sig { params(wallet_type: Symbol).returns(T.attached_class) }
        def self.new(wallet_type:)
        end

        sig { override.returns({wallet_type: Symbol}) }
        def to_hash
        end

        # The wallet_type field will indicate the source of the token. Possible token
        #   sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        #   tokenization, and “other” sources like in-flight commerce. Masterpass is not
        #   currently supported and is included for future use.
        class WalletType < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPLE_PAY = :APPLE_PAY
          GOOGLE_PAY = :GOOGLE_PAY
          MASTERPASS = :MASTERPASS
          MERCHANT = :MERCHANT
          OTHER = :OTHER
          SAMSUNG_PAY = :SAMSUNG_PAY
        end
      end

      class Event < Lithic::BaseModel
        # Transaction event identifier.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Amount of the event in the settlement currency.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(Lithic::Models::Transaction::Event::Amounts) }
        def amounts
        end

        sig do
          params(_: Lithic::Models::Transaction::Event::Amounts).returns(Lithic::Models::Transaction::Event::Amounts)
        end
        def amounts=(_)
        end

        # RFC 3339 date and time this event entered the system. UTC time zone.
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        sig { returns(T::Array[Symbol]) }
        def detailed_results
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def detailed_results=(_)
        end

        # Indicates whether the transaction event is a credit or debit to the account.
        sig { returns(Symbol) }
        def effective_polarity
        end

        sig { params(_: Symbol).returns(Symbol) }
        def effective_polarity=(_)
        end

        # Information provided by the card network in each event. This includes common
        #   identifiers shared between you, Lithic, the card network and in some cases the
        #   acquirer. These identifiers often link together events within the same
        #   transaction lifecycle and can be used to locate a particular transaction, such
        #   as during processing of disputes. Not all fields are available in all events,
        #   and the presence of these fields is dependent on the card network and the event
        #   type. If the field is populated by the network, we will pass it through as is
        #   unless otherwise specified. Please consult the official network documentation
        #   for more details about these fields and how to use them.
        sig { returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo)) }
        def network_info
        end

        sig do
          params(_: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo))
            .returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo))
        end
        def network_info=(_)
        end

        sig { returns(Symbol) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        sig { returns(T::Array[Lithic::Models::Transaction::Event::RuleResult]) }
        def rule_results
        end

        sig do
          params(_: T::Array[Lithic::Models::Transaction::Event::RuleResult])
            .returns(T::Array[Lithic::Models::Transaction::Event::RuleResult])
        end
        def rule_results=(_)
        end

        # Type of transaction event
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
            token: String,
            amount: Integer,
            amounts: Lithic::Models::Transaction::Event::Amounts,
            created: Time,
            detailed_results: T::Array[Symbol],
            effective_polarity: Symbol,
            network_info: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo),
            result: Symbol,
            rule_results: T::Array[Lithic::Models::Transaction::Event::RuleResult],
            type: Symbol
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
        )
        end

        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                amounts: Lithic::Models::Transaction::Event::Amounts,
                created: Time,
                detailed_results: T::Array[Symbol],
                effective_polarity: Symbol,
                network_info: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo),
                result: Symbol,
                rule_results: T::Array[Lithic::Models::Transaction::Event::RuleResult],
                type: Symbol
              }
            )
        end
        def to_hash
        end

        class Amounts < Lithic::BaseModel
          sig { returns(Lithic::Models::Transaction::Event::Amounts::Cardholder) }
          def cardholder
          end

          sig do
            params(_: Lithic::Models::Transaction::Event::Amounts::Cardholder)
              .returns(Lithic::Models::Transaction::Event::Amounts::Cardholder)
          end
          def cardholder=(_)
          end

          sig { returns(Lithic::Models::Transaction::Event::Amounts::Merchant) }
          def merchant
          end

          sig do
            params(_: Lithic::Models::Transaction::Event::Amounts::Merchant)
              .returns(Lithic::Models::Transaction::Event::Amounts::Merchant)
          end
          def merchant=(_)
          end

          sig { returns(T.nilable(Lithic::Models::Transaction::Event::Amounts::Settlement)) }
          def settlement
          end

          sig do
            params(_: T.nilable(Lithic::Models::Transaction::Event::Amounts::Settlement))
              .returns(T.nilable(Lithic::Models::Transaction::Event::Amounts::Settlement))
          end
          def settlement=(_)
          end

          sig do
            params(
              cardholder: Lithic::Models::Transaction::Event::Amounts::Cardholder,
              merchant: Lithic::Models::Transaction::Event::Amounts::Merchant,
              settlement: T.nilable(Lithic::Models::Transaction::Event::Amounts::Settlement)
            )
              .returns(T.attached_class)
          end
          def self.new(cardholder:, merchant:, settlement:)
          end

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
          def to_hash
          end

          class Cardholder < Lithic::BaseModel
            # Amount of the event in the cardholder billing currency.
            sig { returns(Integer) }
            def amount
            end

            sig { params(_: Integer).returns(Integer) }
            def amount=(_)
            end

            # Exchange rate used to convert the merchant amount to the cardholder billing
            #   amount.
            sig { returns(String) }
            def conversion_rate
            end

            sig { params(_: String).returns(String) }
            def conversion_rate=(_)
            end

            # 3-character alphabetic ISO 4217 currency
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig do
              params(amount: Integer, conversion_rate: String, currency: String).returns(T.attached_class)
            end
            def self.new(amount:, conversion_rate:, currency:)
            end

            sig { override.returns({amount: Integer, conversion_rate: String, currency: String}) }
            def to_hash
            end
          end

          class Merchant < Lithic::BaseModel
            # Amount of the event in the merchant currency.
            sig { returns(Integer) }
            def amount
            end

            sig { params(_: Integer).returns(Integer) }
            def amount=(_)
            end

            # 3-character alphabetic ISO 4217 currency
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { params(amount: Integer, currency: String).returns(T.attached_class) }
            def self.new(amount:, currency:)
            end

            sig { override.returns({amount: Integer, currency: String}) }
            def to_hash
            end
          end

          class Settlement < Lithic::BaseModel
            # Amount of the event, if it is financial, in the settlement currency.
            #   Non-financial events do not contain this amount because they do not move funds.
            sig { returns(Integer) }
            def amount
            end

            sig { params(_: Integer).returns(Integer) }
            def amount=(_)
            end

            # Exchange rate used to convert the merchant amount to the settlement amount.
            sig { returns(String) }
            def conversion_rate
            end

            sig { params(_: String).returns(String) }
            def conversion_rate=(_)
            end

            # 3-character alphabetic ISO 4217 currency
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig do
              params(amount: Integer, conversion_rate: String, currency: String).returns(T.attached_class)
            end
            def self.new(amount:, conversion_rate:, currency:)
            end

            sig { override.returns({amount: Integer, conversion_rate: String, currency: String}) }
            def to_hash
            end
          end
        end

        class DetailedResult < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED
          ACCOUNT_DELINQUENT = :ACCOUNT_DELINQUENT
          ACCOUNT_INACTIVE = :ACCOUNT_INACTIVE
          ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED = :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED
          ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED
          ACCOUNT_UNDER_REVIEW = :ACCOUNT_UNDER_REVIEW
          ADDRESS_INCORRECT = :ADDRESS_INCORRECT
          APPROVED = :APPROVED
          AUTH_RULE_ALLOWED_COUNTRY = :AUTH_RULE_ALLOWED_COUNTRY
          AUTH_RULE_ALLOWED_MCC = :AUTH_RULE_ALLOWED_MCC
          AUTH_RULE_BLOCKED_COUNTRY = :AUTH_RULE_BLOCKED_COUNTRY
          AUTH_RULE_BLOCKED_MCC = :AUTH_RULE_BLOCKED_MCC
          CARD_CLOSED = :CARD_CLOSED
          CARD_CRYPTOGRAM_VALIDATION_FAILURE = :CARD_CRYPTOGRAM_VALIDATION_FAILURE
          CARD_EXPIRED = :CARD_EXPIRED
          CARD_EXPIRY_DATE_INCORRECT = :CARD_EXPIRY_DATE_INCORRECT
          CARD_INVALID = :CARD_INVALID
          CARD_NOT_ACTIVATED = :CARD_NOT_ACTIVATED
          CARD_PAUSED = :CARD_PAUSED
          CARD_PIN_INCORRECT = :CARD_PIN_INCORRECT
          CARD_RESTRICTED = :CARD_RESTRICTED
          CARD_SECURITY_CODE_INCORRECT = :CARD_SECURITY_CODE_INCORRECT
          CARD_SPEND_LIMIT_EXCEEDED = :CARD_SPEND_LIMIT_EXCEEDED
          CONTACT_CARD_ISSUER = :CONTACT_CARD_ISSUER
          CUSTOMER_ASA_TIMEOUT = :CUSTOMER_ASA_TIMEOUT
          CUSTOM_ASA_RESULT = :CUSTOM_ASA_RESULT
          DECLINED = :DECLINED
          DO_NOT_HONOR = :DO_NOT_HONOR
          DRIVER_NUMBER_INVALID = :DRIVER_NUMBER_INVALID
          FORMAT_ERROR = :FORMAT_ERROR
          INSUFFICIENT_FUNDING_SOURCE_BALANCE = :INSUFFICIENT_FUNDING_SOURCE_BALANCE
          INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS
          LITHIC_SYSTEM_ERROR = :LITHIC_SYSTEM_ERROR
          LITHIC_SYSTEM_RATE_LIMIT = :LITHIC_SYSTEM_RATE_LIMIT
          MALFORMED_ASA_RESPONSE = :MALFORMED_ASA_RESPONSE
          MERCHANT_INVALID = :MERCHANT_INVALID
          MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE = :MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE
          MERCHANT_NOT_PERMITTED = :MERCHANT_NOT_PERMITTED
          OVER_REVERSAL_ATTEMPTED = :OVER_REVERSAL_ATTEMPTED
          PIN_BLOCKED = :PIN_BLOCKED
          PROGRAM_CARD_SPEND_LIMIT_EXCEEDED = :PROGRAM_CARD_SPEND_LIMIT_EXCEEDED
          PROGRAM_SUSPENDED = :PROGRAM_SUSPENDED
          PROGRAM_USAGE_RESTRICTION = :PROGRAM_USAGE_RESTRICTION
          REVERSAL_UNMATCHED = :REVERSAL_UNMATCHED
          SECURITY_VIOLATION = :SECURITY_VIOLATION
          SINGLE_USE_CARD_REATTEMPTED = :SINGLE_USE_CARD_REATTEMPTED
          TRANSACTION_INVALID = :TRANSACTION_INVALID
          TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL = :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL
          TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER = :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER
          TRANSACTION_PREVIOUSLY_COMPLETED = :TRANSACTION_PREVIOUSLY_COMPLETED
          UNAUTHORIZED_MERCHANT = :UNAUTHORIZED_MERCHANT
          VEHICLE_NUMBER_INVALID = :VEHICLE_NUMBER_INVALID
        end

        # Indicates whether the transaction event is a credit or debit to the account.
        class EffectivePolarity < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CREDIT = :CREDIT
          DEBIT = :DEBIT
        end

        class NetworkInfo < Lithic::BaseModel
          sig { returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Acquirer)) }
          def acquirer
          end

          sig do
            params(_: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Acquirer))
              .returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Acquirer))
          end
          def acquirer=(_)
          end

          sig { returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Mastercard)) }
          def mastercard
          end

          sig do
            params(_: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Mastercard))
              .returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Mastercard))
          end
          def mastercard=(_)
          end

          sig { returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Visa)) }
          def visa
          end

          sig do
            params(_: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Visa))
              .returns(T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Visa))
          end
          def visa=(_)
          end

          # Information provided by the card network in each event. This includes common
          #   identifiers shared between you, Lithic, the card network and in some cases the
          #   acquirer. These identifiers often link together events within the same
          #   transaction lifecycle and can be used to locate a particular transaction, such
          #   as during processing of disputes. Not all fields are available in all events,
          #   and the presence of these fields is dependent on the card network and the event
          #   type. If the field is populated by the network, we will pass it through as is
          #   unless otherwise specified. Please consult the official network documentation
          #   for more details about these fields and how to use them.
          sig do
            params(
              acquirer: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Acquirer),
              mastercard: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Mastercard),
              visa: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo::Visa)
            )
              .returns(T.attached_class)
          end
          def self.new(acquirer:, mastercard:, visa:)
          end

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
          def to_hash
          end

          class Acquirer < Lithic::BaseModel
            # Identifier assigned by the acquirer, applicable to dual-message transactions
            #   only. The acquirer reference number (ARN) is only populated once a transaction
            #   has been cleared, and it is not available in all transactions (such as automated
            #   fuel dispenser transactions). A single transaction can contain multiple ARNs if
            #   the merchant sends multiple clearings.
            sig { returns(T.nilable(String)) }
            def acquirer_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def acquirer_reference_number=(_)
            end

            # Identifier assigned by the acquirer.
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            sig do
              params(
                acquirer_reference_number: T.nilable(String),
                retrieval_reference_number: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(acquirer_reference_number:, retrieval_reference_number:)
            end

            sig do
              override
                .returns({
                           acquirer_reference_number: T.nilable(String),
                           retrieval_reference_number: T.nilable(String)
                         })
            end
            def to_hash
            end
          end

          class Mastercard < Lithic::BaseModel
            # Identifier assigned by Mastercard. Guaranteed by Mastercard to be unique for any
            #   transaction within a specific financial network on any processing day.
            sig { returns(T.nilable(String)) }
            def banknet_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def banknet_reference_number=(_)
            end

            # Identifier assigned by Mastercard. Matches the `banknet_reference_number` of a
            #   prior related event. May be populated in authorization reversals, incremental
            #   authorizations (authorization requests that augment a previously authorized
            #   amount), automated fuel dispenser authorization advices and clearings, and
            #   financial authorizations. If the original banknet reference number contains all
            #   zeroes, then no actual reference number could be found by the network or
            #   acquirer. If Mastercard converts a transaction from dual-message to
            #   single-message, such as for certain ATM transactions, it will populate the
            #   original banknet reference number in the resulting financial authorization with
            #   the banknet reference number of the initial authorization, which Lithic does not
            #   receive.
            sig { returns(T.nilable(String)) }
            def original_banknet_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def original_banknet_reference_number=(_)
            end

            # Identifier assigned by Mastercard. Matches the `switch_serial_number` of a prior
            #   related event. May be populated in returns and return reversals. Applicable to
            #   single-message transactions only.
            sig { returns(T.nilable(String)) }
            def original_switch_serial_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def original_switch_serial_number=(_)
            end

            # Identifier assigned by Mastercard, applicable to single-message transactions
            #   only.
            sig { returns(T.nilable(String)) }
            def switch_serial_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def switch_serial_number=(_)
            end

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
            )
            end

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
            def to_hash
            end
          end

          class Visa < Lithic::BaseModel
            # Identifier assigned by Visa. Matches the `transaction_id` of a prior related
            #   event. May be populated in incremental authorizations (authorization requests
            #   that augment a previously authorized amount), authorization advices, financial
            #   authorizations, and clearings.
            sig { returns(T.nilable(String)) }
            def original_transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def original_transaction_id=(_)
            end

            # Identifier assigned by Visa to link original messages to subsequent messages.
            #   Guaranteed by Visa to be unique for each original authorization and financial
            #   authorization.
            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            sig do
              params(original_transaction_id: T.nilable(String), transaction_id: T.nilable(String))
                .returns(T.attached_class)
            end
            def self.new(original_transaction_id:, transaction_id:)
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

        class Result < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ACCOUNT_STATE_TRANSACTION_FAIL = :ACCOUNT_STATE_TRANSACTION_FAIL
          APPROVED = :APPROVED
          BANK_CONNECTION_ERROR = :BANK_CONNECTION_ERROR
          BANK_NOT_VERIFIED = :BANK_NOT_VERIFIED
          CARD_CLOSED = :CARD_CLOSED
          CARD_PAUSED = :CARD_PAUSED
          DECLINED = :DECLINED
          FRAUD_ADVICE = :FRAUD_ADVICE
          IGNORED_TTL_EXPIRY = :IGNORED_TTL_EXPIRY
          INACTIVE_ACCOUNT = :INACTIVE_ACCOUNT
          INCORRECT_PIN = :INCORRECT_PIN
          INVALID_CARD_DETAILS = :INVALID_CARD_DETAILS
          INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS
          INSUFFICIENT_FUNDS_PRELOAD = :INSUFFICIENT_FUNDS_PRELOAD
          INVALID_TRANSACTION = :INVALID_TRANSACTION
          MERCHANT_BLACKLIST = :MERCHANT_BLACKLIST
          ORIGINAL_NOT_FOUND = :ORIGINAL_NOT_FOUND
          PREVIOUSLY_COMPLETED = :PREVIOUSLY_COMPLETED
          SINGLE_USE_RECHARGED = :SINGLE_USE_RECHARGED
          SWITCH_INOPERATIVE_ADVICE = :SWITCH_INOPERATIVE_ADVICE
          UNAUTHORIZED_MERCHANT = :UNAUTHORIZED_MERCHANT
          UNKNOWN_HOST_TIMEOUT = :UNKNOWN_HOST_TIMEOUT
          USER_TRANSACTION_LIMIT = :USER_TRANSACTION_LIMIT
        end

        class RuleResult < Lithic::BaseModel
          # The Auth Rule Token associated with the rule from which the decline originated.
          #   If this is set to null, then the decline was not associated with a
          #   customer-configured Auth Rule. This may happen in cases where a transaction is
          #   declined due to a Lithic-configured security or compliance rule, for example.
          sig { returns(T.nilable(String)) }
          def auth_rule_token
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def auth_rule_token=(_)
          end

          # A human-readable explanation outlining the motivation for the rule's decline.
          sig { returns(T.nilable(String)) }
          def explanation
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def explanation=(_)
          end

          # The name for the rule, if any was configured.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          # The detailed_result associated with this rule's decline.
          sig { returns(Symbol) }
          def result
          end

          sig { params(_: Symbol).returns(Symbol) }
          def result=(_)
          end

          sig do
            params(
              auth_rule_token: T.nilable(String),
              explanation: T.nilable(String),
              name: T.nilable(String),
              result: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(auth_rule_token:, explanation:, name:, result:)
          end

          sig do
            override
              .returns(
                {
                  auth_rule_token: T.nilable(String),
                  explanation: T.nilable(String),
                  name: T.nilable(String),
                  result: Symbol
                }
              )
          end
          def to_hash
          end

          # The detailed_result associated with this rule's decline.
          class Result < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED
            ACCOUNT_DELINQUENT = :ACCOUNT_DELINQUENT
            ACCOUNT_INACTIVE = :ACCOUNT_INACTIVE
            ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED = :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED
            ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED
            ACCOUNT_UNDER_REVIEW = :ACCOUNT_UNDER_REVIEW
            ADDRESS_INCORRECT = :ADDRESS_INCORRECT
            APPROVED = :APPROVED
            AUTH_RULE_ALLOWED_COUNTRY = :AUTH_RULE_ALLOWED_COUNTRY
            AUTH_RULE_ALLOWED_MCC = :AUTH_RULE_ALLOWED_MCC
            AUTH_RULE_BLOCKED_COUNTRY = :AUTH_RULE_BLOCKED_COUNTRY
            AUTH_RULE_BLOCKED_MCC = :AUTH_RULE_BLOCKED_MCC
            CARD_CLOSED = :CARD_CLOSED
            CARD_CRYPTOGRAM_VALIDATION_FAILURE = :CARD_CRYPTOGRAM_VALIDATION_FAILURE
            CARD_EXPIRED = :CARD_EXPIRED
            CARD_EXPIRY_DATE_INCORRECT = :CARD_EXPIRY_DATE_INCORRECT
            CARD_INVALID = :CARD_INVALID
            CARD_NOT_ACTIVATED = :CARD_NOT_ACTIVATED
            CARD_PAUSED = :CARD_PAUSED
            CARD_PIN_INCORRECT = :CARD_PIN_INCORRECT
            CARD_RESTRICTED = :CARD_RESTRICTED
            CARD_SECURITY_CODE_INCORRECT = :CARD_SECURITY_CODE_INCORRECT
            CARD_SPEND_LIMIT_EXCEEDED = :CARD_SPEND_LIMIT_EXCEEDED
            CONTACT_CARD_ISSUER = :CONTACT_CARD_ISSUER
            CUSTOMER_ASA_TIMEOUT = :CUSTOMER_ASA_TIMEOUT
            CUSTOM_ASA_RESULT = :CUSTOM_ASA_RESULT
            DECLINED = :DECLINED
            DO_NOT_HONOR = :DO_NOT_HONOR
            DRIVER_NUMBER_INVALID = :DRIVER_NUMBER_INVALID
            FORMAT_ERROR = :FORMAT_ERROR
            INSUFFICIENT_FUNDING_SOURCE_BALANCE = :INSUFFICIENT_FUNDING_SOURCE_BALANCE
            INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS
            LITHIC_SYSTEM_ERROR = :LITHIC_SYSTEM_ERROR
            LITHIC_SYSTEM_RATE_LIMIT = :LITHIC_SYSTEM_RATE_LIMIT
            MALFORMED_ASA_RESPONSE = :MALFORMED_ASA_RESPONSE
            MERCHANT_INVALID = :MERCHANT_INVALID
            MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE = :MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE
            MERCHANT_NOT_PERMITTED = :MERCHANT_NOT_PERMITTED
            OVER_REVERSAL_ATTEMPTED = :OVER_REVERSAL_ATTEMPTED
            PIN_BLOCKED = :PIN_BLOCKED
            PROGRAM_CARD_SPEND_LIMIT_EXCEEDED = :PROGRAM_CARD_SPEND_LIMIT_EXCEEDED
            PROGRAM_SUSPENDED = :PROGRAM_SUSPENDED
            PROGRAM_USAGE_RESTRICTION = :PROGRAM_USAGE_RESTRICTION
            REVERSAL_UNMATCHED = :REVERSAL_UNMATCHED
            SECURITY_VIOLATION = :SECURITY_VIOLATION
            SINGLE_USE_CARD_REATTEMPTED = :SINGLE_USE_CARD_REATTEMPTED
            TRANSACTION_INVALID = :TRANSACTION_INVALID
            TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL = :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL
            TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER = :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER
            TRANSACTION_PREVIOUSLY_COMPLETED = :TRANSACTION_PREVIOUSLY_COMPLETED
            UNAUTHORIZED_MERCHANT = :UNAUTHORIZED_MERCHANT
            VEHICLE_NUMBER_INVALID = :VEHICLE_NUMBER_INVALID
          end
        end

        # Type of transaction event
        class Type < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          AUTHORIZATION = :AUTHORIZATION
          AUTHORIZATION_ADVICE = :AUTHORIZATION_ADVICE
          AUTHORIZATION_EXPIRY = :AUTHORIZATION_EXPIRY
          AUTHORIZATION_REVERSAL = :AUTHORIZATION_REVERSAL
          BALANCE_INQUIRY = :BALANCE_INQUIRY
          CLEARING = :CLEARING
          CORRECTION_CREDIT = :CORRECTION_CREDIT
          CORRECTION_DEBIT = :CORRECTION_DEBIT
          CREDIT_AUTHORIZATION = :CREDIT_AUTHORIZATION
          CREDIT_AUTHORIZATION_ADVICE = :CREDIT_AUTHORIZATION_ADVICE
          FINANCIAL_AUTHORIZATION = :FINANCIAL_AUTHORIZATION
          FINANCIAL_CREDIT_AUTHORIZATION = :FINANCIAL_CREDIT_AUTHORIZATION
          RETURN = :RETURN
          RETURN_REVERSAL = :RETURN_REVERSAL
        end
      end
    end
  end
end
