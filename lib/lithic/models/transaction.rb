# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#retrieve
    class Transaction < Lithic::Internal::Type::BaseModel
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
      #   of the currency. Will be zero if no fee is assessed. Rebates may be transmitted
      #   as a negative value to indicate credited fees.
      #
      #   @return [Integer, nil]
      required :acquirer_fee, Integer, nil?: true

      # @!attribute acquirer_reference_number
      #   @deprecated
      #
      #   Unique identifier assigned to a transaction by the acquirer that can be used in
      #   dispute and chargeback filing. This field has been deprecated in favor of the
      #   `acquirer_reference_number` that resides in the event-level `network_info`.
      #
      #   @return [String, nil]
      required :acquirer_reference_number, String, nil?: true

      # @!attribute amount
      #   @deprecated
      #
      #   When the transaction is pending, this represents the authorization amount of the
      #   transaction in the anticipated settlement currency. Once the transaction has
      #   settled, this field represents the settled amount in the settlement currency.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute amounts
      #
      #   @return [Lithic::Models::Transaction::Amounts]
      required :amounts, -> { Lithic::Transaction::Amounts }

      # @!attribute authorization_amount
      #   @deprecated
      #
      #   The authorization amount of the transaction in the anticipated settlement
      #   currency.
      #
      #   @return [Integer, nil]
      required :authorization_amount, Integer, nil?: true

      # @!attribute authorization_code
      #   A fixed-width 6-digit numeric identifier that can be used to identify a
      #   transaction with networks.
      #
      #   @return [String, nil]
      required :authorization_code, String, nil?: true

      # @!attribute avs
      #
      #   @return [Lithic::Models::Transaction::Avs, nil]
      required :avs, -> { Lithic::Transaction::Avs }, nil?: true

      # @!attribute card_token
      #   Token for the card used in this transaction.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute cardholder_authentication
      #
      #   @return [Lithic::Models::CardholderAuthentication, nil]
      required :cardholder_authentication, -> { Lithic::CardholderAuthentication }, nil?: true

      # @!attribute created
      #   Date and time when the transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute financial_account_token
      #
      #   @return [String, nil]
      required :financial_account_token, String, nil?: true

      # @!attribute merchant
      #
      #   @return [Lithic::Models::Merchant]
      required :merchant, -> { Lithic::Merchant }

      # @!attribute merchant_amount
      #   @deprecated
      #
      #   Analogous to the 'amount', but in the merchant currency.
      #
      #   @return [Integer, nil]
      required :merchant_amount, Integer, nil?: true

      # @!attribute merchant_authorization_amount
      #   @deprecated
      #
      #   Analogous to the 'authorization_amount', but in the merchant currency.
      #
      #   @return [Integer, nil]
      required :merchant_authorization_amount, Integer, nil?: true

      # @!attribute merchant_currency
      #   @deprecated
      #
      #   3-character alphabetic ISO 4217 code for the local currency of the transaction.
      #
      #   @return [String]
      required :merchant_currency, String

      # @!attribute network
      #   Card network of the authorization. Value is `UNKNOWN` when Lithic cannot
      #   determine the network code from the upstream provider.
      #
      #   @return [Symbol, Lithic::Models::Transaction::Network, nil]
      required :network, enum: -> { Lithic::Transaction::Network }, nil?: true

      # @!attribute network_risk_score
      #   Network-provided score assessing risk level associated with a given
      #   authorization. Scores are on a range of 0-999, with 0 representing the lowest
      #   risk and 999 representing the highest risk. For Visa transactions, where the raw
      #   score has a range of 0-99, Lithic will normalize the score by multiplying the
      #   raw score by 10x.
      #
      #   @return [Integer, nil]
      required :network_risk_score, Integer, nil?: true

      # @!attribute pos
      #
      #   @return [Lithic::Models::Transaction::Pos]
      required :pos, -> { Lithic::Transaction::Pos }

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::Transaction::Result]
      required :result, enum: -> { Lithic::Transaction::Result }

      # @!attribute settled_amount
      #   @deprecated
      #
      #   The settled amount of the transaction in the settlement currency.
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #   Status of the transaction.
      #
      #   @return [Symbol, Lithic::Models::Transaction::Status]
      required :status, enum: -> { Lithic::Transaction::Status }

      # @!attribute token_info
      #
      #   @return [Lithic::Models::TokenInfo, nil]
      required :token_info, -> { Lithic::TokenInfo }, nil?: true

      # @!attribute updated
      #   Date and time when the transaction last updated. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute events
      #
      #   @return [Array<Lithic::Models::Transaction::Event>, nil]
      optional :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Transaction::Event] }

      # @!method initialize(token:, account_token:, acquirer_fee:, acquirer_reference_number:, amount:, amounts:, authorization_amount:, authorization_code:, avs:, card_token:, cardholder_authentication:, created:, financial_account_token:, merchant:, merchant_amount:, merchant_authorization_amount:, merchant_currency:, network:, network_risk_score:, pos:, result:, settled_amount:, status:, token_info:, updated:, events: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::Transaction} for more details.
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param account_token [String] The token for the account associated with this transaction.
      #
      #   @param acquirer_fee [Integer, nil] Fee assessed by the merchant and paid for by the cardholder in the smallest unit
      #
      #   @param acquirer_reference_number [String, nil] Unique identifier assigned to a transaction by the acquirer that can be used in
      #
      #   @param amount [Integer] When the transaction is pending, this represents the authorization amount of the
      #
      #   @param amounts [Lithic::Models::Transaction::Amounts]
      #
      #   @param authorization_amount [Integer, nil] The authorization amount of the transaction in the anticipated settlement curren
      #
      #   @param authorization_code [String, nil] A fixed-width 6-digit numeric identifier that can be used to identify a transact
      #
      #   @param avs [Lithic::Models::Transaction::Avs, nil]
      #
      #   @param card_token [String] Token for the card used in this transaction.
      #
      #   @param cardholder_authentication [Lithic::Models::CardholderAuthentication, nil]
      #
      #   @param created [Time] Date and time when the transaction first occurred. UTC time zone.
      #
      #   @param financial_account_token [String, nil]
      #
      #   @param merchant [Lithic::Models::Merchant]
      #
      #   @param merchant_amount [Integer, nil] Analogous to the 'amount', but in the merchant currency.
      #
      #   @param merchant_authorization_amount [Integer, nil] Analogous to the 'authorization_amount', but in the merchant currency.
      #
      #   @param merchant_currency [String] 3-character alphabetic ISO 4217 code for the local currency of the transaction.
      #
      #   @param network [Symbol, Lithic::Models::Transaction::Network, nil] Card network of the authorization. Value is `UNKNOWN` when Lithic cannot determi
      #
      #   @param network_risk_score [Integer, nil] Network-provided score assessing risk level associated with a given authorizatio
      #
      #   @param pos [Lithic::Models::Transaction::Pos]
      #
      #   @param result [Symbol, Lithic::Models::Transaction::Result]
      #
      #   @param settled_amount [Integer] The settled amount of the transaction in the settlement currency.
      #
      #   @param status [Symbol, Lithic::Models::Transaction::Status] Status of the transaction.
      #
      #   @param token_info [Lithic::Models::TokenInfo, nil]
      #
      #   @param updated [Time] Date and time when the transaction last updated. UTC time zone.
      #
      #   @param events [Array<Lithic::Models::Transaction::Event>]

      # @see Lithic::Models::Transaction#amounts
      class Amounts < Lithic::Internal::Type::BaseModel
        # @!attribute cardholder
        #
        #   @return [Lithic::Models::Transaction::Amounts::Cardholder]
        required :cardholder, -> { Lithic::Transaction::Amounts::Cardholder }

        # @!attribute hold
        #
        #   @return [Lithic::Models::Transaction::Amounts::Hold]
        required :hold, -> { Lithic::Transaction::Amounts::Hold }

        # @!attribute merchant
        #
        #   @return [Lithic::Models::Transaction::Amounts::Merchant]
        required :merchant, -> { Lithic::Transaction::Amounts::Merchant }

        # @!attribute settlement
        #
        #   @return [Lithic::Models::Transaction::Amounts::Settlement]
        required :settlement, -> { Lithic::Transaction::Amounts::Settlement }

        # @!method initialize(cardholder:, hold:, merchant:, settlement:)
        #   @param cardholder [Lithic::Models::Transaction::Amounts::Cardholder]
        #   @param hold [Lithic::Models::Transaction::Amounts::Hold]
        #   @param merchant [Lithic::Models::Transaction::Amounts::Merchant]
        #   @param settlement [Lithic::Models::Transaction::Amounts::Settlement]

        # @see Lithic::Models::Transaction::Amounts#cardholder
        class Cardholder < Lithic::Internal::Type::BaseModel
          # @!attribute amount
          #   The estimated settled amount of the transaction in the cardholder billing
          #   currency.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute conversion_rate
          #   The exchange rate used to convert the merchant amount to the cardholder billing
          #   amount.
          #
          #   @return [String]
          required :conversion_rate, String

          # @!attribute currency
          #   3-character alphabetic ISO 4217 currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(amount:, conversion_rate:, currency:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::Transaction::Amounts::Cardholder} for more details.
          #
          #   @param amount [Integer] The estimated settled amount of the transaction in the cardholder billing curren
          #
          #   @param conversion_rate [String] The exchange rate used to convert the merchant amount to the cardholder billing
          #
          #   @param currency [String] 3-character alphabetic ISO 4217 currency
        end

        # @see Lithic::Models::Transaction::Amounts#hold
        class Hold < Lithic::Internal::Type::BaseModel
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

          # @!method initialize(amount:, currency:)
          #   @param amount [Integer] The pending amount of the transaction in the anticipated settlement currency.
          #
          #   @param currency [String] 3-character alphabetic ISO 4217 currency
        end

        # @see Lithic::Models::Transaction::Amounts#merchant
        class Merchant < Lithic::Internal::Type::BaseModel
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

          # @!method initialize(amount:, currency:)
          #   @param amount [Integer] The settled amount of the transaction in the merchant currency.
          #
          #   @param currency [String] 3-character alphabetic ISO 4217 currency
        end

        # @see Lithic::Models::Transaction::Amounts#settlement
        class Settlement < Lithic::Internal::Type::BaseModel
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

          # @!method initialize(amount:, currency:)
          #   @param amount [Integer] The settled amount of the transaction in the settlement currency.
          #
          #   @param currency [String] 3-character alphabetic ISO 4217 currency
        end
      end

      # @see Lithic::Models::Transaction#avs
      class Avs < Lithic::Internal::Type::BaseModel
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

        # @!method initialize(address:, zipcode:)
        #   @param address [String] Cardholder address
        #
        #   @param zipcode [String] Cardholder ZIP code
      end

      # Card network of the authorization. Value is `UNKNOWN` when Lithic cannot
      # determine the network code from the upstream provider.
      #
      # @see Lithic::Models::Transaction#network
      module Network
        extend Lithic::Internal::Type::Enum

        AMEX = :AMEX
        INTERLINK = :INTERLINK
        MAESTRO = :MAESTRO
        MASTERCARD = :MASTERCARD
        UNKNOWN = :UNKNOWN
        VISA = :VISA

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::Transaction#pos
      class Pos < Lithic::Internal::Type::BaseModel
        # @!attribute entry_mode
        #
        #   @return [Lithic::Models::Transaction::Pos::EntryMode]
        required :entry_mode, -> { Lithic::Transaction::Pos::EntryMode }

        # @!attribute terminal
        #
        #   @return [Lithic::Models::Transaction::Pos::Terminal]
        required :terminal, -> { Lithic::Transaction::Pos::Terminal }

        # @!method initialize(entry_mode:, terminal:)
        #   @param entry_mode [Lithic::Models::Transaction::Pos::EntryMode]
        #   @param terminal [Lithic::Models::Transaction::Pos::Terminal]

        # @see Lithic::Models::Transaction::Pos#entry_mode
        class EntryMode < Lithic::Internal::Type::BaseModel
          # @!attribute card
          #   Card presence indicator
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Card]
          required :card, enum: -> { Lithic::Transaction::Pos::EntryMode::Card }

          # @!attribute cardholder
          #   Cardholder presence indicator
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Cardholder]
          required :cardholder, enum: -> { Lithic::Transaction::Pos::EntryMode::Cardholder }

          # @!attribute pan
          #   Method of entry for the PAN
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Pan]
          required :pan, enum: -> { Lithic::Transaction::Pos::EntryMode::Pan }

          # @!attribute pin_entered
          #   Indicates whether the cardholder entered the PIN. True if the PIN was entered.
          #
          #   @return [Boolean]
          required :pin_entered, Lithic::Internal::Type::Boolean

          # @!method initialize(card:, cardholder:, pan:, pin_entered:)
          #   @param card [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Card] Card presence indicator
          #
          #   @param cardholder [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Cardholder] Cardholder presence indicator
          #
          #   @param pan [Symbol, Lithic::Models::Transaction::Pos::EntryMode::Pan] Method of entry for the PAN
          #
          #   @param pin_entered [Boolean] Indicates whether the cardholder entered the PIN. True if the PIN was entered.

          # Card presence indicator
          #
          # @see Lithic::Models::Transaction::Pos::EntryMode#card
          module Card
            extend Lithic::Internal::Type::Enum

            NOT_PRESENT = :NOT_PRESENT
            PREAUTHORIZED = :PREAUTHORIZED
            PRESENT = :PRESENT
            UNKNOWN = :UNKNOWN

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Cardholder presence indicator
          #
          # @see Lithic::Models::Transaction::Pos::EntryMode#cardholder
          module Cardholder
            extend Lithic::Internal::Type::Enum

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

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Method of entry for the PAN
          #
          # @see Lithic::Models::Transaction::Pos::EntryMode#pan
          module Pan
            extend Lithic::Internal::Type::Enum

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

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::Transaction::Pos#terminal
        class Terminal < Lithic::Internal::Type::BaseModel
          # @!attribute attended
          #   True if a clerk is present at the sale.
          #
          #   @return [Boolean]
          required :attended, Lithic::Internal::Type::Boolean

          # @!attribute card_retention_capable
          #   True if the terminal is capable of retaining the card.
          #
          #   @return [Boolean]
          required :card_retention_capable, Lithic::Internal::Type::Boolean

          # @!attribute on_premise
          #   True if the sale was made at the place of business (vs. mobile).
          #
          #   @return [Boolean]
          required :on_premise, Lithic::Internal::Type::Boolean

          # @!attribute operator
          #   The person that is designated to swipe the card
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::Terminal::Operator]
          required :operator, enum: -> { Lithic::Transaction::Pos::Terminal::Operator }

          # @!attribute partial_approval_capable
          #   True if the terminal is capable of partial approval. Partial approval is when
          #   part of a transaction is approved and another payment must be used for the
          #   remainder. Example scenario: A $40 transaction is attempted on a prepaid card
          #   with a $25 balance. If partial approval is enabled, $25 can be authorized, at
          #   which point the POS will prompt the user for an additional payment of $15.
          #
          #   @return [Boolean]
          required :partial_approval_capable, Lithic::Internal::Type::Boolean

          # @!attribute pin_capability
          #   Status of whether the POS is able to accept PINs
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::Terminal::PinCapability]
          required :pin_capability, enum: -> { Lithic::Transaction::Pos::Terminal::PinCapability }

          # @!attribute type
          #   POS Type
          #
          #   @return [Symbol, Lithic::Models::Transaction::Pos::Terminal::Type]
          required :type, enum: -> { Lithic::Transaction::Pos::Terminal::Type }

          # @!attribute acceptor_terminal_id
          #   Uniquely identifies a terminal at the card acceptor location of acquiring
          #   institutions or merchant POS Systems
          #
          #   @return [String, nil]
          optional :acceptor_terminal_id, String, nil?: true

          # @!method initialize(attended:, card_retention_capable:, on_premise:, operator:, partial_approval_capable:, pin_capability:, type:, acceptor_terminal_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::Transaction::Pos::Terminal} for more details.
          #
          #   @param attended [Boolean] True if a clerk is present at the sale.
          #
          #   @param card_retention_capable [Boolean] True if the terminal is capable of retaining the card.
          #
          #   @param on_premise [Boolean] True if the sale was made at the place of business (vs. mobile).
          #
          #   @param operator [Symbol, Lithic::Models::Transaction::Pos::Terminal::Operator] The person that is designated to swipe the card
          #
          #   @param partial_approval_capable [Boolean] True if the terminal is capable of partial approval. Partial approval is when pa
          #
          #   @param pin_capability [Symbol, Lithic::Models::Transaction::Pos::Terminal::PinCapability] Status of whether the POS is able to accept PINs
          #
          #   @param type [Symbol, Lithic::Models::Transaction::Pos::Terminal::Type] POS Type
          #
          #   @param acceptor_terminal_id [String, nil] Uniquely identifies a terminal at the card acceptor location of acquiring instit

          # The person that is designated to swipe the card
          #
          # @see Lithic::Models::Transaction::Pos::Terminal#operator
          module Operator
            extend Lithic::Internal::Type::Enum

            ADMINISTRATIVE = :ADMINISTRATIVE
            CARDHOLDER = :CARDHOLDER
            CARD_ACCEPTOR = :CARD_ACCEPTOR
            UNKNOWN = :UNKNOWN

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Status of whether the POS is able to accept PINs
          #
          # @see Lithic::Models::Transaction::Pos::Terminal#pin_capability
          module PinCapability
            extend Lithic::Internal::Type::Enum

            CAPABLE = :CAPABLE
            INOPERATIVE = :INOPERATIVE
            NOT_CAPABLE = :NOT_CAPABLE
            UNSPECIFIED = :UNSPECIFIED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # POS Type
          #
          # @see Lithic::Models::Transaction::Pos::Terminal#type
          module Type
            extend Lithic::Internal::Type::Enum

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

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see Lithic::Models::Transaction#result
      module Result
        extend Lithic::Internal::Type::Enum

        ACCOUNT_PAUSED = :ACCOUNT_PAUSED
        ACCOUNT_STATE_TRANSACTION_FAIL = :ACCOUNT_STATE_TRANSACTION_FAIL
        APPROVED = :APPROVED
        BANK_CONNECTION_ERROR = :BANK_CONNECTION_ERROR
        BANK_NOT_VERIFIED = :BANK_NOT_VERIFIED
        CARD_CLOSED = :CARD_CLOSED
        CARD_PAUSED = :CARD_PAUSED
        DECLINED = :DECLINED
        FRAUD_ADVICE = :FRAUD_ADVICE
        IGNORED_TTL_EXPIRY = :IGNORED_TTL_EXPIRY
        SUSPECTED_FRAUD = :SUSPECTED_FRAUD
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the transaction.
      #
      # @see Lithic::Models::Transaction#status
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        SETTLED = :SETTLED
        VOIDED = :VOIDED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Event < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Transaction event identifier.
        #
        #   @return [String]
        required :token, String

        # @!attribute amount
        #   @deprecated
        #
        #   Amount of the event in the settlement currency.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute amounts
        #
        #   @return [Lithic::Models::Transaction::Event::Amounts]
        required :amounts, -> { Lithic::Transaction::Event::Amounts }

        # @!attribute created
        #   RFC 3339 date and time this event entered the system. UTC time zone.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute detailed_results
        #
        #   @return [Array<Symbol, Lithic::Models::Transaction::Event::DetailedResult>]
        required :detailed_results,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Transaction::Event::DetailedResult] }

        # @!attribute effective_polarity
        #   Indicates whether the transaction event is a credit or debit to the account.
        #
        #   @return [Symbol, Lithic::Models::Transaction::Event::EffectivePolarity]
        required :effective_polarity, enum: -> { Lithic::Transaction::Event::EffectivePolarity }

        # @!attribute network_info
        #   Information provided by the card network in each event. This includes common
        #   identifiers shared between you, Lithic, the card network and in some cases the
        #   acquirer. These identifiers often link together events within the same
        #   transaction lifecycle and can be used to locate a particular transaction, such
        #   as during processing of disputes. Not all fields are available in all events,
        #   and the presence of these fields is dependent on the card network and the event
        #   type. If the field is populated by the network, we will pass it through as is
        #   unless otherwise specified. Please consult the official network documentation
        #   for more details about these fields and how to use them.
        #
        #   @return [Lithic::Models::Transaction::Event::NetworkInfo, nil]
        required :network_info, -> { Lithic::Transaction::Event::NetworkInfo }, nil?: true

        # @!attribute result
        #
        #   @return [Symbol, Lithic::Models::Transaction::Event::Result]
        required :result, enum: -> { Lithic::Transaction::Event::Result }

        # @!attribute rule_results
        #
        #   @return [Array<Lithic::Models::Transaction::Event::RuleResult>]
        required :rule_results, -> { Lithic::Internal::Type::ArrayOf[Lithic::Transaction::Event::RuleResult] }

        # @!attribute type
        #   Type of transaction event
        #
        #   @return [Symbol, Lithic::Models::Transaction::Event::Type]
        required :type, enum: -> { Lithic::Transaction::Event::Type }

        # @!attribute account_type
        #
        #   @return [Symbol, Lithic::Models::Transaction::Event::AccountType, nil]
        optional :account_type, enum: -> { Lithic::Transaction::Event::AccountType }

        # @!attribute network_specific_data
        #
        #   @return [Lithic::Models::Transaction::Event::NetworkSpecificData, nil]
        optional :network_specific_data, -> { Lithic::Transaction::Event::NetworkSpecificData }

        # @!method initialize(token:, amount:, amounts:, created:, detailed_results:, effective_polarity:, network_info:, result:, rule_results:, type:, account_type: nil, network_specific_data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Transaction::Event} for more details.
        #
        #   @param token [String] Transaction event identifier.
        #
        #   @param amount [Integer] Amount of the event in the settlement currency.
        #
        #   @param amounts [Lithic::Models::Transaction::Event::Amounts]
        #
        #   @param created [Time] RFC 3339 date and time this event entered the system. UTC time zone.
        #
        #   @param detailed_results [Array<Symbol, Lithic::Models::Transaction::Event::DetailedResult>]
        #
        #   @param effective_polarity [Symbol, Lithic::Models::Transaction::Event::EffectivePolarity] Indicates whether the transaction event is a credit or debit to the account.
        #
        #   @param network_info [Lithic::Models::Transaction::Event::NetworkInfo, nil] Information provided by the card network in each event. This includes common ide
        #
        #   @param result [Symbol, Lithic::Models::Transaction::Event::Result]
        #
        #   @param rule_results [Array<Lithic::Models::Transaction::Event::RuleResult>]
        #
        #   @param type [Symbol, Lithic::Models::Transaction::Event::Type] Type of transaction event
        #
        #   @param account_type [Symbol, Lithic::Models::Transaction::Event::AccountType]
        #
        #   @param network_specific_data [Lithic::Models::Transaction::Event::NetworkSpecificData]

        # @see Lithic::Models::Transaction::Event#amounts
        class Amounts < Lithic::Internal::Type::BaseModel
          # @!attribute cardholder
          #
          #   @return [Lithic::Models::Transaction::Event::Amounts::Cardholder]
          required :cardholder, -> { Lithic::Transaction::Event::Amounts::Cardholder }

          # @!attribute merchant
          #
          #   @return [Lithic::Models::Transaction::Event::Amounts::Merchant]
          required :merchant, -> { Lithic::Transaction::Event::Amounts::Merchant }

          # @!attribute settlement
          #
          #   @return [Lithic::Models::Transaction::Event::Amounts::Settlement, nil]
          required :settlement, -> { Lithic::Transaction::Event::Amounts::Settlement }, nil?: true

          # @!method initialize(cardholder:, merchant:, settlement:)
          #   @param cardholder [Lithic::Models::Transaction::Event::Amounts::Cardholder]
          #   @param merchant [Lithic::Models::Transaction::Event::Amounts::Merchant]
          #   @param settlement [Lithic::Models::Transaction::Event::Amounts::Settlement, nil]

          # @see Lithic::Models::Transaction::Event::Amounts#cardholder
          class Cardholder < Lithic::Internal::Type::BaseModel
            # @!attribute amount
            #   Amount of the event in the cardholder billing currency.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute conversion_rate
            #   Exchange rate used to convert the merchant amount to the cardholder billing
            #   amount.
            #
            #   @return [String]
            required :conversion_rate, String

            # @!attribute currency
            #   3-character alphabetic ISO 4217 currency
            #
            #   @return [String]
            required :currency, String

            # @!method initialize(amount:, conversion_rate:, currency:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transaction::Event::Amounts::Cardholder} for more details.
            #
            #   @param amount [Integer] Amount of the event in the cardholder billing currency.
            #
            #   @param conversion_rate [String] Exchange rate used to convert the merchant amount to the cardholder billing amou
            #
            #   @param currency [String] 3-character alphabetic ISO 4217 currency
          end

          # @see Lithic::Models::Transaction::Event::Amounts#merchant
          class Merchant < Lithic::Internal::Type::BaseModel
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

            # @!method initialize(amount:, currency:)
            #   @param amount [Integer] Amount of the event in the merchant currency.
            #
            #   @param currency [String] 3-character alphabetic ISO 4217 currency
          end

          # @see Lithic::Models::Transaction::Event::Amounts#settlement
          class Settlement < Lithic::Internal::Type::BaseModel
            # @!attribute amount
            #   Amount of the event, if it is financial, in the settlement currency.
            #   Non-financial events do not contain this amount because they do not move funds.
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

            # @!method initialize(amount:, conversion_rate:, currency:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transaction::Event::Amounts::Settlement} for more details.
            #
            #   @param amount [Integer] Amount of the event, if it is financial, in the settlement currency. Non-financi
            #
            #   @param conversion_rate [String] Exchange rate used to convert the merchant amount to the settlement amount.
            #
            #   @param currency [String] 3-character alphabetic ISO 4217 currency
          end
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED
          ACCOUNT_DELINQUENT = :ACCOUNT_DELINQUENT
          ACCOUNT_INACTIVE = :ACCOUNT_INACTIVE
          ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED = :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED
          ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED
          ACCOUNT_PAUSED = :ACCOUNT_PAUSED
          ACCOUNT_UNDER_REVIEW = :ACCOUNT_UNDER_REVIEW
          ADDRESS_INCORRECT = :ADDRESS_INCORRECT
          APPROVED = :APPROVED
          AUTH_RULE_ALLOWED_COUNTRY = :AUTH_RULE_ALLOWED_COUNTRY
          AUTH_RULE_ALLOWED_MCC = :AUTH_RULE_ALLOWED_MCC
          AUTH_RULE_BLOCKED_COUNTRY = :AUTH_RULE_BLOCKED_COUNTRY
          AUTH_RULE_BLOCKED_MCC = :AUTH_RULE_BLOCKED_MCC
          AUTH_RULE = :AUTH_RULE
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
          SUSPECTED_FRAUD = :SUSPECTED_FRAUD
          TRANSACTION_INVALID = :TRANSACTION_INVALID
          TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL = :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL
          TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER = :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER
          TRANSACTION_PREVIOUSLY_COMPLETED = :TRANSACTION_PREVIOUSLY_COMPLETED
          UNAUTHORIZED_MERCHANT = :UNAUTHORIZED_MERCHANT
          VEHICLE_NUMBER_INVALID = :VEHICLE_NUMBER_INVALID
          CARDHOLDER_CHALLENGED = :CARDHOLDER_CHALLENGED
          CARDHOLDER_CHALLENGE_FAILED = :CARDHOLDER_CHALLENGE_FAILED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates whether the transaction event is a credit or debit to the account.
        #
        # @see Lithic::Models::Transaction::Event#effective_polarity
        module EffectivePolarity
          extend Lithic::Internal::Type::Enum

          CREDIT = :CREDIT
          DEBIT = :DEBIT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::Transaction::Event#network_info
        class NetworkInfo < Lithic::Internal::Type::BaseModel
          # @!attribute acquirer
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkInfo::Acquirer, nil]
          required :acquirer, -> { Lithic::Transaction::Event::NetworkInfo::Acquirer }, nil?: true

          # @!attribute amex
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkInfo::Amex, nil]
          required :amex, -> { Lithic::Transaction::Event::NetworkInfo::Amex }, nil?: true

          # @!attribute mastercard
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkInfo::Mastercard, nil]
          required :mastercard, -> { Lithic::Transaction::Event::NetworkInfo::Mastercard }, nil?: true

          # @!attribute visa
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkInfo::Visa, nil]
          required :visa, -> { Lithic::Transaction::Event::NetworkInfo::Visa }, nil?: true

          # @!method initialize(acquirer:, amex:, mastercard:, visa:)
          #   Information provided by the card network in each event. This includes common
          #   identifiers shared between you, Lithic, the card network and in some cases the
          #   acquirer. These identifiers often link together events within the same
          #   transaction lifecycle and can be used to locate a particular transaction, such
          #   as during processing of disputes. Not all fields are available in all events,
          #   and the presence of these fields is dependent on the card network and the event
          #   type. If the field is populated by the network, we will pass it through as is
          #   unless otherwise specified. Please consult the official network documentation
          #   for more details about these fields and how to use them.
          #
          #   @param acquirer [Lithic::Models::Transaction::Event::NetworkInfo::Acquirer, nil]
          #   @param amex [Lithic::Models::Transaction::Event::NetworkInfo::Amex, nil]
          #   @param mastercard [Lithic::Models::Transaction::Event::NetworkInfo::Mastercard, nil]
          #   @param visa [Lithic::Models::Transaction::Event::NetworkInfo::Visa, nil]

          # @see Lithic::Models::Transaction::Event::NetworkInfo#acquirer
          class Acquirer < Lithic::Internal::Type::BaseModel
            # @!attribute acquirer_reference_number
            #   Identifier assigned by the acquirer, applicable to dual-message transactions
            #   only. The acquirer reference number (ARN) is only populated once a transaction
            #   has been cleared, and it is not available in all transactions (such as automated
            #   fuel dispenser transactions). A single transaction can contain multiple ARNs if
            #   the merchant sends multiple clearings.
            #
            #   @return [String, nil]
            required :acquirer_reference_number, String, nil?: true

            # @!attribute retrieval_reference_number
            #   Identifier assigned by the acquirer.
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!method initialize(acquirer_reference_number:, retrieval_reference_number:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transaction::Event::NetworkInfo::Acquirer} for more details.
            #
            #   @param acquirer_reference_number [String, nil] Identifier assigned by the acquirer, applicable to dual-message transactions onl
            #
            #   @param retrieval_reference_number [String, nil] Identifier assigned by the acquirer.
          end

          # @see Lithic::Models::Transaction::Event::NetworkInfo#amex
          class Amex < Lithic::Internal::Type::BaseModel
            # @!attribute original_transaction_id
            #   Identifier assigned by American Express. Matches the `transaction_id` of a prior
            #   related event. May be populated in incremental authorizations (authorization
            #   requests that augment a previously authorized amount), authorization advices,
            #   financial authorizations, and clearings.
            #
            #   @return [String, nil]
            required :original_transaction_id, String, nil?: true

            # @!attribute transaction_id
            #   Identifier assigned by American Express to link original messages to subsequent
            #   messages. Guaranteed by American Express to be unique for each original
            #   authorization and financial authorization.
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!method initialize(original_transaction_id:, transaction_id:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transaction::Event::NetworkInfo::Amex} for more details.
            #
            #   @param original_transaction_id [String, nil] Identifier assigned by American Express. Matches the `transaction_id` of a prior
            #
            #   @param transaction_id [String, nil] Identifier assigned by American Express to link original messages to subsequent
          end

          # @see Lithic::Models::Transaction::Event::NetworkInfo#mastercard
          class Mastercard < Lithic::Internal::Type::BaseModel
            # @!attribute banknet_reference_number
            #   Identifier assigned by Mastercard. Guaranteed by Mastercard to be unique for any
            #   transaction within a specific financial network on any processing day.
            #
            #   @return [String, nil]
            required :banknet_reference_number, String, nil?: true

            # @!attribute original_banknet_reference_number
            #   Identifier assigned by Mastercard. Matches the `banknet_reference_number` of a
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
            #
            #   @return [String, nil]
            required :original_banknet_reference_number, String, nil?: true

            # @!attribute original_switch_serial_number
            #   Identifier assigned by Mastercard. Matches the `switch_serial_number` of a prior
            #   related event. May be populated in returns and return reversals. Applicable to
            #   single-message transactions only.
            #
            #   @return [String, nil]
            required :original_switch_serial_number, String, nil?: true

            # @!attribute switch_serial_number
            #   Identifier assigned by Mastercard, applicable to single-message transactions
            #   only.
            #
            #   @return [String, nil]
            required :switch_serial_number, String, nil?: true

            # @!method initialize(banknet_reference_number:, original_banknet_reference_number:, original_switch_serial_number:, switch_serial_number:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transaction::Event::NetworkInfo::Mastercard} for more details.
            #
            #   @param banknet_reference_number [String, nil] Identifier assigned by Mastercard. Guaranteed by Mastercard to be unique for any
            #
            #   @param original_banknet_reference_number [String, nil] Identifier assigned by Mastercard. Matches the `banknet_reference_number` of a p
            #
            #   @param original_switch_serial_number [String, nil] Identifier assigned by Mastercard. Matches the `switch_serial_number` of a prior
            #
            #   @param switch_serial_number [String, nil] Identifier assigned by Mastercard, applicable to single-message transactions onl
          end

          # @see Lithic::Models::Transaction::Event::NetworkInfo#visa
          class Visa < Lithic::Internal::Type::BaseModel
            # @!attribute original_transaction_id
            #   Identifier assigned by Visa. Matches the `transaction_id` of a prior related
            #   event. May be populated in incremental authorizations (authorization requests
            #   that augment a previously authorized amount), authorization advices, financial
            #   authorizations, and clearings.
            #
            #   @return [String, nil]
            required :original_transaction_id, String, nil?: true

            # @!attribute transaction_id
            #   Identifier assigned by Visa to link original messages to subsequent messages.
            #   Guaranteed by Visa to be unique for each original authorization and financial
            #   authorization.
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!method initialize(original_transaction_id:, transaction_id:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transaction::Event::NetworkInfo::Visa} for more details.
            #
            #   @param original_transaction_id [String, nil] Identifier assigned by Visa. Matches the `transaction_id` of a prior related eve
            #
            #   @param transaction_id [String, nil] Identifier assigned by Visa to link original messages to subsequent messages. Gu
          end
        end

        # @see Lithic::Models::Transaction::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          ACCOUNT_PAUSED = :ACCOUNT_PAUSED
          ACCOUNT_STATE_TRANSACTION_FAIL = :ACCOUNT_STATE_TRANSACTION_FAIL
          APPROVED = :APPROVED
          BANK_CONNECTION_ERROR = :BANK_CONNECTION_ERROR
          BANK_NOT_VERIFIED = :BANK_NOT_VERIFIED
          CARD_CLOSED = :CARD_CLOSED
          CARD_PAUSED = :CARD_PAUSED
          DECLINED = :DECLINED
          FRAUD_ADVICE = :FRAUD_ADVICE
          IGNORED_TTL_EXPIRY = :IGNORED_TTL_EXPIRY
          SUSPECTED_FRAUD = :SUSPECTED_FRAUD
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

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class RuleResult < Lithic::Internal::Type::BaseModel
          # @!attribute auth_rule_token
          #   The Auth Rule Token associated with the rule from which the decline originated.
          #   If this is set to null, then the decline was not associated with a
          #   customer-configured Auth Rule. This may happen in cases where a transaction is
          #   declined due to a Lithic-configured security or compliance rule, for example.
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
          required :result, enum: -> { Lithic::Transaction::Event::RuleResult::Result }

          # @!method initialize(auth_rule_token:, explanation:, name:, result:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::Transaction::Event::RuleResult} for more details.
          #
          #   @param auth_rule_token [String, nil] The Auth Rule Token associated with the rule from which the decline originated.
          #
          #   @param explanation [String, nil] A human-readable explanation outlining the motivation for the rule's decline.
          #
          #   @param name [String, nil] The name for the rule, if any was configured.
          #
          #   @param result [Symbol, Lithic::Models::Transaction::Event::RuleResult::Result] The detailed_result associated with this rule's decline.

          # The detailed_result associated with this rule's decline.
          #
          # @see Lithic::Models::Transaction::Event::RuleResult#result
          module Result
            extend Lithic::Internal::Type::Enum

            ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED
            ACCOUNT_DELINQUENT = :ACCOUNT_DELINQUENT
            ACCOUNT_INACTIVE = :ACCOUNT_INACTIVE
            ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED = :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED
            ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED
            ACCOUNT_PAUSED = :ACCOUNT_PAUSED
            ACCOUNT_UNDER_REVIEW = :ACCOUNT_UNDER_REVIEW
            ADDRESS_INCORRECT = :ADDRESS_INCORRECT
            APPROVED = :APPROVED
            AUTH_RULE_ALLOWED_COUNTRY = :AUTH_RULE_ALLOWED_COUNTRY
            AUTH_RULE_ALLOWED_MCC = :AUTH_RULE_ALLOWED_MCC
            AUTH_RULE_BLOCKED_COUNTRY = :AUTH_RULE_BLOCKED_COUNTRY
            AUTH_RULE_BLOCKED_MCC = :AUTH_RULE_BLOCKED_MCC
            AUTH_RULE = :AUTH_RULE
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
            SUSPECTED_FRAUD = :SUSPECTED_FRAUD
            TRANSACTION_INVALID = :TRANSACTION_INVALID
            TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL = :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL
            TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER = :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER
            TRANSACTION_PREVIOUSLY_COMPLETED = :TRANSACTION_PREVIOUSLY_COMPLETED
            UNAUTHORIZED_MERCHANT = :UNAUTHORIZED_MERCHANT
            VEHICLE_NUMBER_INVALID = :VEHICLE_NUMBER_INVALID
            CARDHOLDER_CHALLENGED = :CARDHOLDER_CHALLENGED
            CARDHOLDER_CHALLENGE_FAILED = :CARDHOLDER_CHALLENGE_FAILED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Type of transaction event
        #
        # @see Lithic::Models::Transaction::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

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

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::Transaction::Event#account_type
        module AccountType
          extend Lithic::Internal::Type::Enum

          CHECKING = :CHECKING
          SAVINGS = :SAVINGS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::Transaction::Event#network_specific_data
        class NetworkSpecificData < Lithic::Internal::Type::BaseModel
          # @!attribute mastercard
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkSpecificData::Mastercard]
          required :mastercard, -> { Lithic::Transaction::Event::NetworkSpecificData::Mastercard }

          # @!attribute visa
          #
          #   @return [Lithic::Models::Transaction::Event::NetworkSpecificData::Visa]
          required :visa, -> { Lithic::Transaction::Event::NetworkSpecificData::Visa }

          # @!method initialize(mastercard:, visa:)
          #   @param mastercard [Lithic::Models::Transaction::Event::NetworkSpecificData::Mastercard]
          #   @param visa [Lithic::Models::Transaction::Event::NetworkSpecificData::Visa]

          # @see Lithic::Models::Transaction::Event::NetworkSpecificData#mastercard
          class Mastercard < Lithic::Internal::Type::BaseModel
            # @!attribute ecommerce_security_level_indicator
            #   Indicates the electronic commerce security level and UCAF collection.
            #
            #   @return [String, nil]
            required :ecommerce_security_level_indicator, String, nil?: true

            # @!attribute on_behalf_service_result
            #   The On-behalf Service performed on the transaction and the results. Contains all
            #   applicable, on-behalf service results that were performed on a given
            #   transaction.
            #
            #   @return [Array<Lithic::Models::Transaction::Event::NetworkSpecificData::Mastercard::OnBehalfServiceResult>, nil]
            required :on_behalf_service_result,
                     -> {
                       Lithic::Internal::Type::ArrayOf[Lithic::Transaction::Event::NetworkSpecificData::Mastercard::OnBehalfServiceResult]
                     },
                     nil?: true

            # @!attribute transaction_type_identifier
            #   Indicates the type of additional transaction purpose.
            #
            #   @return [String, nil]
            required :transaction_type_identifier, String, nil?: true

            # @!method initialize(ecommerce_security_level_indicator:, on_behalf_service_result:, transaction_type_identifier:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transaction::Event::NetworkSpecificData::Mastercard} for more
            #   details.
            #
            #   @param ecommerce_security_level_indicator [String, nil] Indicates the electronic commerce security level and UCAF collection.
            #
            #   @param on_behalf_service_result [Array<Lithic::Models::Transaction::Event::NetworkSpecificData::Mastercard::OnBehalfServiceResult>, nil] The On-behalf Service performed on the transaction and the results. Contains all
            #
            #   @param transaction_type_identifier [String, nil] Indicates the type of additional transaction purpose.

            class OnBehalfServiceResult < Lithic::Internal::Type::BaseModel
              # @!attribute result_1
              #   Indicates the results of the service processing.
              #
              #   @return [String]
              required :result_1, String

              # @!attribute result_2
              #   Identifies the results of the service processing.
              #
              #   @return [String]
              required :result_2, String

              # @!attribute service
              #   Indicates the service performed on the transaction.
              #
              #   @return [String]
              required :service, String

              # @!method initialize(result_1:, result_2:, service:)
              #   @param result_1 [String] Indicates the results of the service processing.
              #
              #   @param result_2 [String] Identifies the results of the service processing.
              #
              #   @param service [String] Indicates the service performed on the transaction.
            end
          end

          # @see Lithic::Models::Transaction::Event::NetworkSpecificData#visa
          class Visa < Lithic::Internal::Type::BaseModel
            # @!attribute business_application_identifier
            #   Identifies the purpose or category of a transaction, used to classify and
            #   process transactions according to Visa’s rules.
            #
            #   @return [String, nil]
            required :business_application_identifier, String, nil?: true

            # @!method initialize(business_application_identifier:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transaction::Event::NetworkSpecificData::Visa} for more
            #   details.
            #
            #   @param business_application_identifier [String, nil] Identifies the purpose or category of a transaction, used to classify and proces
          end
        end
      end
    end
  end
end
