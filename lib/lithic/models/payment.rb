# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#retrieve
    class Payment < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #   Payment category
      #
      #   @return [Symbol, Lithic::Models::Payment::Category]
      required :category, enum: -> { Lithic::Models::Payment::Category }

      # @!attribute created
      #   Date and time when the payment first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the payment.
      #
      #   @return [String]
      required :currency, String

      # @!attribute descriptor
      #   A string that provides a description of the payment; may be useful to display to
      #   users.
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute direction
      #
      #   @return [Symbol, Lithic::Models::Payment::Direction]
      required :direction, enum: -> { Lithic::Models::Payment::Direction }

      # @!attribute events
      #   A list of all payment events that have modified this payment.
      #
      #   @return [Array<Lithic::Models::Payment::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Payment::Event] }

      # @!attribute external_bank_account_token
      #
      #   @return [String, nil]
      required :external_bank_account_token, String, nil?: true

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute method_
      #
      #   @return [Symbol, Lithic::Models::Payment::Method]
      required :method_, enum: -> { Lithic::Models::Payment::Method }, api_name: :method

      # @!attribute method_attributes
      #
      #   @return [Lithic::Models::Payment::MethodAttributes]
      required :method_attributes, -> { Lithic::Models::Payment::MethodAttributes }

      # @!attribute pending_amount
      #   Pending amount of the payment in the currency's smallest unit (e.g., cents). The
      #   value of this field will go to zero over time once the payment is settled.
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #   APPROVED payments were successful while DECLINED payments were declined by
      #   Lithic or returned.
      #
      #   @return [Symbol, Lithic::Models::Payment::Result]
      required :result, enum: -> { Lithic::Models::Payment::Result }

      # @!attribute settled_amount
      #   Amount of the payment that has been settled in the currency's smallest unit
      #   (e.g., cents).
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute source
      #
      #   @return [Symbol, Lithic::Models::Payment::Source]
      required :source, enum: -> { Lithic::Models::Payment::Source }

      # @!attribute status
      #   Status types:
      #
      #   - `DECLINED` - The payment was declined.
      #   - `PENDING` - The payment is being processed and has yet to settle or release
      #     (origination debit).
      #   - `RETURNED` - The payment has been returned.
      #   - `SETTLED` - The payment is completed.
      #
      #   @return [Symbol, Lithic::Models::Payment::Status]
      required :status, enum: -> { Lithic::Models::Payment::Status }

      # @!attribute updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      required :user_defined_id, String, nil?: true

      # @!attribute [r] expected_release_date
      #   Date when the financial transaction expected to be released after settlement
      #
      #   @return [Date, nil]
      optional :expected_release_date, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :expected_release_date

      # @!parse
      #   # @param token [String]
      #   # @param category [Symbol, Lithic::Models::Payment::Category]
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param descriptor [String]
      #   # @param direction [Symbol, Lithic::Models::Payment::Direction]
      #   # @param events [Array<Lithic::Models::Payment::Event>]
      #   # @param external_bank_account_token [String, nil]
      #   # @param financial_account_token [String]
      #   # @param method_ [Symbol, Lithic::Models::Payment::Method]
      #   # @param method_attributes [Lithic::Models::Payment::MethodAttributes]
      #   # @param pending_amount [Integer]
      #   # @param result [Symbol, Lithic::Models::Payment::Result]
      #   # @param settled_amount [Integer]
      #   # @param source [Symbol, Lithic::Models::Payment::Source]
      #   # @param status [Symbol, Lithic::Models::Payment::Status]
      #   # @param updated [Time]
      #   # @param user_defined_id [String, nil]
      #   # @param expected_release_date [Date]
      #   #
      #   def initialize(
      #     token:,
      #     category:,
      #     created:,
      #     currency:,
      #     descriptor:,
      #     direction:,
      #     events:,
      #     external_bank_account_token:,
      #     financial_account_token:,
      #     method_:,
      #     method_attributes:,
      #     pending_amount:,
      #     result:,
      #     settled_amount:,
      #     source:,
      #     status:,
      #     updated:,
      #     user_defined_id:,
      #     expected_release_date: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # Payment category
      #
      # @see Lithic::Models::Payment#category
      module Category
        extend Lithic::Internal::Type::Enum

        ACH = :ACH

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Lithic::Models::Payment#direction
      module Direction
        extend Lithic::Internal::Type::Enum

        CREDIT = :CREDIT
        DEBIT = :DEBIT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
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
        required :result, enum: -> { Lithic::Models::Payment::Event::Result }

        # @!attribute type
        #   Event types:
        #
        #   - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
        #     approval/release from an ACH hold.
        #   - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
        #   - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
        #   - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
        #     the fed.
        #   - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
        #   - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
        #     available balance.
        #   - `ACH_RETURN_PROCESSED` - ACH origination returned by the Receiving Depository
        #     Financial Institution.
        #   - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
        #   - `ACH_RETURN_INITIATED` - ACH initiated return for a ACH receipt.
        #   - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
        #   - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
        #     balance.
        #   - `ACH_RETURN_SETTLED` - ACH receipt return settled by the Receiving Depository
        #     Financial Institution.
        #
        #   @return [Symbol, Lithic::Models::Payment::Event::Type]
        required :type, enum: -> { Lithic::Models::Payment::Event::Type }

        # @!attribute [r] detailed_results
        #   More detailed reasons for the event
        #
        #   @return [Array<Symbol, Lithic::Models::Payment::Event::DetailedResult>, nil]
        optional :detailed_results,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::Payment::Event::DetailedResult] }

        # @!parse
        #   # @return [Array<Symbol, Lithic::Models::Payment::Event::DetailedResult>]
        #   attr_writer :detailed_results

        # @!parse
        #   # @param token [String]
        #   # @param amount [Integer]
        #   # @param created [Time]
        #   # @param result [Symbol, Lithic::Models::Payment::Event::Result]
        #   # @param type [Symbol, Lithic::Models::Payment::Event::Type]
        #   # @param detailed_results [Array<Symbol, Lithic::Models::Payment::Event::DetailedResult>]
        #   #
        #   def initialize(token:, amount:, created:, result:, type:, detailed_results: nil, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        #
        # @see Lithic::Models::Payment::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Event types:
        #
        # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
        #   approval/release from an ACH hold.
        # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
        # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
        # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
        #   the fed.
        # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
        # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
        #   available balance.
        # - `ACH_RETURN_PROCESSED` - ACH origination returned by the Receiving Depository
        #   Financial Institution.
        # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
        # - `ACH_RETURN_INITIATED` - ACH initiated return for a ACH receipt.
        # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
        # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
        #   balance.
        # - `ACH_RETURN_SETTLED` - ACH receipt return settled by the Receiving Depository
        #   Financial Institution.
        #
        # @see Lithic::Models::Payment::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          ACH_ORIGINATION_CANCELLED = :ACH_ORIGINATION_CANCELLED
          ACH_ORIGINATION_INITIATED = :ACH_ORIGINATION_INITIATED
          ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
          ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
          ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
          ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
          ACH_RECEIPT_PROCESSED = :ACH_RECEIPT_PROCESSED
          ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
          ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
          ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
          ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          FUNDS_INSUFFICIENT = :FUNDS_INSUFFICIENT
          ACCOUNT_INVALID = :ACCOUNT_INVALID
          PROGRAM_TRANSACTION_LIMIT_EXCEEDED = :PROGRAM_TRANSACTION_LIMIT_EXCEEDED
          PROGRAM_DAILY_LIMIT_EXCEEDED = :PROGRAM_DAILY_LIMIT_EXCEEDED
          PROGRAM_MONTHLY_LIMIT_EXCEEDED = :PROGRAM_MONTHLY_LIMIT_EXCEEDED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Lithic::Models::Payment#method_
      module Method
        extend Lithic::Internal::Type::Enum

        ACH_NEXT_DAY = :ACH_NEXT_DAY
        ACH_SAME_DAY = :ACH_SAME_DAY

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Lithic::Models::Payment#method_attributes
      class MethodAttributes < Lithic::Internal::Type::BaseModel
        # @!attribute company_id
        #
        #   @return [String, nil]
        required :company_id, String, nil?: true

        # @!attribute receipt_routing_number
        #
        #   @return [String, nil]
        required :receipt_routing_number, String, nil?: true

        # @!attribute retries
        #
        #   @return [Integer, nil]
        required :retries, Integer, nil?: true

        # @!attribute return_reason_code
        #
        #   @return [String, nil]
        required :return_reason_code, String, nil?: true

        # @!attribute sec_code
        #
        #   @return [Symbol, Lithic::Models::Payment::MethodAttributes::SecCode]
        required :sec_code, enum: -> { Lithic::Models::Payment::MethodAttributes::SecCode }

        # @!attribute trace_numbers
        #
        #   @return [Array<String, nil>]
        required :trace_numbers, Lithic::Internal::Type::ArrayOf[String, nil?: true]

        # @!parse
        #   # @param company_id [String, nil]
        #   # @param receipt_routing_number [String, nil]
        #   # @param retries [Integer, nil]
        #   # @param return_reason_code [String, nil]
        #   # @param sec_code [Symbol, Lithic::Models::Payment::MethodAttributes::SecCode]
        #   # @param trace_numbers [Array<String, nil>]
        #   #
        #   def initialize(company_id:, receipt_routing_number:, retries:, return_reason_code:, sec_code:, trace_numbers:, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        # @see Lithic::Models::Payment::MethodAttributes#sec_code
        module SecCode
          extend Lithic::Internal::Type::Enum

          CCD = :CCD
          PPD = :PPD
          WEB = :WEB

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # APPROVED payments were successful while DECLINED payments were declined by
      # Lithic or returned.
      #
      # @see Lithic::Models::Payment#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Lithic::Models::Payment#source
      module Source
        extend Lithic::Internal::Type::Enum

        CUSTOMER = :CUSTOMER
        LITHIC = :LITHIC

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Status types:
      #
      # - `DECLINED` - The payment was declined.
      # - `PENDING` - The payment is being processed and has yet to settle or release
      #   (origination debit).
      # - `RETURNED` - The payment has been returned.
      # - `SETTLED` - The payment is completed.
      #
      # @see Lithic::Models::Payment#status
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        PENDING = :PENDING
        RETURNED = :RETURNED
        SETTLED = :SETTLED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
