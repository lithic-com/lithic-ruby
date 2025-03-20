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
      sig { returns(T.nilable(Lithic::Models::Transaction::Network::TaggedSymbol)) }
      def network
      end

      sig do
        params(_: T.nilable(Lithic::Models::Transaction::Network::TaggedSymbol))
          .returns(T.nilable(Lithic::Models::Transaction::Network::TaggedSymbol))
      end
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

      sig { returns(Lithic::Models::Transaction::Result::TaggedSymbol) }
      def result
      end

      sig do
        params(_: Lithic::Models::Transaction::Result::TaggedSymbol)
          .returns(Lithic::Models::Transaction::Result::TaggedSymbol)
      end
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
      sig { returns(Lithic::Models::Transaction::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Lithic::Models::Transaction::Status::TaggedSymbol)
          .returns(Lithic::Models::Transaction::Status::TaggedSymbol)
      end
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
          network: T.nilable(Lithic::Models::Transaction::Network::TaggedSymbol),
          network_risk_score: T.nilable(Integer),
          pos: Lithic::Models::Transaction::Pos,
          result: Lithic::Models::Transaction::Result::TaggedSymbol,
          settled_amount: Integer,
          status: Lithic::Models::Transaction::Status::TaggedSymbol,
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
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol) }
        def acquirer_exemption
        end

        sig do
          params(_: Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol)
            .returns(Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol)
        end
        def acquirer_exemption=(_)
        end

        # Indicates what the outcome of the 3DS authentication process is.
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol) }
        def authentication_result
        end

        sig do
          params(_: Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol)
            .returns(Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol)
        end
        def authentication_result=(_)
        end

        # Indicates which party made the 3DS authentication decision.
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol) }
        def decision_made_by
        end

        sig do
          params(_: Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol)
            .returns(Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol)
        end
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
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol) }
        def liability_shift
        end

        sig do
          params(_: Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol)
            .returns(Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol)
        end
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
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol) }
        def verification_attempted
        end

        sig do
          params(_: Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol)
            .returns(Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol)
        end
        def verification_attempted=(_)
        end

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        #   use `authentication_result`)
        sig { returns(Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol) }
        def verification_result
        end

        sig do
          params(_: Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol)
            .returns(Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol)
        end
        def verification_result=(_)
        end

        sig do
          params(
            three_ds_version: T.nilable(String),
            acquirer_exemption: Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol,
            authentication_result: Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol,
            decision_made_by: Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol,
            liability_shift: Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol,
            three_ds_authentication_token: T.nilable(String),
            verification_attempted: Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol,
            verification_result: Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol
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
        def to_hash
        end

        # Whether an acquirer exemption applied to the transaction.
        module AcquirerExemption
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption::TaggedSymbol) }

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
        end

        # Indicates what the outcome of the 3DS authentication process is.
        module AuthenticationResult
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult::TaggedSymbol) }

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
        end

        # Indicates which party made the 3DS authentication decision.
        module DecisionMadeBy
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy::TaggedSymbol) }

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
        module LiabilityShift
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift::TaggedSymbol) }

          NUMBER_3DS_AUTHENTICATED =
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
        end

        # Indicates whether a 3DS challenge flow was used, and if so, what the
        #   verification method was. (deprecated, use `authentication_result`)
        module VerificationAttempted
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol) }

          NONE =
            T.let(:NONE, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol)
          OTHER =
            T.let(:OTHER, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted::TaggedSymbol)
        end

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        #   use `authentication_result`)
        module VerificationResult
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult::TaggedSymbol) }

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
      module Network
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Network::TaggedSymbol) }

        INTERLINK = T.let(:INTERLINK, Lithic::Models::Transaction::Network::TaggedSymbol)
        MAESTRO = T.let(:MAESTRO, Lithic::Models::Transaction::Network::TaggedSymbol)
        MASTERCARD = T.let(:MASTERCARD, Lithic::Models::Transaction::Network::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::Models::Transaction::Network::TaggedSymbol)
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
          sig { returns(Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol) }
          def card
          end

          sig do
            params(_: Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
              .returns(Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
          end
          def card=(_)
          end

          # Cardholder presence indicator
          sig { returns(Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol) }
          def cardholder
          end

          sig do
            params(_: Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
              .returns(Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol)
          end
          def cardholder=(_)
          end

          # Method of entry for the PAN
          sig { returns(Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol) }
          def pan
          end

          sig do
            params(_: Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
              .returns(Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol)
          end
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
              card: Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol,
              cardholder: Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol,
              pan: Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol,
              pin_entered: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(card:, cardholder:, pan:, pin_entered:)
          end

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
          def to_hash
          end

          # Card presence indicator
          module Card
            extend Lithic::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Card) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol) }

            NOT_PRESENT = T.let(:NOT_PRESENT, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
            PREAUTHORIZED = T.let(:PREAUTHORIZED, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
            PRESENT = T.let(:PRESENT, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
            UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Pos::EntryMode::Card::TaggedSymbol)
          end

          # Cardholder presence indicator
          module Cardholder
            extend Lithic::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Cardholder) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Cardholder::TaggedSymbol) }

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
          end

          # Method of entry for the PAN
          module Pan
            extend Lithic::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Pan) }
            OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Pos::EntryMode::Pan::TaggedSymbol) }

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
          sig { returns(Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol) }
          def operator
          end

          sig do
            params(_: Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
              .returns(Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
          end
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
          sig { returns(Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol) }
          def pin_capability
          end

          sig do
            params(_: Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
              .returns(Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
          end
          def pin_capability=(_)
          end

          # POS Type
          sig { returns(Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol) }
          def type
          end

          sig do
            params(_: Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
              .returns(Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol)
          end
          def type=(_)
          end

          sig do
            params(
              attended: T::Boolean,
              card_retention_capable: T::Boolean,
              on_premise: T::Boolean,
              operator: Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol,
              partial_approval_capable: T::Boolean,
              pin_capability: Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol,
              type: Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol
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
                  operator: Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol,
                  partial_approval_capable: T::Boolean,
                  pin_capability: Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol,
                  type: Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          # The person that is designated to swipe the card
          module Operator
            extend Lithic::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::Terminal::Operator) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol) }

            ADMINISTRATIVE =
              T.let(:ADMINISTRATIVE, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
            CARDHOLDER = T.let(:CARDHOLDER, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
            CARD_ACCEPTOR = T.let(:CARD_ACCEPTOR, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
            UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Transaction::Pos::Terminal::Operator::TaggedSymbol)
          end

          # Status of whether the POS is able to accept PINs
          module PinCapability
            extend Lithic::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::Terminal::PinCapability) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol) }

            CAPABLE = T.let(:CAPABLE, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
            INOPERATIVE =
              T.let(:INOPERATIVE, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
            NOT_CAPABLE =
              T.let(:NOT_CAPABLE, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
            UNSPECIFIED =
              T.let(:UNSPECIFIED, Lithic::Models::Transaction::Pos::Terminal::PinCapability::TaggedSymbol)
          end

          # POS Type
          module Type
            extend Lithic::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Pos::Terminal::Type) }
            OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Pos::Terminal::Type::TaggedSymbol) }

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
          end
        end
      end

      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Result::TaggedSymbol) }

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
      end

      # Status of the transaction.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Status::TaggedSymbol) }

        DECLINED = T.let(:DECLINED, Lithic::Models::Transaction::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Models::Transaction::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::Transaction::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::Transaction::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Models::Transaction::Status::TaggedSymbol)
      end

      class TokenInfo < Lithic::BaseModel
        # The wallet_type field will indicate the source of the token. Possible token
        #   sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        #   tokenization, and “other” sources like in-flight commerce. Masterpass is not
        #   currently supported and is included for future use.
        sig { returns(Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol) }
        def wallet_type
        end

        sig do
          params(_: Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
            .returns(Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
        end
        def wallet_type=(_)
        end

        sig do
          params(wallet_type: Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
            .returns(T.attached_class)
        end
        def self.new(wallet_type:)
        end

        sig { override.returns({wallet_type: Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol}) }
        def to_hash
        end

        # The wallet_type field will indicate the source of the token. Possible token
        #   sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        #   tokenization, and “other” sources like in-flight commerce. Masterpass is not
        #   currently supported and is included for future use.
        module WalletType
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::TokenInfo::WalletType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol) }

          APPLE_PAY = T.let(:APPLE_PAY, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          GOOGLE_PAY = T.let(:GOOGLE_PAY, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          MASTERPASS = T.let(:MASTERPASS, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          MERCHANT = T.let(:MERCHANT, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          OTHER = T.let(:OTHER, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
          SAMSUNG_PAY = T.let(:SAMSUNG_PAY, Lithic::Models::Transaction::TokenInfo::WalletType::TaggedSymbol)
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

        sig { returns(T::Array[Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol]) }
        def detailed_results
        end

        sig do
          params(_: T::Array[Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol])
            .returns(T::Array[Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol])
        end
        def detailed_results=(_)
        end

        # Indicates whether the transaction event is a credit or debit to the account.
        sig { returns(Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol) }
        def effective_polarity
        end

        sig do
          params(_: Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol)
            .returns(Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol)
        end
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

        sig { returns(Lithic::Models::Transaction::Event::Result::TaggedSymbol) }
        def result
        end

        sig do
          params(_: Lithic::Models::Transaction::Event::Result::TaggedSymbol)
            .returns(Lithic::Models::Transaction::Event::Result::TaggedSymbol)
        end
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
        sig { returns(Lithic::Models::Transaction::Event::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Lithic::Models::Transaction::Event::Type::TaggedSymbol)
            .returns(Lithic::Models::Transaction::Event::Type::TaggedSymbol)
        end
        def type=(_)
        end

        sig do
          params(
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
                detailed_results: T::Array[Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol],
                effective_polarity: Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol,
                network_info: T.nilable(Lithic::Models::Transaction::Event::NetworkInfo),
                result: Lithic::Models::Transaction::Event::Result::TaggedSymbol,
                rule_results: T::Array[Lithic::Models::Transaction::Event::RuleResult],
                type: Lithic::Models::Transaction::Event::Type::TaggedSymbol
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

        module DetailedResult
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::DetailedResult) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Event::DetailedResult::TaggedSymbol) }

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
        end

        # Indicates whether the transaction event is a credit or debit to the account.
        module EffectivePolarity
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::EffectivePolarity) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol) }

          CREDIT = T.let(:CREDIT, Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol)
          DEBIT = T.let(:DEBIT, Lithic::Models::Transaction::Event::EffectivePolarity::TaggedSymbol)
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

        module Result
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Event::Result::TaggedSymbol) }

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
          sig { returns(Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol) }
          def result
          end

          sig do
            params(_: Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
              .returns(Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol)
          end
          def result=(_)
          end

          sig do
            params(
              auth_rule_token: T.nilable(String),
              explanation: T.nilable(String),
              name: T.nilable(String),
              result: Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
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
                  result: Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          # The detailed_result associated with this rule's decline.
          module Result
            extend Lithic::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::RuleResult::Result) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Event::RuleResult::Result::TaggedSymbol) }

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
          end
        end

        # Type of transaction event
        module Type
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transaction::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Transaction::Event::Type::TaggedSymbol) }

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
        end
      end
    end
  end
end
