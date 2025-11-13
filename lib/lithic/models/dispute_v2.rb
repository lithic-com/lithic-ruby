# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::DisputesV2#retrieve
    class DisputeV2 < Lithic::Internal::Type::BaseModel
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
      #   @return [Symbol, Lithic::Models::DisputeV2::Disposition, nil]
      required :disposition, enum: -> { Lithic::DisputeV2::Disposition }, nil?: true

      # @!attribute events
      #   Chronological list of events that have occurred in the dispute lifecycle
      #
      #   @return [Array<Lithic::Models::DisputeV2::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::DisputeV2::Event] }

      # @!attribute liability_allocation
      #   Current breakdown of how liability is allocated for the disputed amount
      #
      #   @return [Lithic::Models::DisputeV2::LiabilityAllocation]
      required :liability_allocation, -> { Lithic::DisputeV2::LiabilityAllocation }

      # @!attribute merchant
      #
      #   @return [Lithic::Models::Merchant]
      required :merchant, -> { Lithic::Merchant }

      # @!attribute network
      #   Card network handling the dispute.
      #
      #   @return [Symbol, Lithic::Models::DisputeV2::Network]
      required :network, enum: -> { Lithic::DisputeV2::Network }

      # @!attribute status
      #   Current status of the dispute.
      #
      #   @return [Symbol, Lithic::Models::DisputeV2::Status, nil]
      required :status, enum: -> { Lithic::DisputeV2::Status }, nil?: true

      # @!attribute transaction_series
      #   Contains identifiers for the transaction and specific event within being
      #   disputed; null if no transaction can be identified
      #
      #   @return [Lithic::Models::DisputeV2::TransactionSeries, nil]
      required :transaction_series, -> { Lithic::DisputeV2::TransactionSeries }, nil?: true

      # @!attribute updated
      #   When the dispute was last updated.
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, account_token:, card_token:, case_id:, created:, currency:, disposition:, events:, liability_allocation:, merchant:, network:, status:, transaction_series:, updated:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::DisputeV2} for more details.
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
      #   @param disposition [Symbol, Lithic::Models::DisputeV2::Disposition, nil] Dispute resolution outcome
      #
      #   @param events [Array<Lithic::Models::DisputeV2::Event>] Chronological list of events that have occurred in the dispute lifecycle
      #
      #   @param liability_allocation [Lithic::Models::DisputeV2::LiabilityAllocation] Current breakdown of how liability is allocated for the disputed amount
      #
      #   @param merchant [Lithic::Models::Merchant]
      #
      #   @param network [Symbol, Lithic::Models::DisputeV2::Network] Card network handling the dispute.
      #
      #   @param status [Symbol, Lithic::Models::DisputeV2::Status, nil] Current status of the dispute.
      #
      #   @param transaction_series [Lithic::Models::DisputeV2::TransactionSeries, nil] Contains identifiers for the transaction and specific event within being dispute
      #
      #   @param updated [Time] When the dispute was last updated.

      # Dispute resolution outcome
      #
      # @see Lithic::Models::DisputeV2#disposition
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
        #   @return [Lithic::Models::DisputeV2::Event::Data::Workflow, Lithic::Models::DisputeV2::Event::Data::Financial, Lithic::Models::DisputeV2::Event::Data::CardholderLiability]
        required :data, union: -> { Lithic::DisputeV2::Event::Data }

        # @!attribute type
        #   Type of event
        #
        #   @return [Symbol, Lithic::Models::DisputeV2::Event::Type]
        required :type, enum: -> { Lithic::DisputeV2::Event::Type }

        # @!method initialize(token:, created:, data:, type:)
        #   Event that occurred in the dispute lifecycle
        #
        #   @param token [String] Unique identifier for the event, in UUID format
        #
        #   @param created [Time] When the event occurred
        #
        #   @param data [Lithic::Models::DisputeV2::Event::Data::Workflow, Lithic::Models::DisputeV2::Event::Data::Financial, Lithic::Models::DisputeV2::Event::Data::CardholderLiability] Details specific to the event type
        #
        #   @param type [Symbol, Lithic::Models::DisputeV2::Event::Type] Type of event

        # Details specific to the event type
        #
        # @see Lithic::Models::DisputeV2::Event#data
        module Data
          extend Lithic::Internal::Type::Union

          discriminator :type

          # Details specific to workflow events
          variant :WORKFLOW, -> { Lithic::DisputeV2::Event::Data::Workflow }

          # Details specific to financial events
          variant :FINANCIAL, -> { Lithic::DisputeV2::Event::Data::Financial }

          # Details specific to cardholder liability events
          variant :CARDHOLDER_LIABILITY, -> { Lithic::DisputeV2::Event::Data::CardholderLiability }

          class Workflow < Lithic::Internal::Type::BaseModel
            # @!attribute action
            #   Action taken in this stage
            #
            #   @return [Symbol, Lithic::Models::DisputeV2::Event::Data::Workflow::Action]
            required :action, enum: -> { Lithic::DisputeV2::Event::Data::Workflow::Action }

            # @!attribute amount
            #   Amount in minor units
            #
            #   @return [Integer, nil]
            required :amount, Integer, nil?: true

            # @!attribute disposition
            #   Dispute resolution outcome
            #
            #   @return [Symbol, Lithic::Models::DisputeV2::Event::Data::Workflow::Disposition, nil]
            required :disposition,
                     enum: -> {
                       Lithic::DisputeV2::Event::Data::Workflow::Disposition
                     },
                     nil?: true

            # @!attribute reason
            #   Reason for the action
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!attribute stage
            #   Current stage of the dispute workflow
            #
            #   @return [Symbol, Lithic::Models::DisputeV2::Event::Data::Workflow::Stage]
            required :stage, enum: -> { Lithic::DisputeV2::Event::Data::Workflow::Stage }

            # @!attribute type
            #   Event type discriminator
            #
            #   @return [Symbol, :WORKFLOW]
            required :type, const: :WORKFLOW

            # @!method initialize(action:, amount:, disposition:, reason:, stage:, type: :WORKFLOW)
            #   Details specific to workflow events
            #
            #   @param action [Symbol, Lithic::Models::DisputeV2::Event::Data::Workflow::Action] Action taken in this stage
            #
            #   @param amount [Integer, nil] Amount in minor units
            #
            #   @param disposition [Symbol, Lithic::Models::DisputeV2::Event::Data::Workflow::Disposition, nil] Dispute resolution outcome
            #
            #   @param reason [String, nil] Reason for the action
            #
            #   @param stage [Symbol, Lithic::Models::DisputeV2::Event::Data::Workflow::Stage] Current stage of the dispute workflow
            #
            #   @param type [Symbol, :WORKFLOW] Event type discriminator

            # Action taken in this stage
            #
            # @see Lithic::Models::DisputeV2::Event::Data::Workflow#action
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
            # @see Lithic::Models::DisputeV2::Event::Data::Workflow#disposition
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
            # @see Lithic::Models::DisputeV2::Event::Data::Workflow#stage
            module Stage
              extend Lithic::Internal::Type::Enum

              CLAIM = :CLAIM

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Financial < Lithic::Internal::Type::BaseModel
            # @!attribute amount
            #   Amount in minor units
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute polarity
            #   Direction of funds flow
            #
            #   @return [Symbol, Lithic::Models::DisputeV2::Event::Data::Financial::Polarity]
            required :polarity, enum: -> { Lithic::DisputeV2::Event::Data::Financial::Polarity }

            # @!attribute stage
            #   Stage at which the financial event occurred
            #
            #   @return [Symbol, Lithic::Models::DisputeV2::Event::Data::Financial::Stage]
            required :stage, enum: -> { Lithic::DisputeV2::Event::Data::Financial::Stage }

            # @!attribute type
            #   Event type discriminator
            #
            #   @return [Symbol, :FINANCIAL]
            required :type, const: :FINANCIAL

            # @!method initialize(amount:, polarity:, stage:, type: :FINANCIAL)
            #   Details specific to financial events
            #
            #   @param amount [Integer] Amount in minor units
            #
            #   @param polarity [Symbol, Lithic::Models::DisputeV2::Event::Data::Financial::Polarity] Direction of funds flow
            #
            #   @param stage [Symbol, Lithic::Models::DisputeV2::Event::Data::Financial::Stage] Stage at which the financial event occurred
            #
            #   @param type [Symbol, :FINANCIAL] Event type discriminator

            # Direction of funds flow
            #
            # @see Lithic::Models::DisputeV2::Event::Data::Financial#polarity
            module Polarity
              extend Lithic::Internal::Type::Enum

              CREDIT = :CREDIT
              DEBIT = :DEBIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Stage at which the financial event occurred
            #
            # @see Lithic::Models::DisputeV2::Event::Data::Financial#stage
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

          class CardholderLiability < Lithic::Internal::Type::BaseModel
            # @!attribute action
            #   Action taken regarding cardholder liability
            #
            #   @return [Symbol, Lithic::Models::DisputeV2::Event::Data::CardholderLiability::Action]
            required :action, enum: -> { Lithic::DisputeV2::Event::Data::CardholderLiability::Action }

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

            # @!attribute type
            #   Event type discriminator
            #
            #   @return [Symbol, :CARDHOLDER_LIABILITY]
            required :type, const: :CARDHOLDER_LIABILITY

            # @!method initialize(action:, amount:, reason:, type: :CARDHOLDER_LIABILITY)
            #   Details specific to cardholder liability events
            #
            #   @param action [Symbol, Lithic::Models::DisputeV2::Event::Data::CardholderLiability::Action] Action taken regarding cardholder liability
            #
            #   @param amount [Integer] Amount in minor units
            #
            #   @param reason [String] Reason for the action
            #
            #   @param type [Symbol, :CARDHOLDER_LIABILITY] Event type discriminator

            # Action taken regarding cardholder liability
            #
            # @see Lithic::Models::DisputeV2::Event::Data::CardholderLiability#action
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
          #   @return [Array(Lithic::Models::DisputeV2::Event::Data::Workflow, Lithic::Models::DisputeV2::Event::Data::Financial, Lithic::Models::DisputeV2::Event::Data::CardholderLiability)]
        end

        # Type of event
        #
        # @see Lithic::Models::DisputeV2::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          WORKFLOW = :WORKFLOW
          FINANCIAL = :FINANCIAL
          CARDHOLDER_LIABILITY = :CARDHOLDER_LIABILITY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Lithic::Models::DisputeV2#liability_allocation
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
        #   {Lithic::Models::DisputeV2::LiabilityAllocation} for more details.
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

      # Card network handling the dispute.
      #
      # @see Lithic::Models::DisputeV2#network
      module Network
        extend Lithic::Internal::Type::Enum

        VISA = :VISA
        MASTERCARD = :MASTERCARD

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current status of the dispute.
      #
      # @see Lithic::Models::DisputeV2#status
      module Status
        extend Lithic::Internal::Type::Enum

        OPEN = :OPEN
        CLOSED = :CLOSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::DisputeV2#transaction_series
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
        #   @return [Symbol, Lithic::Models::DisputeV2::TransactionSeries::Type]
        required :type, enum: -> { Lithic::DisputeV2::TransactionSeries::Type }

        # @!method initialize(related_transaction_event_token:, related_transaction_token:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::DisputeV2::TransactionSeries} for more details.
        #
        #   Contains identifiers for the transaction and specific event within being
        #   disputed; null if no transaction can be identified
        #
        #   @param related_transaction_event_token [String, nil] Token of the specific event in the original transaction being disputed, in UUID
        #
        #   @param related_transaction_token [String] Token of the original transaction being disputed, in UUID format
        #
        #   @param type [Symbol, Lithic::Models::DisputeV2::TransactionSeries::Type] The type of transaction series associating the dispute and the original transact

        # The type of transaction series associating the dispute and the original
        # transaction. Always set to DISPUTE
        #
        # @see Lithic::Models::DisputeV2::TransactionSeries#type
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
