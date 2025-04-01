# frozen_string_literal: true

module Lithic
  module Models
    class Transaction < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #   The token for the account associated with this transaction.
      #
      #   @return [String]
      required :account_token, String

      # @!attribute acquirer_fee
      #   Fee assessed by the merchant and paid for by the cardholder in the smallest unit
      #     of the currency. Will be zero if no fee is assessed. Rebates may be transmitted
      #     as a negative value to indicate credited fees.
      #
      #   @return [Integer, nil]
      required :acquirer_fee, Integer, nil?: true

      # @!attribute acquirer_reference_number
      #   Unique identifier assigned to a transaction by the acquirer that can be used in
      #     dispute and chargeback filing.
      #
      #   @return [String, nil]
      required :acquirer_reference_number, String, nil?: true

      # @!attribute amount
      #   When the transaction is pending, this represents the authorization amount of the
      #     transaction in the anticipated settlement currency. Once the transaction has
      #     settled, this field represents the settled amount in the settlement currency.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute amounts
      #
      #   @return [Lithic::Models::Transaction::Amounts]
      required :amounts, -> { Lithic::Models::Transaction::Amounts }

      # @!attribute authorization_amount
      #   The authorization amount of the transaction in the anticipated settlement
      #     currency.
      #
      #   @return [Integer, nil]
      required :authorization_amount, Integer, nil?: true

      # @!attribute authorization_code
      #   A fixed-width 6-digit numeric identifier that can be used to identify a
      #     transaction with networks.
      #
      #   @return [String, nil]
      required :authorization_code, String, nil?: true

      # @!attribute avs
      #
      #   @return [Lithic::Models::Transaction::Avs, nil]
      required :avs, -> { Lithic::Models::Transaction::Avs }, nil?: true

      # @!attribute card_token
      #   Token for the card used in this transaction.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute cardholder_authentication
      #
      #   @return [Lithic::Models::Transaction::CardholderAuthentication, nil]
      required :cardholder_authentication,
               -> { Lithic::Models::Transaction::CardholderAuthentication },
               nil?: true

      # @!attribute created
      #   Date and time when the transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute merchant
      #
      #   @return [Lithic::Models::Transaction::Merchant]
      required :merchant, -> { Lithic::Models::Transaction::Merchant }

      # @!attribute merchant_amount
      #   Analogous to the 'amount', but in the merchant currency.
      #
      #   @return [Integer, nil]
      required :merchant_amount, Integer, nil?: true

      # @!attribute merchant_authorization_amount
      #   Analogous to the 'authorization_amount', but in the merchant currency.
      #
      #   @return [Integer, nil]
      required :merchant_authorization_amount, Integer, nil?: true

      # @!attribute merchant_currency
      #   3-character alphabetic ISO 4217 code for the local currency of the transaction.
      #
      #   @return [String]
      required :merchant_currency, String

      # @!attribute network
      #   Card network of the authorization. Can be `INTERLINK`, `MAESTRO`, `MASTERCARD`,
      #     `VISA`, or `UNKNOWN`. Value is `UNKNOWN` when Lithic cannot determine the
      #     network code from the upstream provider.
      #
      #   @return [Symbol, Lithic::Models::Transaction::Network, nil]
      required :network, enum: -> { Lithic::Models::Transaction::Network }, nil?: true

      # @!attribute network_risk_score
      #   Network-provided score assessing risk level associated with a given
      #     authorization. Scores are on a range of 0-999, with 0 representing the lowest
      #     risk and 999 representing the highest risk. For Visa transactions, where the raw
      #     score has a range of 0-99, Lithic will normalize the score by multiplying the
      #     raw score by 10x.
      #
      #   @return [Integer, nil]
      required :network_risk_score, Integer, nil?: true

      # @!attribute pos
      #
      #   @return [Lithic::Models::Transaction::Pos]
      required :pos, -> { Lithic::Models::Transaction::Pos }

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::Transaction::Result]
      required :result, enum: -> { Lithic::Models::Transaction::Result }

      # @!attribute settled_amount
      #   The settled amount of the transaction in the settlement currency.
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #   Status of the transaction.
      #
      #   @return [Symbol, Lithic::Models::Transaction::Status]
      required :status, enum: -> { Lithic::Models::Transaction::Status }

      # @!attribute token_info
      #
      #   @return [Lithic::Models::Transaction::TokenInfo, nil]
      required :token_info, -> { Lithic::Models::Transaction::TokenInfo }, nil?: true

      # @!attribute updated
      #   Date and time when the transaction last updated. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute [r] events
      #
      #   @return [Array<Lithic::Models::Transaction::Event>, nil]
      optional :events, -> { Lithic::ArrayOf[Lithic::Models::Transaction::Event] }

      # @!parse
      #   # @return [Array<Lithic::Models::Transaction::Event>]
      #   attr_writer :events

      # @!parse
      #   # @param token [String]
      #   # @param account_token [String]
      #   # @param acquirer_fee [Integer, nil]
      #   # @param acquirer_reference_number [String, nil]
      #   # @param amount [Integer]
      #   # @param amounts [Lithic::Models::Transaction::Amounts]
      #   # @param authorization_amount [Integer, nil]
      #   # @param authorization_code [String, nil]
      #   # @param avs [Lithic::Models::Transaction::Avs, nil]
      #   # @param card_token [String]
      #   # @param cardholder_authentication [Lithic::Models::Transaction::CardholderAuthentication, nil]
      #   # @param created [Time]
      #   # @param merchant [Lithic::Models::Transaction::Merchant]
      #   # @param merchant_amount [Integer, nil]
      #   # @param merchant_authorization_amount [Integer, nil]
      #   # @param merchant_currency [String]
      #   # @param network [Symbol, Lithic::Models::Transaction::Network, nil]
      #   # @param network_risk_score [Integer, nil]
      #   # @param pos [Lithic::Models::Transaction::Pos]
      #   # @param result [Symbol, Lithic::Models::Transaction::Result]
      #   # @param settled_amount [Integer]
      #   # @param status [Symbol, Lithic::Models::Transaction::Status]
      #   # @param token_info [Lithic::Models::Transaction::TokenInfo, nil]
      #   # @param updated [Time]
      #   # @param events [Array<Lithic::Models::Transaction::Event>]
      #   #
      #   def initialize(
      #     token:,
      #     account_token:,
      #     acquirer_fee:,
      #     acquirer_reference_number:,
      #     amount:,
      #     amounts:,
      #     authorization_amount:,
      #     authorization_code:,
      #     avs:,
      #     card_token:,
      #     cardholder_authentication:,
      #     created:,
      #     merchant:,
      #     merchant_amount:,
      #     merchant_authorization_amount:,
      #     merchant_currency:,
      #     network:,
      #     network_risk_score:,
      #     pos:,
      #     result:,
      #     settled_amount:,
      #     status:,
      #     token_info:,
      #     updated:,
      #     events: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # @see Lithic::Models::Transaction#amounts
      class Amounts < Lithic::BaseModel
        # @!attribute cardholder
        #
        #   @return [Lithic::Models::Transaction::Amounts::Cardholder]
        required :cardholder, -> { Lithic::Models::Transaction::Amounts::Cardholder }

        # @!attribute hold
        #
        #   @return [Lithic::Models::Transaction::Amounts::Hold]
        required :hold, -> { Lithic::Models::Transaction::Amounts::Hold }

        # @!attribute merchant
        #
        #   @return [Lithic::Models::Transaction::Amounts::Merchant]
        required :merchant, -> { Lithic::Models::Transaction::Amounts::Merchant }

        # @!attribute settlement
        #
        #   @return [Lithic::Models::Transaction::Amounts::Settlement]
        required :settlement, -> { Lithic::Models::Transaction::Amounts::Settlement }

        # @!parse
        #   # @param cardholder [Lithic::Models::Transaction::Amounts::Cardholder]
        #   # @param hold [Lithic::Models::Transaction::Amounts::Hold]
        #   # @param merchant [Lithic::Models::Transaction::Amounts::Merchant]
        #   # @param settlement [Lithic::Models::Transaction::Amounts::Settlement]
        #   #
        #   def initialize(cardholder:, hold:, merchant:, settlement:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # @see Lithic::Models::Transaction::Amounts#cardholder
        class Cardholder < Lithic::BaseModel
          # @!attribute amount
          #   The estimated settled amount of the transaction in the cardholder billing
          #     currency.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute conversion_rate
          #   The exchange rate used to convert the merchant amount to the cardholder billing
          #     amount.
          #
          #   @return [String]
          required :conversion_rate, String

          # @!attribute currency
          #   3-character alphabetic ISO 4217 currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param amount [Integer]
          #   # @param conversion_rate [String]
          #   # @param currency [String]
          #   #
          #   def initialize(amount:, conversion_rate:, currency:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void
        end

        # @see Lithic::Models::Transaction::Amounts#hold
        class Hold < Lithic::BaseModel
          # @!attribute amount
          #   The pending amount of the transaction in the anticipated settlement currency.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   3-character alphabetic ISO 4217 currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param amount [Integer]
          #   # @param currency [String]
          #   #
          #   def initialize(amount:, currency:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void
        end

        # @see Lithic::Models::Transaction::Amounts#merchant
        class Merchant < Lithic::BaseModel
          # @!attribute amount
          #   The settled amount of the transaction in the merchant currency.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   3-character alphabetic ISO 4217 currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param amount [Integer]
          #   # @param currency [String]
          #   #
          #   def initialize(amount:, currency:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void
        end

        # @see Lithic::Models::Transaction::Amounts#settlement
        class Settlement < Lithic::BaseModel
          # @!attribute amount
          #   The settled amount of the transaction in the settlement currency.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   3-character alphabetic ISO 4217 currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param amount [Integer]
          #   # @param currency [String]
          #   #
          #   def initialize(amount:, currency:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void
        end
      end

      # @see Lithic::Models::Transaction#avs
      class Avs < Lithic::BaseModel
        # @!attribute address
        #   Cardholder address
        #
        #   @return [String]
        required :address, String

        # @!attribute zipcode
        #   Cardholder ZIP code
        #
        #   @return [String]
        required :zipcode, String

        # @!parse
        #   # @param address [String]
        #   # @param zipcode [String]
        #   #
        #   def initialize(address:, zipcode:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # @see Lithic::Models::Transaction#cardholder_authentication
      class CardholderAuthentication < Lithic::BaseModel
        # @!attribute three_ds_version
        #   The 3DS version used for the authentication
        #
        #   @return [String, nil]
        required :three_ds_version, String, api_name: :"3ds_version", nil?: true

        # @!attribute acquirer_exemption
        #   Whether an acquirer exemption applied to the transaction.
        #
        #   @return [Symbol, Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption]
        required :acquirer_exemption,
                 enum: -> { Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption }

        # @!attribute authentication_result
        #   Indicates what the outcome of the 3DS authentication process is.
        #
        #   @return [Symbol, Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult]
        required :authentication_result,
                 enum: -> { Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult }

        # @!attribute decision_made_by
        #   Indicates which party made the 3DS authentication decision.
        #
        #   @return [Symbol, Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy]
        required :decision_made_by,
                 enum: -> { Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy }

        # @!attribute liability_shift
        #   Indicates whether chargeback liability shift applies to the transaction.
        #     Possible enum values:
        #
        #         * `3DS_AUTHENTICATED`: The transaction was fully authenticated through a 3-D Secure flow, chargeback liability shift applies.
        #
        #         * `ACQUIRER_EXEMPTION`: The acquirer utilised an exemption to bypass Strong Customer Authentication (`transStatus = N`, or `transStatus = I`). Liability remains with the acquirer and in this case the `acquirer_exemption` field is expected to be not `NONE`.
        #
        #         * `NONE`: Chargeback liability shift has not shifted to the issuer, i.e. the merchant is liable.
        #
        #     - `TOKEN_AUTHENTICATED`: The transaction was a tokenized payment with validated
        #       cryptography, possibly recurring. Chargeback liability shift to the issuer
        #       applies.
        #
        #   @return [Symbol, Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift]
        required :liability_shift,
                 enum: -> { Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift }

        # @!attribute three_ds_authentication_token
        #   Unique identifier you can use to match a given 3DS authentication (available via
        #     the three_ds_authentication.created event webhook) and the transaction. Note
        #     that in cases where liability shift does not occur, this token is matched to the
        #     transaction on a best-effort basis.
        #
        #   @return [String, nil]
        required :three_ds_authentication_token, String, nil?: true

        # @!attribute verification_attempted
        #   Indicates whether a 3DS challenge flow was used, and if so, what the
        #     verification method was. (deprecated, use `authentication_result`)
        #
        #   @return [Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted]
        required :verification_attempted,
                 enum: -> { Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted }

        # @!attribute verification_result
        #   Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        #     use `authentication_result`)
        #
        #   @return [Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult]
        required :verification_result,
                 enum: -> { Lithic::Models::Transaction::CardholderAuthentication::VerificationResult }

        # @!parse
        #   # @param three_ds_version [String, nil]
        #   # @param acquirer_exemption [Symbol, Lithic::Models::Transaction::CardholderAuthentication::AcquirerExemption]
        #   # @param authentication_result [Symbol, Lithic::Models::Transaction::CardholderAuthentication::AuthenticationResult]
        #   # @param decision_made_by [Symbol, Lithic::Models::Transaction::CardholderAuthentication::DecisionMadeBy]
        #   # @param liability_shift [Symbol, Lithic::Models::Transaction::CardholderAuthentication::LiabilityShift]
        #   # @param three_ds_authentication_token [String, nil]
        #   # @param verification_attempted [Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationAttempted]
        #   # @param verification_result [Symbol, Lithic::Models::Transaction::CardholderAuthentication::VerificationResult]
        #   #
        #   def initialize(
        #     three_ds_version:,
        #     acquirer_exemption:,
        #     authentication_result:,
        #     decision_made_by:,
        #     liability_shift:,
        #     three_ds_authentication_token:,
        #     verification_attempted:,
        #     verification_result:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # Whether an acquirer exemption applied to the transaction.
        #
        # @see Lithic::Models::Transaction::CardholderAuthentication#acquirer_exemption
        module AcquirerExemption
          extend Lithic::Enum

          AUTHENTICATION_OUTAGE_EXCEPTION = :AUTHENTICATION_OUTAGE_EXCEPTION
          LOW_VALUE = :LOW_VALUE
          MERCHANT_INITIATED_TRANSACTION = :MERCHANT_INITIATED_TRANSACTION
          NONE = :NONE
          RECURRING_PAYMENT = :RECURRING_PAYMENT
          SECURE_CORPORATE_PAYMENT = :SECURE_CORPORATE_PAYMENT
          STRONG_CUSTOMER_AUTHENTICATION_DELEGATION = :STRONG_CUSTOMER_AUTHENTICATION_DELEGATION
          TRANSACTION_RISK_ANALYSIS = :TRANSACTION_RISK_ANALYSIS

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Indicates what the outcome of the 3DS authentication process is.
        #
        # @see Lithic::Models::Transaction::CardholderAuthentication#authentication_result
        module AuthenticationResult
          extend Lithic::Enum

          ATTEMPTS = :ATTEMPTS
          DECLINE = :DECLINE
          NONE = :NONE
          SUCCESS = :SUCCESS

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Indicates which party made the 3DS authentication decision.
        #
        # @see Lithic::Models::Transaction::CardholderAuthentication#decision_made_by
        module DecisionMadeBy
          extend Lithic::Enum

          CUSTOMER_ENDPOINT = :CUSTOMER_ENDPOINT
          LITHIC_DEFAULT = :LITHIC_DEFAULT
          LITHIC_RULES = :LITHIC_RULES
          NETWORK = :NETWORK
          UNKNOWN = :UNKNOWN

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
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
        #
        # @see Lithic::Models::Transaction::CardholderAuthentication#liability_shift
        module LiabilityShift
          extend Lithic::Enum

          NUMBER_3DS_AUTHENTICATED = :"3DS_AUTHENTICATED"
          ACQUIRER_EXEMPTION = :ACQUIRER_EXEMPTION
          NONE = :NONE
          TOKEN_AUTHENTICATED = :TOKEN_AUTHENTICATED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Indicates whether a 3DS challenge flow was used, and if so, what the
        #   verification method was. (deprecated, use `authentication_result`)
        #
        # @see Lithic::Models::Transaction::CardholderAuthentication#verification_attempted
        module VerificationAttempted
          extend Lithic::Enum

          NONE = :NONE
          OTHER = :OTHER

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Indicates whether a transaction is considered 3DS authenticated. (deprecated,
        #   use `authentication_result`)
        #
        # @see Lithic::Models::Transaction::CardholderAuthentication#verification_result
        module VerificationResult
          extend Lithic::Enum

          CANCELLED = :CANCELLED
          FAILED = :FAILED
          FRICTIONLESS = :FRICTIONLESS
          NOT_ATTEMPTED = :NOT_ATTEMPTED
          REJECTED = :REJECTED
          SUCCESS = :SUCCESS

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Lithic::Models::Transaction#merchant
      class Merchant < Lithic::BaseModel
        # @!attribute acceptor_id
        #   Unique alphanumeric identifier for the payment card acceptor (merchant).
        #
        #   @return [String]
        required :acceptor_id, String

        # @!attribute acquiring_institution_id
        #   Unique numeric identifier of the acquiring institution.
        #
        #   @return [String]
        required :acquiring_institution_id, String

        # @!attribute city
        #   City of card acceptor. Note that in many cases, particularly in card-not-present
        #     transactions, merchants may send through a phone number or URL in this field.
        #
        #   @return [String]
        required :city, String

        # @!attribute country
        #   Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
        #     alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
        #
        #   @return [String]
        required :country, String

        # @!attribute descriptor
        #   Short description of card acceptor.
        #
        #   @return [String]
        required :descriptor, String

        # @!attribute mcc
        #   Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
        #     used to classify a business by the types of goods or services it provides.
        #
        #   @return [String]
        required :mcc, String

        # @!attribute state
        #   Geographic state of card acceptor.
        #
        #   @return [String]
        required :state, String

        # @!parse
        #   # @param acceptor_id [String]
        #   # @param acquiring_institution_id [String]
        #   # @param city [String]
        #   # @param country [String]
        #   # @param descriptor [String]
        #   # @param mcc [String]
        #   # @param state [String]
        #   #
        #   def initialize(acceptor_id:, acquiring_institution_id:, city:, country:, descriptor:, mcc:, state:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # Card network of the authorization. Can be `INTERLINK`, `MAESTRO`, `MASTERCARD`,
      #   `VISA`, or `UNKNOWN`. Value is `UNKNOWN` when Lithic cannot determine the
      #   network code from the upstream provider.
      #
      # @see Lithic::Models::Transaction#network
      module Network
        extend Lithic::Enum

        INTERLINK = :INTERLINK
        MAESTRO = :MAESTRO
        MASTERCARD = :MASTERCARD
        UNKNOWN = :UNKNOWN
        VISA = :VISA

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Lithic::Models::Transaction#pos
      class Pos < Lithic::BaseModel
        # @!attribute entry_mode
        #
        #   @return [Lithic::Models::Transaction::Pos::EntryMode]
        required :entry_mode, -> { Lithic::Models::Transaction::Pos::EntryMode }

        # @!attribute terminal
        #
        #   @return [Lithic::Models::Transaction::Pos::Terminal]
        required :terminal, -> { Lithic::Models::Transaction::Pos::Terminal }

        # @!parse
        #   # @param entry_mode [Lithic::Models::Transaction::Pos::EntryMode]
        #   # @param terminal [Lithic::Models::Transaction::Pos::Terminal]
        #   #
        #   def initialize(entry_mode:, terminal:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # @see Lithic::Models::Transaction::Pos#entry_mode
        class EntryMode < Lithic::BaseModel
          # @!attribute card
          #   Card presence indicator
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Card]
          required :card, enum: -> { Lithic::Models::Transaction::Pos::EntryMode::Card }

          # @!attribute cardholder
          #   Cardholder presence indicator
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Cardholder]
          required :cardholder, enum: -> { Lithic::Models::Transaction::Pos::EntryMode::Cardholder }

          # @!attribute pan
          #   Method of entry for the PAN
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Pan]
          required :pan, enum: -> { Lithic::Models::Transaction::Pos::EntryMode::Pan }

          # @!attribute pin_entered
          #   Indicates whether the cardholder entered the PIN. True if the PIN was entered.
          #
          #   @return [Boolean]
          required :pin_entered, Lithic::BooleanModel

          # @!parse
          #   # @param card [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Card]
          #   # @param cardholder [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Cardholder]
          #   # @param pan [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Pan]
          #   # @param pin_entered [Boolean]
          #   #
          #   def initialize(card:, cardholder:, pan:, pin_entered:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # Card presence indicator
          #
          # @see Lithic::Models::Transaction::Pos::EntryMode#card
          module Card
            extend Lithic::Enum

            NOT_PRESENT = :NOT_PRESENT
            PREAUTHORIZED = :PREAUTHORIZED
            PRESENT = :PRESENT
            UNKNOWN = :UNKNOWN

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # Cardholder presence indicator
          #
          # @see Lithic::Models::Transaction::Pos::EntryMode#cardholder
          module Cardholder
            extend Lithic::Enum

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # Method of entry for the PAN
          #
          # @see Lithic::Models::Transaction::Pos::EntryMode#pan
          module Pan
            extend Lithic::Enum

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Lithic::Models::Transaction::Pos#terminal
        class Terminal < Lithic::BaseModel
          # @!attribute attended
          #   True if a clerk is present at the sale.
          #
          #   @return [Boolean]
          required :attended, Lithic::BooleanModel

          # @!attribute card_retention_capable
          #   True if the terminal is capable of retaining the card.
          #
          #   @return [Boolean]
          required :card_retention_capable, Lithic::BooleanModel

          # @!attribute on_premise
          #   True if the sale was made at the place of business (vs. mobile).
          #
          #   @return [Boolean]
          required :on_premise, Lithic::BooleanModel

          # @!attribute operator
          #   The person that is designated to swipe the card
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::Terminal::Operator]
          required :operator, enum: -> { Lithic::Models::Transaction::Pos::Terminal::Operator }

          # @!attribute partial_approval_capable
          #   True if the terminal is capable of partial approval. Partial approval is when
          #     part of a transaction is approved and another payment must be used for the
          #     remainder. Example scenario: A $40 transaction is attempted on a prepaid card
          #     with a $25 balance. If partial approval is enabled, $25 can be authorized, at
          #     which point the POS will prompt the user for an additional payment of $15.
          #
          #   @return [Boolean]
          required :partial_approval_capable, Lithic::BooleanModel

          # @!attribute pin_capability
          #   Status of whether the POS is able to accept PINs
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::Terminal::PinCapability]
          required :pin_capability, enum: -> { Lithic::Models::Transaction::Pos::Terminal::PinCapability }

          # @!attribute type
          #   POS Type
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::Terminal::Type]
          required :type, enum: -> { Lithic::Models::Transaction::Pos::Terminal::Type }

          # @!parse
          #   # @param attended [Boolean]
          #   # @param card_retention_capable [Boolean]
          #   # @param on_premise [Boolean]
          #   # @param operator [Symbol, Lithic::Models::Transaction::Pos::Terminal::Operator]
          #   # @param partial_approval_capable [Boolean]
          #   # @param pin_capability [Symbol, Lithic::Models::Transaction::Pos::Terminal::PinCapability]
          #   # @param type [Symbol, Lithic::Models::Transaction::Pos::Terminal::Type]
          #   #
          #   def initialize(
          #     attended:,
          #     card_retention_capable:,
          #     on_premise:,
          #     operator:,
          #     partial_approval_capable:,
          #     pin_capability:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # The person that is designated to swipe the card
          #
          # @see Lithic::Models::Transaction::Pos::Terminal#operator
          module Operator
            extend Lithic::Enum

            ADMINISTRATIVE = :ADMINISTRATIVE
            CARDHOLDER = :CARDHOLDER
            CARD_ACCEPTOR = :CARD_ACCEPTOR
            UNKNOWN = :UNKNOWN

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # Status of whether the POS is able to accept PINs
          #
          # @see Lithic::Models::Transaction::Pos::Terminal#pin_capability
          module PinCapability
            extend Lithic::Enum

            CAPABLE = :CAPABLE
            INOPERATIVE = :INOPERATIVE
            NOT_CAPABLE = :NOT_CAPABLE
            UNSPECIFIED = :UNSPECIFIED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # POS Type
          #
          # @see Lithic::Models::Transaction::Pos::Terminal#type
          module Type
            extend Lithic::Enum

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end

      # @see Lithic::Models::Transaction#result
      module Result
        extend Lithic::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Status of the transaction.
      #
      # @see Lithic::Models::Transaction#status
      module Status
        extend Lithic::Enum

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        SETTLED = :SETTLED
        VOIDED = :VOIDED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Lithic::Models::Transaction#token_info
      class TokenInfo < Lithic::BaseModel
        # @!attribute wallet_type
        #   The wallet_type field will indicate the source of the token. Possible token
        #     sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        #     tokenization, and “other” sources like in-flight commerce. Masterpass is not
        #     currently supported and is included for future use.
        #
        #   @return [Symbol, Lithic::Models::Transaction::TokenInfo::WalletType]
        required :wallet_type, enum: -> { Lithic::Models::Transaction::TokenInfo::WalletType }

        # @!parse
        #   # @param wallet_type [Symbol, Lithic::Models::Transaction::TokenInfo::WalletType]
        #   #
        #   def initialize(wallet_type:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # The wallet_type field will indicate the source of the token. Possible token
        #   sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        #   tokenization, and “other” sources like in-flight commerce. Masterpass is not
        #   currently supported and is included for future use.
        #
        # @see Lithic::Models::Transaction::TokenInfo#wallet_type
        module WalletType
          extend Lithic::Enum

          APPLE_PAY = :APPLE_PAY
          GOOGLE_PAY = :GOOGLE_PAY
          MASTERPASS = :MASTERPASS
          MERCHANT = :MERCHANT
          OTHER = :OTHER
          SAMSUNG_PAY = :SAMSUNG_PAY

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      class Event < Lithic::BaseModel
        # @!attribute token
        #   Transaction event identifier.
        #
        #   @return [String]
        required :token, String

        # @!attribute amount
        #   Amount of the event in the settlement currency.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute amounts
        #
        #   @return [Lithic::Models::Transaction::Event::Amounts]
        required :amounts, -> { Lithic::Models::Transaction::Event::Amounts }

        # @!attribute created
        #   RFC 3339 date and time this event entered the system. UTC time zone.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute detailed_results
        #
        #   @return [Array<Symbol, Lithic::Models::Transaction::Event::DetailedResult>]
        required :detailed_results,
                 -> { Lithic::ArrayOf[enum: Lithic::Models::Transaction::Event::DetailedResult] }

        # @!attribute effective_polarity
        #   Indicates whether the transaction event is a credit or debit to the account.
        #
        #   @return [Symbol, Lithic::Models::Transaction::Event::EffectivePolarity]
        required :effective_polarity, enum: -> { Lithic::Models::Transaction::Event::EffectivePolarity }

        # @!attribute network_info
        #   Information provided by the card network in each event. This includes common
        #     identifiers shared between you, Lithic, the card network and in some cases the
        #     acquirer. These identifiers often link together events within the same
        #     transaction lifecycle and can be used to locate a particular transaction, such
        #     as during processing of disputes. Not all fields are available in all events,
        #     and the presence of these fields is dependent on the card network and the event
        #     type. If the field is populated by the network, we will pass it through as is
        #     unless otherwise specified. Please consult the official network documentation
        #     for more details about these fields and how to use them.
        #
        #   @return [Lithic::Models::Transaction::Event::NetworkInfo, nil]
        required :network_info, -> { Lithic::Models::Transaction::Event::NetworkInfo }, nil?: true

        # @!attribute result
        #
        #   @return [Symbol, Lithic::Models::Transaction::Event::Result]
        required :result, enum: -> { Lithic::Models::Transaction::Event::Result }

        # @!attribute rule_results
        #
        #   @return [Array<Lithic::Models::Transaction::Event::RuleResult>]
        required :rule_results, -> { Lithic::ArrayOf[Lithic::Models::Transaction::Event::RuleResult] }

        # @!attribute type
        #   Type of transaction event
        #
        #   @return [Symbol, Lithic::Models::Transaction::Event::Type]
        required :type, enum: -> { Lithic::Models::Transaction::Event::Type }

        # @!parse
        #   # @param token [String]
        #   # @param amount [Integer]
        #   # @param amounts [Lithic::Models::Transaction::Event::Amounts]
        #   # @param created [Time]
        #   # @param detailed_results [Array<Symbol, Lithic::Models::Transaction::Event::DetailedResult>]
        #   # @param effective_polarity [Symbol, Lithic::Models::Transaction::Event::EffectivePolarity]
        #   # @param network_info [Lithic::Models::Transaction::Event::NetworkInfo, nil]
        #   # @param result [Symbol, Lithic::Models::Transaction::Event::Result]
        #   # @param rule_results [Array<Lithic::Models::Transaction::Event::RuleResult>]
        #   # @param type [Symbol, Lithic::Models::Transaction::Event::Type]
        #   #
        #   def initialize(
        #     token:,
        #     amount:,
        #     amounts:,
        #     created:,
        #     detailed_results:,
        #     effective_polarity:,
        #     network_info:,
        #     result:,
        #     rule_results:,
        #     type:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # @see Lithic::Models::Transaction::Event#amounts
        class Amounts < Lithic::BaseModel
          # @!attribute cardholder
          #
          #   @return [Lithic::Models::Transaction::Event::Amounts::Cardholder]
          required :cardholder, -> { Lithic::Models::Transaction::Event::Amounts::Cardholder }

          # @!attribute merchant
          #
          #   @return [Lithic::Models::Transaction::Event::Amounts::Merchant]
          required :merchant, -> { Lithic::Models::Transaction::Event::Amounts::Merchant }

          # @!attribute settlement
          #
          #   @return [Lithic::Models::Transaction::Event::Amounts::Settlement, nil]
          required :settlement, -> { Lithic::Models::Transaction::Event::Amounts::Settlement }, nil?: true

          # @!parse
          #   # @param cardholder [Lithic::Models::Transaction::Event::Amounts::Cardholder]
          #   # @param merchant [Lithic::Models::Transaction::Event::Amounts::Merchant]
          #   # @param settlement [Lithic::Models::Transaction::Event::Amounts::Settlement, nil]
          #   #
          #   def initialize(cardholder:, merchant:, settlement:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # @see Lithic::Models::Transaction::Event::Amounts#cardholder
          class Cardholder < Lithic::BaseModel
            # @!attribute amount
            #   Amount of the event in the cardholder billing currency.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute conversion_rate
            #   Exchange rate used to convert the merchant amount to the cardholder billing
            #     amount.
            #
            #   @return [String]
            required :conversion_rate, String

            # @!attribute currency
            #   3-character alphabetic ISO 4217 currency
            #
            #   @return [String]
            required :currency, String

            # @!parse
            #   # @param amount [Integer]
            #   # @param conversion_rate [String]
            #   # @param currency [String]
            #   #
            #   def initialize(amount:, conversion_rate:, currency:, **) = super

            # def initialize: (Hash | Lithic::BaseModel) -> void
          end

          # @see Lithic::Models::Transaction::Event::Amounts#merchant
          class Merchant < Lithic::BaseModel
            # @!attribute amount
            #   Amount of the event in the merchant currency.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute currency
            #   3-character alphabetic ISO 4217 currency
            #
            #   @return [String]
            required :currency, String

            # @!parse
            #   # @param amount [Integer]
            #   # @param currency [String]
            #   #
            #   def initialize(amount:, currency:, **) = super

            # def initialize: (Hash | Lithic::BaseModel) -> void
          end

          # @see Lithic::Models::Transaction::Event::Amounts#settlement
          class Settlement < Lithic::BaseModel
            # @!attribute amount
            #   Amount of the event, if it is financial, in the settlement currency.
            #     Non-financial events do not contain this amount because they do not move funds.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute conversion_rate
            #   Exchange rate used to convert the merchant amount to the settlement amount.
            #
            #   @return [String]
            required :conversion_rate, String

            # @!attribute currency
            #   3-character alphabetic ISO 4217 currency
            #
            #   @return [String]
            required :currency, String

            # @!parse
            #   # @param amount [Integer]
            #   # @param conversion_rate [String]
            #   # @param currency [String]
            #   #
            #   def initialize(amount:, conversion_rate:, currency:, **) = super

            # def initialize: (Hash | Lithic::BaseModel) -> void
          end
        end

        module DetailedResult
          extend Lithic::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Indicates whether the transaction event is a credit or debit to the account.
        #
        # @see Lithic::Models::Transaction::Event#effective_polarity
        module EffectivePolarity
          extend Lithic::Enum

          CREDIT = :CREDIT
          DEBIT = :DEBIT

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Lithic::Models::Transaction::Event#network_info
        class NetworkInfo < Lithic::BaseModel
          # @!attribute acquirer
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkInfo::Acquirer, nil]
          required :acquirer, -> { Lithic::Models::Transaction::Event::NetworkInfo::Acquirer }, nil?: true

          # @!attribute mastercard
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkInfo::Mastercard, nil]
          required :mastercard, -> { Lithic::Models::Transaction::Event::NetworkInfo::Mastercard }, nil?: true

          # @!attribute visa
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkInfo::Visa, nil]
          required :visa, -> { Lithic::Models::Transaction::Event::NetworkInfo::Visa }, nil?: true

          # @!parse
          #   # Information provided by the card network in each event. This includes common
          #   #   identifiers shared between you, Lithic, the card network and in some cases the
          #   #   acquirer. These identifiers often link together events within the same
          #   #   transaction lifecycle and can be used to locate a particular transaction, such
          #   #   as during processing of disputes. Not all fields are available in all events,
          #   #   and the presence of these fields is dependent on the card network and the event
          #   #   type. If the field is populated by the network, we will pass it through as is
          #   #   unless otherwise specified. Please consult the official network documentation
          #   #   for more details about these fields and how to use them.
          #   #
          #   # @param acquirer [Lithic::Models::Transaction::Event::NetworkInfo::Acquirer, nil]
          #   # @param mastercard [Lithic::Models::Transaction::Event::NetworkInfo::Mastercard, nil]
          #   # @param visa [Lithic::Models::Transaction::Event::NetworkInfo::Visa, nil]
          #   #
          #   def initialize(acquirer:, mastercard:, visa:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # @see Lithic::Models::Transaction::Event::NetworkInfo#acquirer
          class Acquirer < Lithic::BaseModel
            # @!attribute acquirer_reference_number
            #   Identifier assigned by the acquirer, applicable to dual-message transactions
            #     only. The acquirer reference number (ARN) is only populated once a transaction
            #     has been cleared, and it is not available in all transactions (such as automated
            #     fuel dispenser transactions). A single transaction can contain multiple ARNs if
            #     the merchant sends multiple clearings.
            #
            #   @return [String, nil]
            required :acquirer_reference_number, String, nil?: true

            # @!attribute retrieval_reference_number
            #   Identifier assigned by the acquirer.
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!parse
            #   # @param acquirer_reference_number [String, nil]
            #   # @param retrieval_reference_number [String, nil]
            #   #
            #   def initialize(acquirer_reference_number:, retrieval_reference_number:, **) = super

            # def initialize: (Hash | Lithic::BaseModel) -> void
          end

          # @see Lithic::Models::Transaction::Event::NetworkInfo#mastercard
          class Mastercard < Lithic::BaseModel
            # @!attribute banknet_reference_number
            #   Identifier assigned by Mastercard. Guaranteed by Mastercard to be unique for any
            #     transaction within a specific financial network on any processing day.
            #
            #   @return [String, nil]
            required :banknet_reference_number, String, nil?: true

            # @!attribute original_banknet_reference_number
            #   Identifier assigned by Mastercard. Matches the `banknet_reference_number` of a
            #     prior related event. May be populated in authorization reversals, incremental
            #     authorizations (authorization requests that augment a previously authorized
            #     amount), automated fuel dispenser authorization advices and clearings, and
            #     financial authorizations. If the original banknet reference number contains all
            #     zeroes, then no actual reference number could be found by the network or
            #     acquirer. If Mastercard converts a transaction from dual-message to
            #     single-message, such as for certain ATM transactions, it will populate the
            #     original banknet reference number in the resulting financial authorization with
            #     the banknet reference number of the initial authorization, which Lithic does not
            #     receive.
            #
            #   @return [String, nil]
            required :original_banknet_reference_number, String, nil?: true

            # @!attribute original_switch_serial_number
            #   Identifier assigned by Mastercard. Matches the `switch_serial_number` of a prior
            #     related event. May be populated in returns and return reversals. Applicable to
            #     single-message transactions only.
            #
            #   @return [String, nil]
            required :original_switch_serial_number, String, nil?: true

            # @!attribute switch_serial_number
            #   Identifier assigned by Mastercard, applicable to single-message transactions
            #     only.
            #
            #   @return [String, nil]
            required :switch_serial_number, String, nil?: true

            # @!parse
            #   # @param banknet_reference_number [String, nil]
            #   # @param original_banknet_reference_number [String, nil]
            #   # @param original_switch_serial_number [String, nil]
            #   # @param switch_serial_number [String, nil]
            #   #
            #   def initialize(
            #     banknet_reference_number:,
            #     original_banknet_reference_number:,
            #     original_switch_serial_number:,
            #     switch_serial_number:,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Lithic::BaseModel) -> void
          end

          # @see Lithic::Models::Transaction::Event::NetworkInfo#visa
          class Visa < Lithic::BaseModel
            # @!attribute original_transaction_id
            #   Identifier assigned by Visa. Matches the `transaction_id` of a prior related
            #     event. May be populated in incremental authorizations (authorization requests
            #     that augment a previously authorized amount), authorization advices, financial
            #     authorizations, and clearings.
            #
            #   @return [String, nil]
            required :original_transaction_id, String, nil?: true

            # @!attribute transaction_id
            #   Identifier assigned by Visa to link original messages to subsequent messages.
            #     Guaranteed by Visa to be unique for each original authorization and financial
            #     authorization.
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # @param original_transaction_id [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(original_transaction_id:, transaction_id:, **) = super

            # def initialize: (Hash | Lithic::BaseModel) -> void
          end
        end

        # @see Lithic::Models::Transaction::Event#result
        module Result
          extend Lithic::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class RuleResult < Lithic::BaseModel
          # @!attribute auth_rule_token
          #   The Auth Rule Token associated with the rule from which the decline originated.
          #     If this is set to null, then the decline was not associated with a
          #     customer-configured Auth Rule. This may happen in cases where a transaction is
          #     declined due to a Lithic-configured security or compliance rule, for example.
          #
          #   @return [String, nil]
          required :auth_rule_token, String, nil?: true

          # @!attribute explanation
          #   A human-readable explanation outlining the motivation for the rule's decline.
          #
          #   @return [String, nil]
          required :explanation, String, nil?: true

          # @!attribute name
          #   The name for the rule, if any was configured.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute result
          #   The detailed_result associated with this rule's decline.
          #
          #   @return [Symbol, Lithic::Models::Transaction::Event::RuleResult::Result]
          required :result, enum: -> { Lithic::Models::Transaction::Event::RuleResult::Result }

          # @!parse
          #   # @param auth_rule_token [String, nil]
          #   # @param explanation [String, nil]
          #   # @param name [String, nil]
          #   # @param result [Symbol, Lithic::Models::Transaction::Event::RuleResult::Result]
          #   #
          #   def initialize(auth_rule_token:, explanation:, name:, result:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # The detailed_result associated with this rule's decline.
          #
          # @see Lithic::Models::Transaction::Event::RuleResult#result
          module Result
            extend Lithic::Enum

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # Type of transaction event
        #
        # @see Lithic::Models::Transaction::Event#type
        module Type
          extend Lithic::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
