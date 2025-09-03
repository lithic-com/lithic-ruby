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
      required :category, enum: -> { Lithic::Payment::Category }

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
      required :direction, enum: -> { Lithic::Payment::Direction }

      # @!attribute events
      #   A list of all payment events that have modified this payment.
      #
      #   @return [Array<Lithic::Models::Payment::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Payment::Event] }

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
      required :method_, enum: -> { Lithic::Payment::Method }, api_name: :method

      # @!attribute method_attributes
      #
      #   @return [Lithic::Models::Payment::MethodAttributes]
      required :method_attributes, -> { Lithic::Payment::MethodAttributes }

      # @!attribute pending_amount
      #   Pending amount of the payment in the currency's smallest unit (e.g., cents). The
      #   value of this field will go to zero over time once the payment is settled.
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute related_account_tokens
      #   Account tokens related to a payment transaction
      #
      #   @return [Lithic::Models::Payment::RelatedAccountTokens]
      required :related_account_tokens, -> { Lithic::Payment::RelatedAccountTokens }

      # @!attribute result
      #   APPROVED payments were successful while DECLINED payments were declined by
      #   Lithic or returned.
      #
      #   @return [Symbol, Lithic::Models::Payment::Result]
      required :result, enum: -> { Lithic::Payment::Result }

      # @!attribute settled_amount
      #   Amount of the payment that has been settled in the currency's smallest unit
      #   (e.g., cents).
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute source
      #
      #   @return [Symbol, Lithic::Models::Payment::Source]
      required :source, enum: -> { Lithic::Payment::Source }

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
      required :status, enum: -> { Lithic::Payment::Status }

      # @!attribute updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      required :user_defined_id, String, nil?: true

      # @!attribute expected_release_date
      #   Date when the financial transaction expected to be released after settlement
      #
      #   @return [Date, nil]
      optional :expected_release_date, Date

      # @!attribute type
      #   Payment type indicating the specific ACH message or Fedwire transfer type
      #
      #   @return [Symbol, Lithic::Models::Payment::Type, nil]
      optional :type, enum: -> { Lithic::Payment::Type }

      # @!method initialize(token:, category:, created:, currency:, descriptor:, direction:, events:, external_bank_account_token:, financial_account_token:, method_:, method_attributes:, pending_amount:, related_account_tokens:, result:, settled_amount:, source:, status:, updated:, user_defined_id:, expected_release_date: nil, type: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Payment}
      #   for more details.
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param category [Symbol, Lithic::Models::Payment::Category] Payment category
      #
      #   @param created [Time] Date and time when the payment first occurred. UTC time zone.
      #
      #   @param currency [String] 3-character alphabetic ISO 4217 code for the settling currency of the payment.
      #
      #   @param descriptor [String] A string that provides a description of the payment; may be useful to display to
      #
      #   @param direction [Symbol, Lithic::Models::Payment::Direction]
      #
      #   @param events [Array<Lithic::Models::Payment::Event>] A list of all payment events that have modified this payment.
      #
      #   @param external_bank_account_token [String, nil]
      #
      #   @param financial_account_token [String]
      #
      #   @param method_ [Symbol, Lithic::Models::Payment::Method]
      #
      #   @param method_attributes [Lithic::Models::Payment::MethodAttributes]
      #
      #   @param pending_amount [Integer] Pending amount of the payment in the currency's smallest unit (e.g., cents).
      #
      #   @param related_account_tokens [Lithic::Models::Payment::RelatedAccountTokens] Account tokens related to a payment transaction
      #
      #   @param result [Symbol, Lithic::Models::Payment::Result] APPROVED payments were successful while DECLINED payments were declined by Lithi
      #
      #   @param settled_amount [Integer] Amount of the payment that has been settled in the currency's smallest unit (e.g
      #
      #   @param source [Symbol, Lithic::Models::Payment::Source]
      #
      #   @param status [Symbol, Lithic::Models::Payment::Status] Status types:
      #
      #   @param updated [Time] Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @param user_defined_id [String, nil]
      #
      #   @param expected_release_date [Date] Date when the financial transaction expected to be released after settlement
      #
      #   @param type [Symbol, Lithic::Models::Payment::Type] Payment type indicating the specific ACH message or Fedwire transfer type

      # Payment category
      #
      # @see Lithic::Models::Payment#category
      module Category
        extend Lithic::Internal::Type::Enum

        ACH = :ACH

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
        required :type, enum: -> { Lithic::Payment::Event::Type }

        # @!attribute detailed_results
        #   More detailed reasons for the event
        #
        #   @return [Array<Symbol, Lithic::Models::Payment::Event::DetailedResult>, nil]
        optional :detailed_results,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Payment::Event::DetailedResult] }

        # @!method initialize(token:, amount:, created:, result:, type:, detailed_results: nil)
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

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          FUNDS_INSUFFICIENT = :FUNDS_INSUFFICIENT
          ACCOUNT_INVALID = :ACCOUNT_INVALID
          PROGRAM_TRANSACTION_LIMIT_EXCEEDED = :PROGRAM_TRANSACTION_LIMIT_EXCEEDED
          PROGRAM_DAILY_LIMIT_EXCEEDED = :PROGRAM_DAILY_LIMIT_EXCEEDED
          PROGRAM_MONTHLY_LIMIT_EXCEEDED = :PROGRAM_MONTHLY_LIMIT_EXCEEDED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Lithic::Models::Payment#method_
      module Method
        extend Lithic::Internal::Type::Enum

        ACH_NEXT_DAY = :ACH_NEXT_DAY
        ACH_SAME_DAY = :ACH_SAME_DAY

        # @!method self.values
        #   @return [Array<Symbol>]
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
        required :sec_code, enum: -> { Lithic::Payment::MethodAttributes::SecCode }

        # @!attribute trace_numbers
        #
        #   @return [Array<String, nil>]
        required :trace_numbers, Lithic::Internal::Type::ArrayOf[String, nil?: true]

        # @!attribute addenda
        #
        #   @return [String, nil]
        optional :addenda, String, nil?: true

        # @!method initialize(company_id:, receipt_routing_number:, retries:, return_reason_code:, sec_code:, trace_numbers:, addenda: nil)
        #   @param company_id [String, nil]
        #   @param receipt_routing_number [String, nil]
        #   @param retries [Integer, nil]
        #   @param return_reason_code [String, nil]
        #   @param sec_code [Symbol, Lithic::Models::Payment::MethodAttributes::SecCode]
        #   @param trace_numbers [Array<String, nil>]
        #   @param addenda [String, nil]

        # @see Lithic::Models::Payment::MethodAttributes#sec_code
        module SecCode
          extend Lithic::Internal::Type::Enum

          CCD = :CCD
          PPD = :PPD
          WEB = :WEB

          # @!method self.values
          #   @return [Array<Symbol>]
        end
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

      # APPROVED payments were successful while DECLINED payments were declined by
      # Lithic or returned.
      #
      # @see Lithic::Models::Payment#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::Payment#source
      module Source
        extend Lithic::Internal::Type::Enum

        CUSTOMER = :CUSTOMER
        LITHIC = :LITHIC

        # @!method self.values
        #   @return [Array<Symbol>]
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Payment type indicating the specific ACH message or Fedwire transfer type
      #
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
