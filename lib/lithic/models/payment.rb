# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#retrieve
    class Payment < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Unique identifier for the transaction
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #   Transaction category
      #
      #   @return [Symbol, Lithic::Models::Payment::Category]
      required :category, enum: -> { Lithic::Payment::Category }

      # @!attribute created
      #   ISO 8601 timestamp of when the transaction was created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute descriptor
      #   Transaction descriptor
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute direction
      #   Transfer direction
      #
      #   @return [Symbol, Lithic::Models::Payment::Direction]
      required :direction, enum: -> { Lithic::Payment::Direction }

      # @!attribute events
      #   List of transaction events
      #
      #   @return [Array<Lithic::Models::Payment::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Payment::Event] }

      # @!attribute family
      #   PAYMENT - Payment Transaction
      #
      #   @return [Symbol, :PAYMENT]
      required :family, const: :PAYMENT

      # @!attribute financial_account_token
      #   Financial account token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute method_
      #   Transfer method
      #
      #   @return [Symbol, Lithic::Models::Payment::Method]
      required :method_, enum: -> { Lithic::Payment::Method }, api_name: :method

      # @!attribute method_attributes
      #   Method-specific attributes
      #
      #   @return [Lithic::Models::Payment::MethodAttributes::ACHMethodAttributes, Lithic::Models::Payment::MethodAttributes::WireMethodAttributes]
      required :method_attributes, union: -> { Lithic::Payment::MethodAttributes }

      # @!attribute pending_amount
      #   Pending amount in cents
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute related_account_tokens
      #   Account tokens related to a payment transaction
      #
      #   @return [Lithic::Models::Payment::RelatedAccountTokens, nil]
      required :related_account_tokens, -> { Lithic::Payment::RelatedAccountTokens }, nil?: true

      # @!attribute result
      #   Transaction result
      #
      #   @return [Symbol, Lithic::Models::Payment::Result]
      required :result, enum: -> { Lithic::Payment::Result }

      # @!attribute settled_amount
      #   Settled amount in cents
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute source
      #   Transaction source
      #
      #   @return [Symbol, Lithic::Models::Payment::Source]
      required :source, enum: -> { Lithic::Payment::Source }

      # @!attribute status
      #   The status of the transaction
      #
      #   @return [Symbol, Lithic::Models::Payment::Status]
      required :status, enum: -> { Lithic::Payment::Status }

      # @!attribute updated
      #   ISO 8601 timestamp of when the transaction was last updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute currency
      #   Currency of the transaction in ISO 4217 format
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute expected_release_date
      #   Expected release date for the transaction
      #
      #   @return [Date, nil]
      optional :expected_release_date, Date, nil?: true

      # @!attribute external_bank_account_token
      #   External bank account token
      #
      #   @return [String, nil]
      optional :external_bank_account_token, String, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Lithic::Models::Payment::Type, nil]
      optional :type, enum: -> { Lithic::Payment::Type }

      # @!attribute user_defined_id
      #   User-defined identifier
      #
      #   @return [String, nil]
      optional :user_defined_id, String, nil?: true

      # @!method initialize(token:, category:, created:, descriptor:, direction:, events:, financial_account_token:, method_:, method_attributes:, pending_amount:, related_account_tokens:, result:, settled_amount:, source:, status:, updated:, currency: nil, expected_release_date: nil, external_bank_account_token: nil, type: nil, user_defined_id: nil, family: :PAYMENT)
      #   Payment transaction
      #
      #   @param token [String] Unique identifier for the transaction
      #
      #   @param category [Symbol, Lithic::Models::Payment::Category] Transaction category
      #
      #   @param created [Time] ISO 8601 timestamp of when the transaction was created
      #
      #   @param descriptor [String] Transaction descriptor
      #
      #   @param direction [Symbol, Lithic::Models::Payment::Direction] Transfer direction
      #
      #   @param events [Array<Lithic::Models::Payment::Event>] List of transaction events
      #
      #   @param financial_account_token [String] Financial account token
      #
      #   @param method_ [Symbol, Lithic::Models::Payment::Method] Transfer method
      #
      #   @param method_attributes [Lithic::Models::Payment::MethodAttributes::ACHMethodAttributes, Lithic::Models::Payment::MethodAttributes::WireMethodAttributes] Method-specific attributes
      #
      #   @param pending_amount [Integer] Pending amount in cents
      #
      #   @param related_account_tokens [Lithic::Models::Payment::RelatedAccountTokens, nil] Account tokens related to a payment transaction
      #
      #   @param result [Symbol, Lithic::Models::Payment::Result] Transaction result
      #
      #   @param settled_amount [Integer] Settled amount in cents
      #
      #   @param source [Symbol, Lithic::Models::Payment::Source] Transaction source
      #
      #   @param status [Symbol, Lithic::Models::Payment::Status] The status of the transaction
      #
      #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
      #
      #   @param currency [String] Currency of the transaction in ISO 4217 format
      #
      #   @param expected_release_date [Date, nil] Expected release date for the transaction
      #
      #   @param external_bank_account_token [String, nil] External bank account token
      #
      #   @param type [Symbol, Lithic::Models::Payment::Type]
      #
      #   @param user_defined_id [String, nil] User-defined identifier
      #
      #   @param family [Symbol, :PAYMENT] PAYMENT - Payment Transaction

      # Transaction category
      #
      # @see Lithic::Models::Payment#category
      module Category
        extend Lithic::Internal::Type::Enum

        ACH = :ACH
        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        FEE = :FEE
        REWARD = :REWARD
        ADJUSTMENT = :ADJUSTMENT
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        CARD = :CARD
        EXTERNAL_ACH = :EXTERNAL_ACH
        EXTERNAL_CHECK = :EXTERNAL_CHECK
        EXTERNAL_FEDNOW = :EXTERNAL_FEDNOW
        EXTERNAL_RTP = :EXTERNAL_RTP
        EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
        EXTERNAL_WIRE = :EXTERNAL_WIRE
        MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
        MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
        MANAGEMENT_FEE = :MANAGEMENT_FEE
        MANAGEMENT_REWARD = :MANAGEMENT_REWARD
        MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT
        PROGRAM_FUNDING = :PROGRAM_FUNDING

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Transfer direction
      #
      # @see Lithic::Models::Payment#direction
      module Direction
        extend Lithic::Internal::Type::Enum

        CREDIT = :CREDIT
        DEBIT = :DEBIT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Event < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier.
        #
        #   @return [String]
        required :token, String

        # @!attribute amount
        #   Amount of the financial event that has been settled in the currency's smallest
        #   unit (e.g., cents).
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created
        #   Date and time when the financial event occurred. UTC time zone.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute result
        #   APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        #
        #   @return [Symbol, Lithic::Models::Payment::Event::Result]
        required :result, enum: -> { Lithic::Payment::Event::Result }

        # @!attribute type
        #   Event types:
        #
        #   - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
        #     approval/release from an ACH hold.
        #   - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
        #   - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
        #   - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
        #     the Federal Reserve.
        #   - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
        #   - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
        #     available balance.
        #   - `ACH_ORIGINATION_REJECTED` - ACH origination was rejected and not sent to the
        #     Federal Reserve.
        #   - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
        #   - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
        #   - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
        #     balance.
        #   - `ACH_RETURN_INITIATED` - ACH initiated return for an ACH receipt.
        #   - `ACH_RETURN_PROCESSED` - ACH receipt returned by the Receiving Depository
        #     Financial Institution.
        #   - `ACH_RETURN_SETTLED` - ACH return settled by the Receiving Depository
        #     Financial Institution.
        #   - `ACH_RETURN_REJECTED` - ACH return was rejected by the Receiving Depository
        #     Financial Institution.
        #
        #   @return [Symbol, Lithic::Models::Payment::Event::Type]
        required :type, enum: -> { Lithic::Payment::Event::Type }

        # @!attribute detailed_results
        #   More detailed reasons for the event
        #
        #   @return [Array<Symbol, Lithic::Models::Payment::Event::DetailedResult>, nil]
        optional :detailed_results,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Payment::Event::DetailedResult] }

        # @!attribute external_id
        #   Payment event external ID, for example, ACH trace number.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!method initialize(token:, amount:, created:, result:, type:, detailed_results: nil, external_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Payment::Event} for more details.
        #
        #   Payment Event
        #
        #   @param token [String] Globally unique identifier.
        #
        #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
        #
        #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
        #
        #   @param result [Symbol, Lithic::Models::Payment::Event::Result] APPROVED financial events were successful while DECLINED financial events were d
        #
        #   @param type [Symbol, Lithic::Models::Payment::Event::Type] Event types:
        #
        #   @param detailed_results [Array<Symbol, Lithic::Models::Payment::Event::DetailedResult>] More detailed reasons for the event
        #
        #   @param external_id [String, nil] Payment event external ID, for example, ACH trace number.

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        #
        # @see Lithic::Models::Payment::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Event types:
        #
        # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
        #   approval/release from an ACH hold.
        # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
        # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
        # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
        #   the Federal Reserve.
        # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
        # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
        #   available balance.
        # - `ACH_ORIGINATION_REJECTED` - ACH origination was rejected and not sent to the
        #   Federal Reserve.
        # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
        # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
        # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
        #   balance.
        # - `ACH_RETURN_INITIATED` - ACH initiated return for an ACH receipt.
        # - `ACH_RETURN_PROCESSED` - ACH receipt returned by the Receiving Depository
        #   Financial Institution.
        # - `ACH_RETURN_SETTLED` - ACH return settled by the Receiving Depository
        #   Financial Institution.
        # - `ACH_RETURN_REJECTED` - ACH return was rejected by the Receiving Depository
        #   Financial Institution.
        #
        # @see Lithic::Models::Payment::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          ACH_ORIGINATION_CANCELLED = :ACH_ORIGINATION_CANCELLED
          ACH_ORIGINATION_INITIATED = :ACH_ORIGINATION_INITIATED
          ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
          ACH_ORIGINATION_REJECTED = :ACH_ORIGINATION_REJECTED
          ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
          ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
          ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
          ACH_RECEIPT_PROCESSED = :ACH_RECEIPT_PROCESSED
          ACH_RECEIPT_RELEASED = :ACH_RECEIPT_RELEASED
          ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
          ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
          ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
          ACH_RETURN_REJECTED = :ACH_RETURN_REJECTED
          ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED
          FUNDS_INSUFFICIENT = :FUNDS_INSUFFICIENT
          ACCOUNT_INVALID = :ACCOUNT_INVALID
          PROGRAM_TRANSACTION_LIMIT_EXCEEDED = :PROGRAM_TRANSACTION_LIMIT_EXCEEDED
          PROGRAM_DAILY_LIMIT_EXCEEDED = :PROGRAM_DAILY_LIMIT_EXCEEDED
          PROGRAM_MONTHLY_LIMIT_EXCEEDED = :PROGRAM_MONTHLY_LIMIT_EXCEEDED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Transfer method
      #
      # @see Lithic::Models::Payment#method_
      module Method
        extend Lithic::Internal::Type::Enum

        ACH_NEXT_DAY = :ACH_NEXT_DAY
        ACH_SAME_DAY = :ACH_SAME_DAY
        WIRE = :WIRE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Method-specific attributes
      #
      # @see Lithic::Models::Payment#method_attributes
      module MethodAttributes
        extend Lithic::Internal::Type::Union

        variant -> { Lithic::Payment::MethodAttributes::ACHMethodAttributes }

        variant -> { Lithic::Payment::MethodAttributes::WireMethodAttributes }

        class ACHMethodAttributes < Lithic::Internal::Type::BaseModel
          # @!attribute sec_code
          #   SEC code for ACH transaction
          #
          #   @return [Symbol, Lithic::Models::Payment::MethodAttributes::ACHMethodAttributes::SecCode]
          required :sec_code, enum: -> { Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode }

          # @!attribute ach_hold_period
          #   Number of days the ACH transaction is on hold
          #
          #   @return [Integer, nil]
          optional :ach_hold_period, Integer, nil?: true

          # @!attribute addenda
          #   Addenda information
          #
          #   @return [String, nil]
          optional :addenda, String, nil?: true

          # @!attribute company_id
          #   Company ID for the ACH transaction
          #
          #   @return [String, nil]
          optional :company_id, String, nil?: true

          # @!attribute receipt_routing_number
          #   Receipt routing number
          #
          #   @return [String, nil]
          optional :receipt_routing_number, String, nil?: true

          # @!attribute retries
          #   Number of retries attempted
          #
          #   @return [Integer, nil]
          optional :retries, Integer, nil?: true

          # @!attribute return_reason_code
          #   Return reason code if the transaction was returned
          #
          #   @return [String, nil]
          optional :return_reason_code, String, nil?: true

          # @!attribute trace_numbers
          #   Trace numbers for the ACH transaction
          #
          #   @return [Array<String>, nil]
          optional :trace_numbers, Lithic::Internal::Type::ArrayOf[String]

          # @!method initialize(sec_code:, ach_hold_period: nil, addenda: nil, company_id: nil, receipt_routing_number: nil, retries: nil, return_reason_code: nil, trace_numbers: nil)
          #   @param sec_code [Symbol, Lithic::Models::Payment::MethodAttributes::ACHMethodAttributes::SecCode] SEC code for ACH transaction
          #
          #   @param ach_hold_period [Integer, nil] Number of days the ACH transaction is on hold
          #
          #   @param addenda [String, nil] Addenda information
          #
          #   @param company_id [String, nil] Company ID for the ACH transaction
          #
          #   @param receipt_routing_number [String, nil] Receipt routing number
          #
          #   @param retries [Integer, nil] Number of retries attempted
          #
          #   @param return_reason_code [String, nil] Return reason code if the transaction was returned
          #
          #   @param trace_numbers [Array<String>] Trace numbers for the ACH transaction

          # SEC code for ACH transaction
          #
          # @see Lithic::Models::Payment::MethodAttributes::ACHMethodAttributes#sec_code
          module SecCode
            extend Lithic::Internal::Type::Enum

            CCD = :CCD
            PPD = :PPD
            WEB = :WEB
            TEL = :TEL
            CIE = :CIE
            CTX = :CTX

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class WireMethodAttributes < Lithic::Internal::Type::BaseModel
          # @!attribute wire_message_type
          #   Type of wire message
          #
          #   @return [String, nil]
          required :wire_message_type, String, nil?: true

          # @!attribute wire_network
          #   Type of wire transfer
          #
          #   @return [Symbol, Lithic::Models::Payment::MethodAttributes::WireMethodAttributes::WireNetwork]
          required :wire_network, enum: -> { Lithic::Payment::MethodAttributes::WireMethodAttributes::WireNetwork }

          # @!attribute creditor
          #
          #   @return [Lithic::Models::WirePartyDetails, nil]
          optional :creditor, -> { Lithic::WirePartyDetails }

          # @!attribute debtor
          #
          #   @return [Lithic::Models::WirePartyDetails, nil]
          optional :debtor, -> { Lithic::WirePartyDetails }

          # @!attribute message_id
          #   Point to point reference identifier, as assigned by the instructing party, used
          #   for tracking the message through the Fedwire system
          #
          #   @return [String, nil]
          optional :message_id, String, nil?: true

          # @!attribute remittance_information
          #   Payment details or invoice reference
          #
          #   @return [String, nil]
          optional :remittance_information, String, nil?: true

          # @!method initialize(wire_message_type:, wire_network:, creditor: nil, debtor: nil, message_id: nil, remittance_information: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::Payment::MethodAttributes::WireMethodAttributes} for more
          #   details.
          #
          #   @param wire_message_type [String, nil] Type of wire message
          #
          #   @param wire_network [Symbol, Lithic::Models::Payment::MethodAttributes::WireMethodAttributes::WireNetwork] Type of wire transfer
          #
          #   @param creditor [Lithic::Models::WirePartyDetails]
          #
          #   @param debtor [Lithic::Models::WirePartyDetails]
          #
          #   @param message_id [String, nil] Point to point reference identifier, as assigned by the instructing party, used
          #
          #   @param remittance_information [String, nil] Payment details or invoice reference

          # Type of wire transfer
          #
          # @see Lithic::Models::Payment::MethodAttributes::WireMethodAttributes#wire_network
          module WireNetwork
            extend Lithic::Internal::Type::Enum

            FEDWIRE = :FEDWIRE
            SWIFT = :SWIFT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::Payment::MethodAttributes::ACHMethodAttributes, Lithic::Models::Payment::MethodAttributes::WireMethodAttributes)]
      end

      # @see Lithic::Models::Payment#related_account_tokens
      class RelatedAccountTokens < Lithic::Internal::Type::BaseModel
        # @!attribute account_token
        #   Globally unique identifier for the account
        #
        #   @return [String, nil]
        required :account_token, String, nil?: true

        # @!attribute business_account_token
        #   Globally unique identifier for the business account
        #
        #   @return [String, nil]
        required :business_account_token, String, nil?: true

        # @!method initialize(account_token:, business_account_token:)
        #   Account tokens related to a payment transaction
        #
        #   @param account_token [String, nil] Globally unique identifier for the account
        #
        #   @param business_account_token [String, nil] Globally unique identifier for the business account
      end

      # Transaction result
      #
      # @see Lithic::Models::Payment#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Transaction source
      #
      # @see Lithic::Models::Payment#source
      module Source
        extend Lithic::Internal::Type::Enum

        LITHIC = :LITHIC
        EXTERNAL = :EXTERNAL
        CUSTOMER = :CUSTOMER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the transaction
      #
      # @see Lithic::Models::Payment#status
      module Status
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED
        RETURNED = :RETURNED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::Payment#type
      module Type
        extend Lithic::Internal::Type::Enum

        ORIGINATION_CREDIT = :ORIGINATION_CREDIT
        ORIGINATION_DEBIT = :ORIGINATION_DEBIT
        RECEIPT_CREDIT = :RECEIPT_CREDIT
        RECEIPT_DEBIT = :RECEIPT_DEBIT
        WIRE_INBOUND_PAYMENT = :WIRE_INBOUND_PAYMENT
        WIRE_INBOUND_ADMIN = :WIRE_INBOUND_ADMIN
        WIRE_OUTBOUND_PAYMENT = :WIRE_OUTBOUND_PAYMENT
        WIRE_OUTBOUND_ADMIN = :WIRE_OUTBOUND_ADMIN
        WIRE_DRAWDOWN_REQUEST = :WIRE_DRAWDOWN_REQUEST

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
