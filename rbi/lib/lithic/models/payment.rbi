# typed: strong

module Lithic
  module Models
    class Payment < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Payment category
      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      # Date and time when the payment first occurred. UTC time zone.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # 3-character alphabetic ISO 4217 code for the settling currency of the payment.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # A string that provides a description of the payment; may be useful to display to
      #   users.
      sig { returns(String) }
      def descriptor
      end

      sig { params(_: String).returns(String) }
      def descriptor=(_)
      end

      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      # A list of all payment events that have modified this payment.
      sig { returns(T::Array[Lithic::Models::Payment::Event]) }
      def events
      end

      sig { params(_: T::Array[Lithic::Models::Payment::Event]).returns(T::Array[Lithic::Models::Payment::Event]) }
      def events=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_bank_account_token
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_bank_account_token=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(Symbol) }
      def method_
      end

      sig { params(_: Symbol).returns(Symbol) }
      def method_=(_)
      end

      sig { returns(Lithic::Models::Payment::MethodAttributes) }
      def method_attributes
      end

      sig { params(_: Lithic::Models::Payment::MethodAttributes).returns(Lithic::Models::Payment::MethodAttributes) }
      def method_attributes=(_)
      end

      # Pending amount of the payment in the currency's smallest unit (e.g., cents). The
      #   value of this field will go to zero over time once the payment is settled.
      sig { returns(Integer) }
      def pending_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def pending_amount=(_)
      end

      # APPROVED payments were successful while DECLINED payments were declined by
      #   Lithic or returned.
      sig { returns(Symbol) }
      def result
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result=(_)
      end

      # Amount of the payment that has been settled in the currency's smallest unit
      #   (e.g., cents).
      sig { returns(Integer) }
      def settled_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_amount=(_)
      end

      sig { returns(Symbol) }
      def source
      end

      sig { params(_: Symbol).returns(Symbol) }
      def source=(_)
      end

      # Status types:
      #
      #   - `DECLINED` - The payment was declined.
      #   - `PENDING` - The payment is being processed and has yet to settle or release
      #     (origination debit).
      #   - `RETURNED` - The payment has been returned.
      #   - `SETTLED` - The payment is completed.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_defined_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def user_defined_id=(_)
      end

      sig do
        params(
          token: String,
          category: Symbol,
          created: Time,
          currency: String,
          descriptor: String,
          direction: Symbol,
          events: T::Array[Lithic::Models::Payment::Event],
          external_bank_account_token: T.nilable(String),
          financial_account_token: String,
          method_: Symbol,
          method_attributes: Lithic::Models::Payment::MethodAttributes,
          pending_amount: Integer,
          result: Symbol,
          settled_amount: Integer,
          source: Symbol,
          status: Symbol,
          updated: Time,
          user_defined_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        category:,
        created:,
        currency:,
        descriptor:,
        direction:,
        events:,
        external_bank_account_token:,
        financial_account_token:,
        method_:,
        method_attributes:,
        pending_amount:,
        result:,
        settled_amount:,
        source:,
        status:,
        updated:,
        user_defined_id:
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              category: Symbol,
              created: Time,
              currency: String,
              descriptor: String,
              direction: Symbol,
              events: T::Array[Lithic::Models::Payment::Event],
              external_bank_account_token: T.nilable(String),
              financial_account_token: String,
              method_: Symbol,
              method_attributes: Lithic::Models::Payment::MethodAttributes,
              pending_amount: Integer,
              result: Symbol,
              settled_amount: Integer,
              source: Symbol,
              status: Symbol,
              updated: Time,
              user_defined_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      # Payment category
      class Category < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH = :ACH
      end

      class Direction < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CREDIT = :CREDIT
        DEBIT = :DEBIT
      end

      class Event < Lithic::BaseModel
        # Globally unique identifier.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Amount of the financial event that has been settled in the currency's smallest
        #   unit (e.g., cents).
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # Date and time when the financial event occurred. UTC time zone.
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        sig { returns(Symbol) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        # Event types:
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
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # More detailed reasons for the event
        sig { returns(T.nilable(T::Array[Symbol])) }
        def detailed_results
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def detailed_results=(_)
        end

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Symbol,
            type: Symbol,
            detailed_results: T::Array[Symbol]
          )
            .returns(T.attached_class)
        end
        def self.new(token:, amount:, created:, result:, type:, detailed_results: nil)
        end

        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                result: Symbol,
                type: Symbol,
                detailed_results: T::Array[Symbol]
              }
            )
        end
        def to_hash
        end

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        class Result < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPROVED = :APPROVED
          DECLINED = :DECLINED
        end

        # Event types:
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
        class Type < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end

        class DetailedResult < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPROVED = :APPROVED
          FUNDS_INSUFFICIENT = :FUNDS_INSUFFICIENT
          ACCOUNT_INVALID = :ACCOUNT_INVALID
          PROGRAM_TRANSACTION_LIMIT_EXCEEDED = :PROGRAM_TRANSACTION_LIMIT_EXCEEDED
          PROGRAM_DAILY_LIMIT_EXCEEDED = :PROGRAM_DAILY_LIMIT_EXCEEDED
          PROGRAM_MONTHLY_LIMIT_EXCEEDED = :PROGRAM_MONTHLY_LIMIT_EXCEEDED
        end
      end

      class Method < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH_NEXT_DAY = :ACH_NEXT_DAY
        ACH_SAME_DAY = :ACH_SAME_DAY
      end

      class MethodAttributes < Lithic::BaseModel
        sig { returns(T.nilable(String)) }
        def company_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def company_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def receipt_routing_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receipt_routing_number=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def retries
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def retries=(_)
        end

        sig { returns(T.nilable(String)) }
        def return_reason_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def return_reason_code=(_)
        end

        sig { returns(Symbol) }
        def sec_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def sec_code=(_)
        end

        sig { returns(T::Array[T.nilable(String)]) }
        def trace_numbers
        end

        sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
        def trace_numbers=(_)
        end

        sig do
          params(
            company_id: T.nilable(String),
            receipt_routing_number: T.nilable(String),
            retries: T.nilable(Integer),
            return_reason_code: T.nilable(String),
            sec_code: Symbol,
            trace_numbers: T::Array[T.nilable(String)]
          )
            .returns(T.attached_class)
        end
        def self.new(company_id:, receipt_routing_number:, retries:, return_reason_code:, sec_code:, trace_numbers:)
        end

        sig do
          override
            .returns(
              {
                company_id: T.nilable(String),
                receipt_routing_number: T.nilable(String),
                retries: T.nilable(Integer),
                return_reason_code: T.nilable(String),
                sec_code: Symbol,
                trace_numbers: T::Array[T.nilable(String)]
              }
            )
        end
        def to_hash
        end

        class SecCode < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CCD = :CCD
          PPD = :PPD
          WEB = :WEB
        end
      end

      # APPROVED payments were successful while DECLINED payments were declined by
      #   Lithic or returned.
      class Result < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        APPROVED = :APPROVED
        DECLINED = :DECLINED
      end

      class Source < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CUSTOMER = :CUSTOMER
        LITHIC = :LITHIC
      end

      # Status types:
      #
      #   - `DECLINED` - The payment was declined.
      #   - `PENDING` - The payment is being processed and has yet to settle or release
      #     (origination debit).
      #   - `RETURNED` - The payment has been returned.
      #   - `SETTLED` - The payment is completed.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DECLINED = :DECLINED
        PENDING = :PENDING
        RETURNED = :RETURNED
        SETTLED = :SETTLED
      end
    end
  end
end
