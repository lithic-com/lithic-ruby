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
      sig { returns(Lithic::Models::Payment::Category::TaggedSymbol) }
      def category
      end

      sig do
        params(_: Lithic::Models::Payment::Category::TaggedSymbol)
          .returns(Lithic::Models::Payment::Category::TaggedSymbol)
      end
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

      sig { returns(Lithic::Models::Payment::Direction::TaggedSymbol) }
      def direction
      end

      sig do
        params(_: Lithic::Models::Payment::Direction::TaggedSymbol)
          .returns(Lithic::Models::Payment::Direction::TaggedSymbol)
      end
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

      sig { returns(Lithic::Models::Payment::Method::TaggedSymbol) }
      def method_
      end

      sig do
        params(_: Lithic::Models::Payment::Method::TaggedSymbol)
          .returns(Lithic::Models::Payment::Method::TaggedSymbol)
      end
      def method_=(_)
      end

      sig { returns(Lithic::Models::Payment::MethodAttributes) }
      def method_attributes
      end

      sig do
        params(_: T.any(Lithic::Models::Payment::MethodAttributes, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Payment::MethodAttributes, Lithic::Util::AnyHash))
      end
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
      sig { returns(Lithic::Models::Payment::Result::TaggedSymbol) }
      def result
      end

      sig do
        params(_: Lithic::Models::Payment::Result::TaggedSymbol)
          .returns(Lithic::Models::Payment::Result::TaggedSymbol)
      end
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

      sig { returns(Lithic::Models::Payment::Source::TaggedSymbol) }
      def source
      end

      sig do
        params(_: Lithic::Models::Payment::Source::TaggedSymbol)
          .returns(Lithic::Models::Payment::Source::TaggedSymbol)
      end
      def source=(_)
      end

      # Status types:
      #
      #   - `DECLINED` - The payment was declined.
      #   - `PENDING` - The payment is being processed and has yet to settle or release
      #     (origination debit).
      #   - `RETURNED` - The payment has been returned.
      #   - `SETTLED` - The payment is completed.
      sig { returns(Lithic::Models::Payment::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Lithic::Models::Payment::Status::TaggedSymbol)
          .returns(Lithic::Models::Payment::Status::TaggedSymbol)
      end
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
          category: Lithic::Models::Payment::Category::TaggedSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          direction: Lithic::Models::Payment::Direction::TaggedSymbol,
          events: T::Array[Lithic::Models::Payment::Event],
          external_bank_account_token: T.nilable(String),
          financial_account_token: String,
          method_: Lithic::Models::Payment::Method::TaggedSymbol,
          method_attributes: Lithic::Models::Payment::MethodAttributes,
          pending_amount: Integer,
          result: Lithic::Models::Payment::Result::TaggedSymbol,
          settled_amount: Integer,
          source: Lithic::Models::Payment::Source::TaggedSymbol,
          status: Lithic::Models::Payment::Status::TaggedSymbol,
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
              category: Lithic::Models::Payment::Category::TaggedSymbol,
              created: Time,
              currency: String,
              descriptor: String,
              direction: Lithic::Models::Payment::Direction::TaggedSymbol,
              events: T::Array[Lithic::Models::Payment::Event],
              external_bank_account_token: T.nilable(String),
              financial_account_token: String,
              method_: Lithic::Models::Payment::Method::TaggedSymbol,
              method_attributes: Lithic::Models::Payment::MethodAttributes,
              pending_amount: Integer,
              result: Lithic::Models::Payment::Result::TaggedSymbol,
              settled_amount: Integer,
              source: Lithic::Models::Payment::Source::TaggedSymbol,
              status: Lithic::Models::Payment::Status::TaggedSymbol,
              updated: Time,
              user_defined_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      # Payment category
      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Category::TaggedSymbol) }

        ACH = T.let(:ACH, Lithic::Models::Payment::Category::TaggedSymbol)
      end

      module Direction
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Direction::TaggedSymbol) }

        CREDIT = T.let(:CREDIT, Lithic::Models::Payment::Direction::TaggedSymbol)
        DEBIT = T.let(:DEBIT, Lithic::Models::Payment::Direction::TaggedSymbol)
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
        sig { returns(Lithic::Models::Payment::Event::Result::TaggedSymbol) }
        def result
        end

        sig do
          params(_: Lithic::Models::Payment::Event::Result::TaggedSymbol)
            .returns(Lithic::Models::Payment::Event::Result::TaggedSymbol)
        end
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
        sig { returns(Lithic::Models::Payment::Event::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Lithic::Models::Payment::Event::Type::TaggedSymbol)
            .returns(Lithic::Models::Payment::Event::Type::TaggedSymbol)
        end
        def type=(_)
        end

        # More detailed reasons for the event
        sig { returns(T.nilable(T::Array[Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol])) }
        def detailed_results
        end

        sig do
          params(_: T::Array[Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol])
            .returns(T::Array[Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol])
        end
        def detailed_results=(_)
        end

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Lithic::Models::Payment::Event::Result::TaggedSymbol,
            type: Lithic::Models::Payment::Event::Type::TaggedSymbol,
            detailed_results: T::Array[Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol]
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
                result: Lithic::Models::Payment::Event::Result::TaggedSymbol,
                type: Lithic::Models::Payment::Event::Type::TaggedSymbol,
                detailed_results: T::Array[Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol]
              }
            )
        end
        def to_hash
        end

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        module Result
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Event::Result::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::Payment::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::Payment::Event::Result::TaggedSymbol)
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
        module Type
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Event::Type::TaggedSymbol) }

          ACH_ORIGINATION_CANCELLED =
            T.let(:ACH_ORIGINATION_CANCELLED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_INITIATED =
            T.let(:ACH_ORIGINATION_INITIATED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_PROCESSED =
            T.let(:ACH_ORIGINATION_PROCESSED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_SETTLED =
            T.let(:ACH_ORIGINATION_SETTLED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_RELEASED =
            T.let(:ACH_ORIGINATION_RELEASED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_REVIEWED =
            T.let(:ACH_ORIGINATION_REVIEWED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_RECEIPT_PROCESSED = T.let(:ACH_RECEIPT_PROCESSED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_RECEIPT_SETTLED = T.let(:ACH_RECEIPT_SETTLED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_RETURN_INITIATED = T.let(:ACH_RETURN_INITIATED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_RETURN_PROCESSED = T.let(:ACH_RETURN_PROCESSED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
          ACH_RETURN_SETTLED = T.let(:ACH_RETURN_SETTLED, Lithic::Models::Payment::Event::Type::TaggedSymbol)
        end

        module DetailedResult
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Event::DetailedResult) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol)
          FUNDS_INSUFFICIENT =
            T.let(:FUNDS_INSUFFICIENT, Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol)
          ACCOUNT_INVALID = T.let(:ACCOUNT_INVALID, Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol)
          PROGRAM_TRANSACTION_LIMIT_EXCEEDED =
            T.let(:PROGRAM_TRANSACTION_LIMIT_EXCEEDED, Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol)
          PROGRAM_DAILY_LIMIT_EXCEEDED =
            T.let(:PROGRAM_DAILY_LIMIT_EXCEEDED, Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol)
          PROGRAM_MONTHLY_LIMIT_EXCEEDED =
            T.let(:PROGRAM_MONTHLY_LIMIT_EXCEEDED, Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol)
        end
      end

      module Method
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Method::TaggedSymbol) }

        ACH_NEXT_DAY = T.let(:ACH_NEXT_DAY, Lithic::Models::Payment::Method::TaggedSymbol)
        ACH_SAME_DAY = T.let(:ACH_SAME_DAY, Lithic::Models::Payment::Method::TaggedSymbol)
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

        sig { returns(Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol) }
        def sec_code
        end

        sig do
          params(_: Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol)
            .returns(Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol)
        end
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
            sec_code: Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol,
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
                sec_code: Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol,
                trace_numbers: T::Array[T.nilable(String)]
              }
            )
        end
        def to_hash
        end

        module SecCode
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::MethodAttributes::SecCode) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol) }

          CCD = T.let(:CCD, Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol)
          PPD = T.let(:PPD, Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol)
          WEB = T.let(:WEB, Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol)
        end
      end

      # APPROVED payments were successful while DECLINED payments were declined by
      #   Lithic or returned.
      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::Payment::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::Payment::Result::TaggedSymbol)
      end

      module Source
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Source::TaggedSymbol) }

        CUSTOMER = T.let(:CUSTOMER, Lithic::Models::Payment::Source::TaggedSymbol)
        LITHIC = T.let(:LITHIC, Lithic::Models::Payment::Source::TaggedSymbol)
      end

      # Status types:
      #
      #   - `DECLINED` - The payment was declined.
      #   - `PENDING` - The payment is being processed and has yet to settle or release
      #     (origination debit).
      #   - `RETURNED` - The payment has been returned.
      #   - `SETTLED` - The payment is completed.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Payment::Status::TaggedSymbol) }

        DECLINED = T.let(:DECLINED, Lithic::Models::Payment::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::Payment::Status::TaggedSymbol)
        RETURNED = T.let(:RETURNED, Lithic::Models::Payment::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::Payment::Status::TaggedSymbol)
      end
    end
  end
end
