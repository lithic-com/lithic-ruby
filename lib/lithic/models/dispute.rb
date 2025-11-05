# frozen_string_literal: true

module Lithic
  module Models
    class Dispute < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Token assigned by Lithic for the dispute, in UUID format.
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #   Token for the account associated with the dispute, in UUID format.
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_token
      #   Token for the card used in the dispute, in UUID format.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute case_id
      #   Identifier assigned by the network for this dispute.
      #
      #   @return [String, nil]
      required :case_id, String, nil?: true

      # @!attribute created
      #   When the dispute was created.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   Three-letter ISO 4217 currency code.
      #
      #   @return [String]
      required :currency, String

      # @!attribute disposition
      #   Dispute resolution outcome
      #
      #   @return [Symbol, Lithic::Models::Dispute::Disposition, nil]
      required :disposition, enum: -> { Lithic::Dispute::Disposition }, nil?: true

      # @!attribute events
      #   Chronological list of events that have occurred in the dispute lifecycle
      #
      #   @return [Array<Lithic::Models::Dispute::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Dispute::Event] }

      # @!attribute liability_allocation
      #   Current breakdown of how liability is allocated for the disputed amount
      #
      #   @return [Lithic::Models::Dispute::LiabilityAllocation]
      required :liability_allocation, -> { Lithic::Dispute::LiabilityAllocation }

      # @!attribute merchant
      #
      #   @return [Lithic::Models::Dispute::Merchant]
      required :merchant, -> { Lithic::Dispute::Merchant }

      # @!attribute network
      #   Card network handling the dispute.
      #
      #   @return [Symbol, Lithic::Models::Dispute::Network]
      required :network, enum: -> { Lithic::Dispute::Network }

      # @!attribute status
      #   Current status of the dispute.
      #
      #   @return [Symbol, Lithic::Models::Dispute::Status, nil]
      required :status, enum: -> { Lithic::Dispute::Status }, nil?: true

      # @!attribute transaction_series
      #   Contains identifiers for the transaction and specific event within being
      #   disputed; null if no transaction can be identified
      #
      #   @return [Lithic::Models::Dispute::TransactionSeries, nil]
      required :transaction_series, -> { Lithic::Dispute::TransactionSeries }, nil?: true

      # @!attribute updated
      #   When the dispute was last updated.
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, account_token:, card_token:, case_id:, created:, currency:, disposition:, events:, liability_allocation:, merchant:, network:, status:, transaction_series:, updated:)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Dispute}
      #   for more details.
      #
      #   The Dispute object tracks the progression of a dispute throughout its lifecycle.
      #
      #   @param token [String] Token assigned by Lithic for the dispute, in UUID format.
      #
      #   @param account_token [String] Token for the account associated with the dispute, in UUID format.
      #
      #   @param card_token [String] Token for the card used in the dispute, in UUID format.
      #
      #   @param case_id [String, nil] Identifier assigned by the network for this dispute.
      #
      #   @param created [Time] When the dispute was created.
      #
      #   @param currency [String] Three-letter ISO 4217 currency code.
      #
      #   @param disposition [Symbol, Lithic::Models::Dispute::Disposition, nil] Dispute resolution outcome
      #
      #   @param events [Array<Lithic::Models::Dispute::Event>] Chronological list of events that have occurred in the dispute lifecycle
      #
      #   @param liability_allocation [Lithic::Models::Dispute::LiabilityAllocation] Current breakdown of how liability is allocated for the disputed amount
      #
      #   @param merchant [Lithic::Models::Dispute::Merchant]
      #
      #   @param network [Symbol, Lithic::Models::Dispute::Network] Card network handling the dispute.
      #
      #   @param status [Symbol, Lithic::Models::Dispute::Status, nil] Current status of the dispute.
      #
      #   @param transaction_series [Lithic::Models::Dispute::TransactionSeries, nil] Contains identifiers for the transaction and specific event within being dispute
      #
      #   @param updated [Time] When the dispute was last updated.

      # Dispute resolution outcome
      #
      # @see Lithic::Models::Dispute#disposition
      module Disposition
        extend Lithic::Internal::Type::Enum

        WON = :WON
        LOST = :LOST
        PARTIALLY_WON = :PARTIALLY_WON
        WITHDRAWN = :WITHDRAWN
        DENIED = :DENIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Event < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Unique identifier for the event, in UUID format
        #
        #   @return [String]
        required :token, String

        # @!attribute created
        #   When the event occurred
        #
        #   @return [Time]
        required :created, Time

        # @!attribute data
        #   Details specific to the event type
        #
        #   @return [Lithic::Models::Dispute::Event::Data::WorkflowEventData, Lithic::Models::Dispute::Event::Data::FinancialEventData, Lithic::Models::Dispute::Event::Data::CardholderLiabilityEventData]
        required :data, union: -> { Lithic::Dispute::Event::Data }

        # @!attribute type
        #   Type of event
        #
        #   @return [Symbol, Lithic::Models::Dispute::Event::Type]
        required :type, enum: -> { Lithic::Dispute::Event::Type }

        # @!method initialize(token:, created:, data:, type:)
        #   Event that occurred in the dispute lifecycle
        #
        #   @param token [String] Unique identifier for the event, in UUID format
        #
        #   @param created [Time] When the event occurred
        #
        #   @param data [Lithic::Models::Dispute::Event::Data::WorkflowEventData, Lithic::Models::Dispute::Event::Data::FinancialEventData, Lithic::Models::Dispute::Event::Data::CardholderLiabilityEventData] Details specific to the event type
        #
        #   @param type [Symbol, Lithic::Models::Dispute::Event::Type] Type of event

        # Details specific to the event type
        #
        # @see Lithic::Models::Dispute::Event#data
        module Data
          extend Lithic::Internal::Type::Union

          # Details specific to workflow events
          variant -> { Lithic::Dispute::Event::Data::WorkflowEventData }

          # Details specific to financial events
          variant -> { Lithic::Dispute::Event::Data::FinancialEventData }

          # Details specific to cardholder liability events
          variant -> { Lithic::Dispute::Event::Data::CardholderLiabilityEventData }

          class WorkflowEventData < Lithic::Internal::Type::BaseModel
            # @!attribute action
            #   Action taken in this stage
            #
            #   @return [Symbol, Lithic::Models::Dispute::Event::Data::WorkflowEventData::Action]
            required :action, enum: -> { Lithic::Dispute::Event::Data::WorkflowEventData::Action }

            # @!attribute amount
            #   Amount in minor units
            #
            #   @return [Integer, nil]
            required :amount, Integer, nil?: true

            # @!attribute disposition
            #   Dispute resolution outcome
            #
            #   @return [Symbol, Lithic::Models::Dispute::Event::Data::WorkflowEventData::Disposition, nil]
            required :disposition,
                     enum: -> { Lithic::Dispute::Event::Data::WorkflowEventData::Disposition },
                     nil?: true

            # @!attribute reason
            #   Reason for the action
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!attribute stage
            #   Current stage of the dispute workflow
            #
            #   @return [Symbol, Lithic::Models::Dispute::Event::Data::WorkflowEventData::Stage]
            required :stage, enum: -> { Lithic::Dispute::Event::Data::WorkflowEventData::Stage }

            # @!method initialize(action:, amount:, disposition:, reason:, stage:)
            #   Details specific to workflow events
            #
            #   @param action [Symbol, Lithic::Models::Dispute::Event::Data::WorkflowEventData::Action] Action taken in this stage
            #
            #   @param amount [Integer, nil] Amount in minor units
            #
            #   @param disposition [Symbol, Lithic::Models::Dispute::Event::Data::WorkflowEventData::Disposition, nil] Dispute resolution outcome
            #
            #   @param reason [String, nil] Reason for the action
            #
            #   @param stage [Symbol, Lithic::Models::Dispute::Event::Data::WorkflowEventData::Stage] Current stage of the dispute workflow

            # Action taken in this stage
            #
            # @see Lithic::Models::Dispute::Event::Data::WorkflowEventData#action
            module Action
              extend Lithic::Internal::Type::Enum

              OPENED = :OPENED
              CLOSED = :CLOSED
              REOPENED = :REOPENED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Dispute resolution outcome
            #
            # @see Lithic::Models::Dispute::Event::Data::WorkflowEventData#disposition
            module Disposition
              extend Lithic::Internal::Type::Enum

              WON = :WON
              LOST = :LOST
              PARTIALLY_WON = :PARTIALLY_WON
              WITHDRAWN = :WITHDRAWN
              DENIED = :DENIED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Current stage of the dispute workflow
            #
            # @see Lithic::Models::Dispute::Event::Data::WorkflowEventData#stage
            module Stage
              extend Lithic::Internal::Type::Enum

              CLAIM = :CLAIM

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FinancialEventData < Lithic::Internal::Type::BaseModel
            # @!attribute amount
            #   Amount in minor units
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute polarity
            #   Direction of funds flow
            #
            #   @return [Symbol, Lithic::Models::Dispute::Event::Data::FinancialEventData::Polarity]
            required :polarity, enum: -> { Lithic::Dispute::Event::Data::FinancialEventData::Polarity }

            # @!attribute stage
            #   Stage at which the financial event occurred
            #
            #   @return [Symbol, Lithic::Models::Dispute::Event::Data::FinancialEventData::Stage]
            required :stage, enum: -> { Lithic::Dispute::Event::Data::FinancialEventData::Stage }

            # @!method initialize(amount:, polarity:, stage:)
            #   Details specific to financial events
            #
            #   @param amount [Integer] Amount in minor units
            #
            #   @param polarity [Symbol, Lithic::Models::Dispute::Event::Data::FinancialEventData::Polarity] Direction of funds flow
            #
            #   @param stage [Symbol, Lithic::Models::Dispute::Event::Data::FinancialEventData::Stage] Stage at which the financial event occurred

            # Direction of funds flow
            #
            # @see Lithic::Models::Dispute::Event::Data::FinancialEventData#polarity
            module Polarity
              extend Lithic::Internal::Type::Enum

              CREDIT = :CREDIT
              DEBIT = :DEBIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Stage at which the financial event occurred
            #
            # @see Lithic::Models::Dispute::Event::Data::FinancialEventData#stage
            module Stage
              extend Lithic::Internal::Type::Enum

              CHARGEBACK = :CHARGEBACK
              REPRESENTMENT = :REPRESENTMENT
              PREARBITRATION = :PREARBITRATION
              ARBITRATION = :ARBITRATION
              COLLABORATION = :COLLABORATION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CardholderLiabilityEventData < Lithic::Internal::Type::BaseModel
            # @!attribute action
            #   Action taken regarding cardholder liability
            #
            #   @return [Symbol, Lithic::Models::Dispute::Event::Data::CardholderLiabilityEventData::Action]
            required :action, enum: -> { Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action }

            # @!attribute amount
            #   Amount in minor units
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute reason
            #   Reason for the action
            #
            #   @return [String]
            required :reason, String

            # @!method initialize(action:, amount:, reason:)
            #   Details specific to cardholder liability events
            #
            #   @param action [Symbol, Lithic::Models::Dispute::Event::Data::CardholderLiabilityEventData::Action] Action taken regarding cardholder liability
            #
            #   @param amount [Integer] Amount in minor units
            #
            #   @param reason [String] Reason for the action

            # Action taken regarding cardholder liability
            #
            # @see Lithic::Models::Dispute::Event::Data::CardholderLiabilityEventData#action
            module Action
              extend Lithic::Internal::Type::Enum

              PROVISIONAL_CREDIT_GRANTED = :PROVISIONAL_CREDIT_GRANTED
              PROVISIONAL_CREDIT_REVERSED = :PROVISIONAL_CREDIT_REVERSED
              WRITTEN_OFF = :WRITTEN_OFF

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::Dispute::Event::Data::WorkflowEventData, Lithic::Models::Dispute::Event::Data::FinancialEventData, Lithic::Models::Dispute::Event::Data::CardholderLiabilityEventData)]
        end

        # Type of event
        #
        # @see Lithic::Models::Dispute::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          WORKFLOW = :WORKFLOW
          FINANCIAL = :FINANCIAL
          CARDHOLDER_LIABILITY = :CARDHOLDER_LIABILITY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Lithic::Models::Dispute#liability_allocation
      class LiabilityAllocation < Lithic::Internal::Type::BaseModel
        # @!attribute denied_amount
        #   The amount that has been denied to the cardholder
        #
        #   @return [Integer]
        required :denied_amount, Integer

        # @!attribute original_amount
        #   The initial amount disputed
        #
        #   @return [Integer]
        required :original_amount, Integer

        # @!attribute recovered_amount
        #   The amount that has been recovered from the merchant through the dispute process
        #
        #   @return [Integer]
        required :recovered_amount, Integer

        # @!attribute remaining_amount
        #   Any disputed amount that is still outstanding, i.e. has not been recovered,
        #   written off, or denied
        #
        #   @return [Integer]
        required :remaining_amount, Integer

        # @!attribute written_off_amount
        #   The amount the issuer has chosen to write off
        #
        #   @return [Integer]
        required :written_off_amount, Integer

        # @!method initialize(denied_amount:, original_amount:, recovered_amount:, remaining_amount:, written_off_amount:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Dispute::LiabilityAllocation} for more details.
        #
        #   Current breakdown of how liability is allocated for the disputed amount
        #
        #   @param denied_amount [Integer] The amount that has been denied to the cardholder
        #
        #   @param original_amount [Integer] The initial amount disputed
        #
        #   @param recovered_amount [Integer] The amount that has been recovered from the merchant through the dispute process
        #
        #   @param remaining_amount [Integer] Any disputed amount that is still outstanding, i.e. has not been recovered, writ
        #
        #   @param written_off_amount [Integer] The amount the issuer has chosen to write off
      end

      # @see Lithic::Models::Dispute#merchant
      class Merchant < Lithic::Internal::Type::BaseModel
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
        #   transactions, merchants may send through a phone number or URL in this field.
        #
        #   @return [String]
        required :city, String

        # @!attribute country
        #   Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
        #   alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
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
        #   used to classify a business by the types of goods or services it provides.
        #
        #   @return [String]
        required :mcc, String

        # @!attribute state
        #   Geographic state of card acceptor.
        #
        #   @return [String]
        required :state, String

        # @!method initialize(acceptor_id:, acquiring_institution_id:, city:, country:, descriptor:, mcc:, state:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Dispute::Merchant} for more details.
        #
        #   @param acceptor_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant).
        #
        #   @param acquiring_institution_id [String] Unique numeric identifier of the acquiring institution.
        #
        #   @param city [String] City of card acceptor. Note that in many cases, particularly in card-not-present
        #
        #   @param country [String] Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1 alph
        #
        #   @param descriptor [String] Short description of card acceptor.
        #
        #   @param mcc [String] Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
        #
        #   @param state [String] Geographic state of card acceptor.
      end

      # Card network handling the dispute.
      #
      # @see Lithic::Models::Dispute#network
      module Network
        extend Lithic::Internal::Type::Enum

        VISA = :VISA
        MASTERCARD = :MASTERCARD

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current status of the dispute.
      #
      # @see Lithic::Models::Dispute#status
      module Status
        extend Lithic::Internal::Type::Enum

        OPEN = :OPEN
        CLOSED = :CLOSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::Dispute#transaction_series
      class TransactionSeries < Lithic::Internal::Type::BaseModel
        # @!attribute related_transaction_event_token
        #   Token of the specific event in the original transaction being disputed, in UUID
        #   format; null if no event can be identified
        #
        #   @return [String, nil]
        required :related_transaction_event_token, String, nil?: true

        # @!attribute related_transaction_token
        #   Token of the original transaction being disputed, in UUID format
        #
        #   @return [String]
        required :related_transaction_token, String

        # @!attribute type
        #   The type of transaction series associating the dispute and the original
        #   transaction. Always set to DISPUTE
        #
        #   @return [Symbol, Lithic::Models::Dispute::TransactionSeries::Type]
        required :type, enum: -> { Lithic::Dispute::TransactionSeries::Type }

        # @!method initialize(related_transaction_event_token:, related_transaction_token:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Dispute::TransactionSeries} for more details.
        #
        #   Contains identifiers for the transaction and specific event within being
        #   disputed; null if no transaction can be identified
        #
        #   @param related_transaction_event_token [String, nil] Token of the specific event in the original transaction being disputed, in UUID
        #
        #   @param related_transaction_token [String] Token of the original transaction being disputed, in UUID format
        #
        #   @param type [Symbol, Lithic::Models::Dispute::TransactionSeries::Type] The type of transaction series associating the dispute and the original transact

        # The type of transaction series associating the dispute and the original
        # transaction. Always set to DISPUTE
        #
        # @see Lithic::Models::Dispute::TransactionSeries#type
        module Type
          extend Lithic::Internal::Type::Enum

          DISPUTE = :DISPUTE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
