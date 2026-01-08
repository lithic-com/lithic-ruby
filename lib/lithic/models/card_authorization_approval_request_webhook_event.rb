# frozen_string_literal: true

module Lithic
  module Models
    class CardAuthorizationApprovalRequestWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   The provisional transaction group uuid associated with the authorization
      #
      #   @return [String]
      required :token, String

      # @!attribute acquirer_fee
      #   Fee (in cents) assessed by the merchant and paid for by the cardholder. Will be
      #   zero if no fee is assessed. Rebates may be transmitted as a negative value to
      #   indicate credited fees.
      #
      #   @return [Integer]
      required :acquirer_fee, Integer

      # @!attribute amount
      #   Authorization amount of the transaction (in cents), including any acquirer fees.
      #   The contents of this field are identical to `authorization_amount`.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute authorization_amount
      #   The base transaction amount (in cents) plus the acquirer fee field. This is the
      #   amount the issuer should authorize against unless the issuer is paying the
      #   acquirer fee on behalf of the cardholder.
      #
      #   @return [Integer]
      required :authorization_amount, Integer

      # @!attribute avs
      #
      #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Avs]
      required :avs, -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs }

      # @!attribute card
      #   Card object in ASA
      #
      #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card]
      required :card, -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card }

      # @!attribute cardholder_currency
      #   3-character alphabetic ISO 4217 code for cardholder's billing currency.
      #
      #   @return [String]
      required :cardholder_currency, String

      # @!attribute cash_amount
      #   The portion of the transaction requested as cash back by the cardholder, and
      #   does not include any acquirer fees. The amount field includes the purchase
      #   amount, the requested cash back amount, and any acquirer fees.
      #
      #   If no cash back was requested, the value of this field will be 0, and the field
      #   will always be present.
      #
      #   @return [Integer]
      required :cash_amount, Integer

      # @!attribute created
      #   Date and time when the transaction first occurred in UTC.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute event_type
      #
      #   @return [Symbol, :"card_authorization.approval_request"]
      required :event_type, const: :"card_authorization.approval_request"

      # @!attribute merchant
      #
      #   @return [Lithic::Models::Merchant]
      required :merchant, -> { Lithic::Merchant }

      # @!attribute merchant_amount
      #   The amount that the merchant will receive, denominated in `merchant_currency`
      #   and in the smallest currency unit. Note the amount includes `acquirer_fee`,
      #   similar to `authorization_amount`. It will be different from
      #   `authorization_amount` if the merchant is taking payment in a different
      #   currency.
      #
      #   @return [Integer]
      required :merchant_amount, Integer

      # @!attribute merchant_currency
      #   3-character alphabetic ISO 4217 code for the local currency of the transaction.
      #
      #   @return [String]
      required :merchant_currency, String

      # @!attribute settled_amount
      #   Amount (in cents) of the transaction that has been settled, including any
      #   acquirer fees
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #   The type of authorization request that this request is for. Note that
      #   `CREDIT_AUTHORIZATION` and `FINANCIAL_CREDIT_AUTHORIZATION` is only available to
      #   users with credit decisioning via ASA enabled.
      #
      #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Status]
      required :status, enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status }

      # @!attribute transaction_initiator
      #   The entity that initiated the transaction.
      #
      #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator]
      required :transaction_initiator,
               enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator }

      # @!attribute account_type
      #
      #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::AccountType, nil]
      optional :account_type, enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType }

      # @!attribute cardholder_authentication
      #
      #   @return [Lithic::Models::CardholderAuthentication, nil]
      optional :cardholder_authentication, -> { Lithic::CardholderAuthentication }

      # @!attribute cashback
      #   Deprecated, use `cash_amount`.
      #
      #   @return [Integer, nil]
      optional :cashback, Integer

      # @!attribute conversion_rate
      #   If the transaction was requested in a currency other than the settlement
      #   currency, this field will be populated to indicate the rate used to translate
      #   the merchant_amount to the amount (i.e., `merchant_amount` x `conversion_rate` =
      #   `amount`). Note that the `merchant_amount` is in the local currency and the
      #   amount is in the settlement currency.
      #
      #   @return [Float, nil]
      optional :conversion_rate, Float

      # @!attribute event_token
      #   The event token associated with the authorization. This field is only set for
      #   programs enrolled into the beta.
      #
      #   @return [String, nil]
      optional :event_token, String

      # @!attribute fleet_info
      #   Optional Object containing information if the Card is a part of a Fleet managed
      #   program
      #
      #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo, nil]
      optional :fleet_info, -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo }, nil?: true

      # @!attribute latest_challenge
      #   The latest Authorization Challenge that was issued to the cardholder for this
      #   merchant.
      #
      #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge, nil]
      optional :latest_challenge, -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge }

      # @!attribute network
      #   Card network of the authorization.
      #
      #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Network, nil]
      optional :network, enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network }

      # @!attribute network_risk_score
      #   Network-provided score assessing risk level associated with a given
      #   authorization. Scores are on a range of 0-999, with 0 representing the lowest
      #   risk and 999 representing the highest risk. For Visa transactions, where the raw
      #   score has a range of 0-99, Lithic will normalize the score by multiplying the
      #   raw score by 10x.
      #
      #   @return [Integer, nil]
      optional :network_risk_score, Integer, nil?: true

      # @!attribute network_specific_data
      #   Contains raw data provided by the card network, including attributes that
      #   provide further context about the authorization. If populated by the network,
      #   data is organized by Lithic and passed through without further modification.
      #   Please consult the official network documentation for more details about these
      #   values and how to use them. This object is only available to certain programs-
      #   contact your Customer Success Manager to discuss enabling access.
      #
      #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData, nil]
      optional :network_specific_data,
               -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData },
               nil?: true

      # @!attribute pos
      #
      #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos, nil]
      optional :pos, -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos }

      # @!attribute token_info
      #
      #   @return [Lithic::Models::TokenInfo, nil]
      optional :token_info, -> { Lithic::TokenInfo }, nil?: true

      # @!attribute ttl
      #   Deprecated: approximate time-to-live for the authorization.
      #
      #   @return [Time, nil]
      optional :ttl, Time

      # @!method initialize(token:, acquirer_fee:, amount:, authorization_amount:, avs:, card:, cardholder_currency:, cash_amount:, created:, merchant:, merchant_amount:, merchant_currency:, settled_amount:, status:, transaction_initiator:, account_type: nil, cardholder_authentication: nil, cashback: nil, conversion_rate: nil, event_token: nil, fleet_info: nil, latest_challenge: nil, network: nil, network_risk_score: nil, network_specific_data: nil, pos: nil, token_info: nil, ttl: nil, event_type: :"card_authorization.approval_request")
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent} for more details.
      #
      #   @param token [String] The provisional transaction group uuid associated with the authorization
      #
      #   @param acquirer_fee [Integer] Fee (in cents) assessed by the merchant and paid for by the cardholder. Will be
      #
      #   @param amount [Integer] Authorization amount of the transaction (in cents), including any acquirer fees.
      #
      #   @param authorization_amount [Integer] The base transaction amount (in cents) plus the acquirer fee field. This is the
      #
      #   @param avs [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Avs]
      #
      #   @param card [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card] Card object in ASA
      #
      #   @param cardholder_currency [String] 3-character alphabetic ISO 4217 code for cardholder's billing currency.
      #
      #   @param cash_amount [Integer] The portion of the transaction requested as cash back by the cardholder, and doe
      #
      #   @param created [Time] Date and time when the transaction first occurred in UTC.
      #
      #   @param merchant [Lithic::Models::Merchant]
      #
      #   @param merchant_amount [Integer] The amount that the merchant will receive, denominated in `merchant_currency` an
      #
      #   @param merchant_currency [String] 3-character alphabetic ISO 4217 code for the local currency of the transaction.
      #
      #   @param settled_amount [Integer] Amount (in cents) of the transaction that has been settled, including any acquir
      #
      #   @param status [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Status] The type of authorization request that this request is for. Note that `CREDIT_AU
      #
      #   @param transaction_initiator [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator] The entity that initiated the transaction.
      #
      #   @param account_type [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::AccountType]
      #
      #   @param cardholder_authentication [Lithic::Models::CardholderAuthentication]
      #
      #   @param cashback [Integer] Deprecated, use `cash_amount`.
      #
      #   @param conversion_rate [Float] If the transaction was requested in a currency other than the settlement currenc
      #
      #   @param event_token [String] The event token associated with the authorization. This field is only set for pr
      #
      #   @param fleet_info [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo, nil] Optional Object containing information if the Card is a part of a Fleet managed
      #
      #   @param latest_challenge [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge] The latest Authorization Challenge that was issued to the cardholder for this me
      #
      #   @param network [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Network] Card network of the authorization.
      #
      #   @param network_risk_score [Integer, nil] Network-provided score assessing risk level associated with a given authorizatio
      #
      #   @param network_specific_data [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData, nil] Contains raw data provided by the card network, including attributes that provid
      #
      #   @param pos [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos]
      #
      #   @param token_info [Lithic::Models::TokenInfo, nil]
      #
      #   @param ttl [Time] Deprecated: approximate time-to-live for the authorization.
      #
      #   @param event_type [Symbol, :"card_authorization.approval_request"]

      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#avs
      class Avs < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Cardholder address
        #
        #   @return [String]
        required :address, String

        # @!attribute address_on_file_match
        #   Lithic's evaluation result comparing the transaction's address data with the
        #   cardholder KYC data if it exists. In the event Lithic does not have any
        #   Cardholder KYC data, or the transaction does not contain any address data,
        #   NOT_PRESENT will be returned
        #
        #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch]
        required :address_on_file_match,
                 enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch }

        # @!attribute zipcode
        #   Cardholder ZIP code
        #
        #   @return [String]
        required :zipcode, String

        # @!method initialize(address:, address_on_file_match:, zipcode:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Avs} for more
        #   details.
        #
        #   @param address [String] Cardholder address
        #
        #   @param address_on_file_match [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch] Lithic's evaluation result comparing the transaction's address data with the car
        #
        #   @param zipcode [String] Cardholder ZIP code

        # Lithic's evaluation result comparing the transaction's address data with the
        # cardholder KYC data if it exists. In the event Lithic does not have any
        # Cardholder KYC data, or the transaction does not contain any address data,
        # NOT_PRESENT will be returned
        #
        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Avs#address_on_file_match
        module AddressOnFileMatch
          extend Lithic::Internal::Type::Enum

          MATCH = :MATCH
          MATCH_ADDRESS_ONLY = :MATCH_ADDRESS_ONLY
          MATCH_ZIP_ONLY = :MATCH_ZIP_ONLY
          MISMATCH = :MISMATCH
          NOT_PRESENT = :NOT_PRESENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#card
      class Card < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the card.
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute hostname
        #   Hostname of card’s locked merchant (will be empty if not applicable)
        #
        #   @return [String, nil]
        optional :hostname, String

        # @!attribute last_four
        #   Last four digits of the card number
        #
        #   @return [String, nil]
        optional :last_four, String

        # @!attribute memo
        #   Customizable name to identify the card. We recommend against using this field to
        #   store JSON data as it can cause unexpected behavior.
        #
        #   @return [String, nil]
        optional :memo, String

        # @!attribute spend_limit
        #   Amount (in cents) to limit approved authorizations. Purchase requests above the
        #   spend limit will be declined (refunds and credits will be approved).
        #
        #   Note that while spend limits are enforced based on authorized and settled volume
        #   on a card, they are not recommended to be used for balance or
        #   reconciliation-level accuracy. Spend limits also cannot block force posted
        #   charges (i.e., when a merchant sends a clearing message without a prior
        #   authorization).
        #
        #   @return [Integer, nil]
        optional :spend_limit, Integer

        # @!attribute spend_limit_duration
        #   Note that to support recurring monthly payments, which can occur on different
        #   day every month, the time window we consider for MONTHLY velocity starts 6 days
        #   after the current calendar date one month prior.
        #
        #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration, nil]
        optional :spend_limit_duration,
                 enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration }

        # @!attribute state
        #
        #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card::State, nil]
        optional :state, enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card::Type, nil]
        optional :type, enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type }

        # @!method initialize(token: nil, hostname: nil, last_four: nil, memo: nil, spend_limit: nil, spend_limit_duration: nil, state: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card} for more
        #   details.
        #
        #   Card object in ASA
        #
        #   @param token [String] Globally unique identifier for the card.
        #
        #   @param hostname [String] Hostname of card’s locked merchant (will be empty if not applicable)
        #
        #   @param last_four [String] Last four digits of the card number
        #
        #   @param memo [String] Customizable name to identify the card. We recommend against using this field to
        #
        #   @param spend_limit [Integer] Amount (in cents) to limit approved authorizations. Purchase requests above the
        #
        #   @param spend_limit_duration [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration] Note that to support recurring monthly payments, which can occur on different da
        #
        #   @param state [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card::State]
        #
        #   @param type [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card::Type]

        # Note that to support recurring monthly payments, which can occur on different
        # day every month, the time window we consider for MONTHLY velocity starts 6 days
        # after the current calendar date one month prior.
        #
        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card#spend_limit_duration
        module SpendLimitDuration
          extend Lithic::Internal::Type::Enum

          ANNUALLY = :ANNUALLY
          FOREVER = :FOREVER
          MONTHLY = :MONTHLY
          TRANSACTION = :TRANSACTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card#state
        module State
          extend Lithic::Internal::Type::Enum

          CLOSED = :CLOSED
          OPEN = :OPEN
          PAUSED = :PAUSED
          PENDING_ACTIVATION = :PENDING_ACTIVATION
          PENDING_FULFILLMENT = :PENDING_FULFILLMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Card#type
        module Type
          extend Lithic::Internal::Type::Enum

          SINGLE_USE = :SINGLE_USE
          MERCHANT_LOCKED = :MERCHANT_LOCKED
          UNLOCKED = :UNLOCKED
          PHYSICAL = :PHYSICAL
          DIGITAL_WALLET = :DIGITAL_WALLET
          VIRTUAL = :VIRTUAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The type of authorization request that this request is for. Note that
      # `CREDIT_AUTHORIZATION` and `FINANCIAL_CREDIT_AUTHORIZATION` is only available to
      # users with credit decisioning via ASA enabled.
      #
      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#status
      module Status
        extend Lithic::Internal::Type::Enum

        AUTHORIZATION = :AUTHORIZATION
        CREDIT_AUTHORIZATION = :CREDIT_AUTHORIZATION
        FINANCIAL_AUTHORIZATION = :FINANCIAL_AUTHORIZATION
        FINANCIAL_CREDIT_AUTHORIZATION = :FINANCIAL_CREDIT_AUTHORIZATION
        BALANCE_INQUIRY = :BALANCE_INQUIRY

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The entity that initiated the transaction.
      #
      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#transaction_initiator
      module TransactionInitiator
        extend Lithic::Internal::Type::Enum

        CARDHOLDER = :CARDHOLDER
        MERCHANT = :MERCHANT
        UNKNOWN = :UNKNOWN

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#account_type
      module AccountType
        extend Lithic::Internal::Type::Enum

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#fleet_info
      class FleetInfo < Lithic::Internal::Type::BaseModel
        # @!attribute fleet_prompt_code
        #   Code indicating what the driver was prompted to enter at time of purchase. This
        #   is configured at a program level and is a static configuration, and does not
        #   change on a request to request basis
        #
        #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode]
        required :fleet_prompt_code,
                 enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode }

        # @!attribute fleet_restriction_code
        #   Code indicating which restrictions, if any, there are on purchase. This is
        #   configured at a program level and is a static configuration, and does not change
        #   on a request to request basis
        #
        #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode]
        required :fleet_restriction_code,
                 enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode }

        # @!attribute driver_number
        #   Number representing the driver
        #
        #   @return [String, nil]
        optional :driver_number, String, nil?: true

        # @!attribute vehicle_number
        #   Number associated with the vehicle
        #
        #   @return [String, nil]
        optional :vehicle_number, String, nil?: true

        # @!method initialize(fleet_prompt_code:, fleet_restriction_code:, driver_number: nil, vehicle_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo} for
        #   more details.
        #
        #   Optional Object containing information if the Card is a part of a Fleet managed
        #   program
        #
        #   @param fleet_prompt_code [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode] Code indicating what the driver was prompted to enter at time of purchase. This
        #
        #   @param fleet_restriction_code [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode] Code indicating which restrictions, if any, there are on purchase. This is confi
        #
        #   @param driver_number [String, nil] Number representing the driver
        #
        #   @param vehicle_number [String, nil] Number associated with the vehicle

        # Code indicating what the driver was prompted to enter at time of purchase. This
        # is configured at a program level and is a static configuration, and does not
        # change on a request to request basis
        #
        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo#fleet_prompt_code
        module FleetPromptCode
          extend Lithic::Internal::Type::Enum

          NO_PROMPT = :NO_PROMPT
          VEHICLE_NUMBER = :VEHICLE_NUMBER
          DRIVER_NUMBER = :DRIVER_NUMBER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Code indicating which restrictions, if any, there are on purchase. This is
        # configured at a program level and is a static configuration, and does not change
        # on a request to request basis
        #
        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo#fleet_restriction_code
        module FleetRestrictionCode
          extend Lithic::Internal::Type::Enum

          NO_RESTRICTIONS = :NO_RESTRICTIONS
          FUEL_ONLY = :FUEL_ONLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#latest_challenge
      class LatestChallenge < Lithic::Internal::Type::BaseModel
        # @!attribute phone_number
        #   The phone number used for sending Authorization Challenge SMS.
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute status
        #   The status of the Authorization Challenge
        #
        #   - `COMPLETED` - Challenge was successfully completed by the cardholder
        #   - `PENDING` - Challenge is still open
        #   - `EXPIRED` - Challenge has expired without being completed
        #   - `ERROR` - There was an error processing the challenge
        #
        #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status]
        required :status,
                 enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status }

        # @!attribute completed_at
        #   The date and time when the Authorization Challenge was completed in UTC. Present
        #   only if the status is `COMPLETED`.
        #
        #   @return [Time, nil]
        optional :completed_at, Time

        # @!method initialize(phone_number:, status:, completed_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge}
        #   for more details.
        #
        #   The latest Authorization Challenge that was issued to the cardholder for this
        #   merchant.
        #
        #   @param phone_number [String] The phone number used for sending Authorization Challenge SMS.
        #
        #   @param status [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status] The status of the Authorization Challenge
        #
        #   @param completed_at [Time] The date and time when the Authorization Challenge was completed in UTC. Present

        # The status of the Authorization Challenge
        #
        # - `COMPLETED` - Challenge was successfully completed by the cardholder
        # - `PENDING` - Challenge is still open
        # - `EXPIRED` - Challenge has expired without being completed
        # - `ERROR` - There was an error processing the challenge
        #
        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge#status
        module Status
          extend Lithic::Internal::Type::Enum

          COMPLETED = :COMPLETED
          PENDING = :PENDING
          EXPIRED = :EXPIRED
          ERROR = :ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Card network of the authorization.
      #
      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#network
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

      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#network_specific_data
      class NetworkSpecificData < Lithic::Internal::Type::BaseModel
        # @!attribute mastercard
        #
        #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard, nil]
        optional :mastercard,
                 -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard },
                 nil?: true

        # @!attribute visa
        #
        #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa, nil]
        optional :visa,
                 -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa },
                 nil?: true

        # @!method initialize(mastercard: nil, visa: nil)
        #   Contains raw data provided by the card network, including attributes that
        #   provide further context about the authorization. If populated by the network,
        #   data is organized by Lithic and passed through without further modification.
        #   Please consult the official network documentation for more details about these
        #   values and how to use them. This object is only available to certain programs-
        #   contact your Customer Success Manager to discuss enabling access.
        #
        #   @param mastercard [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard, nil]
        #   @param visa [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa, nil]

        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData#mastercard
        class Mastercard < Lithic::Internal::Type::BaseModel
          # @!attribute ecommerce_security_level_indicator
          #   Indicates the electronic commerce security level and UCAF collection.
          #
          #   @return [String, nil]
          optional :ecommerce_security_level_indicator, String, nil?: true

          # @!attribute on_behalf_service_result
          #   The On-behalf Service performed on the transaction and the results. Contains all
          #   applicable, on-behalf service results that were performed on a given
          #   transaction.
          #
          #   @return [Array<Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OnBehalfServiceResult>, nil]
          optional :on_behalf_service_result,
                   -> do
                     Lithic::Internal::Type::ArrayOf[
                       Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OnBehalfServiceResult
                     ]
                   end,
                   nil?: true

          # @!attribute transaction_type_identifier
          #   Indicates the type of additional transaction purpose.
          #
          #   @return [String, nil]
          optional :transaction_type_identifier, String, nil?: true

          # @!method initialize(ecommerce_security_level_indicator: nil, on_behalf_service_result: nil, transaction_type_identifier: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard}
          #   for more details.
          #
          #   @param ecommerce_security_level_indicator [String, nil] Indicates the electronic commerce security level and UCAF collection.
          #
          #   @param on_behalf_service_result [Array<Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OnBehalfServiceResult>, nil] The On-behalf Service performed on the transaction and the results. Contains all
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

        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData#visa
        class Visa < Lithic::Internal::Type::BaseModel
          # @!attribute business_application_identifier
          #   Identifies the purpose or category of a transaction, used to classify and
          #   process transactions according to Visa’s rules.
          #
          #   @return [String, nil]
          optional :business_application_identifier, String, nil?: true

          # @!method initialize(business_application_identifier: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa}
          #   for more details.
          #
          #   @param business_application_identifier [String, nil] Identifies the purpose or category of a transaction, used to classify and proces
        end
      end

      # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent#pos
      class Pos < Lithic::Internal::Type::BaseModel
        # @!attribute entry_mode
        #   POS > Entry Mode object in ASA
        #
        #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode, nil]
        optional :entry_mode, -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode }

        # @!attribute terminal
        #
        #   @return [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal, nil]
        optional :terminal, -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal }

        # @!method initialize(entry_mode: nil, terminal: nil)
        #   @param entry_mode [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode] POS > Entry Mode object in ASA
        #
        #   @param terminal [Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal]

        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos#entry_mode
        class EntryMode < Lithic::Internal::Type::BaseModel
          # @!attribute card
          #   Card Presence Indicator
          #
          #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card, nil]
          optional :card, enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card }

          # @!attribute cardholder
          #   Cardholder Presence Indicator
          #
          #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder, nil]
          optional :cardholder,
                   enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder }

          # @!attribute pan
          #   Method of entry for the PAN
          #
          #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan, nil]
          optional :pan, enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan }

          # @!attribute pin_entered
          #   Indicates whether the cardholder entered the PIN. True if the PIN was entered.
          #
          #   @return [Boolean, nil]
          optional :pin_entered, Lithic::Internal::Type::Boolean

          # @!method initialize(card: nil, cardholder: nil, pan: nil, pin_entered: nil)
          #   POS > Entry Mode object in ASA
          #
          #   @param card [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card] Card Presence Indicator
          #
          #   @param cardholder [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder] Cardholder Presence Indicator
          #
          #   @param pan [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan] Method of entry for the PAN
          #
          #   @param pin_entered [Boolean] Indicates whether the cardholder entered the PIN. True if the PIN was entered.

          # Card Presence Indicator
          #
          # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode#card
          module Card
            extend Lithic::Internal::Type::Enum

            PRESENT = :PRESENT
            NOT_PRESENT = :NOT_PRESENT
            UNKNOWN = :UNKNOWN

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Cardholder Presence Indicator
          #
          # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode#cardholder
          module Cardholder
            extend Lithic::Internal::Type::Enum

            DEFERRED_BILLING = :DEFERRED_BILLING
            ELECTRONIC_ORDER = :ELECTRONIC_ORDER
            INSTALLMENT = :INSTALLMENT
            MAIL_ORDER = :MAIL_ORDER
            NOT_PRESENT = :NOT_PRESENT
            PRESENT = :PRESENT
            REOCCURRING = :REOCCURRING
            TELEPHONE_ORDER = :TELEPHONE_ORDER
            UNKNOWN = :UNKNOWN

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Method of entry for the PAN
          #
          # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode#pan
          module Pan
            extend Lithic::Internal::Type::Enum

            AUTO_ENTRY = :AUTO_ENTRY
            BAR_CODE = :BAR_CODE
            CONTACTLESS = :CONTACTLESS
            ECOMMERCE = :ECOMMERCE
            ERROR_KEYED = :ERROR_KEYED
            ERROR_MAGNETIC_STRIPE = :ERROR_MAGNETIC_STRIPE
            ICC = :ICC
            KEY_ENTERED = :KEY_ENTERED
            MAGNETIC_STRIPE = :MAGNETIC_STRIPE
            MANUAL = :MANUAL
            OCR = :OCR
            SECURE_CARDLESS = :SECURE_CARDLESS
            UNSPECIFIED = :UNSPECIFIED
            UNKNOWN = :UNKNOWN
            CREDENTIAL_ON_FILE = :CREDENTIAL_ON_FILE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos#terminal
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
          #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator]
          required :operator,
                   enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator }

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
          #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability]
          required :pin_capability,
                   enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability }

          # @!attribute type
          #   POS Type
          #
          #   @return [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type]
          required :type, enum: -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type }

          # @!attribute acceptor_terminal_id
          #   Uniquely identifies a terminal at the card acceptor location of acquiring
          #   institutions or merchant POS Systems. Left justified with trailing spaces.
          #
          #   @return [String, nil]
          optional :acceptor_terminal_id, String, nil?: true

          # @!method initialize(attended:, card_retention_capable:, on_premise:, operator:, partial_approval_capable:, pin_capability:, type:, acceptor_terminal_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal}
          #   for more details.
          #
          #   @param attended [Boolean] True if a clerk is present at the sale.
          #
          #   @param card_retention_capable [Boolean] True if the terminal is capable of retaining the card.
          #
          #   @param on_premise [Boolean] True if the sale was made at the place of business (vs. mobile).
          #
          #   @param operator [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator] The person that is designated to swipe the card
          #
          #   @param partial_approval_capable [Boolean] True if the terminal is capable of partial approval. Partial approval is when pa
          #
          #   @param pin_capability [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability] Status of whether the POS is able to accept PINs
          #
          #   @param type [Symbol, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type] POS Type
          #
          #   @param acceptor_terminal_id [String, nil] Uniquely identifies a terminal at the card acceptor location of acquiring instit

          # The person that is designated to swipe the card
          #
          # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal#operator
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
          # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal#pin_capability
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
          # @see Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal#type
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
    end
  end
end
