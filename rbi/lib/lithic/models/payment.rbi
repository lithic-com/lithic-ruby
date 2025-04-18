# typed: strong

module Lithic
  module Models
    class Payment < Lithic::Internal::Type::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Payment category
      sig { returns(Lithic::Models::Payment::Category::TaggedSymbol) }
      attr_accessor :category

      # Date and time when the payment first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code for the settling currency of the payment.
      sig { returns(String) }
      attr_accessor :currency

      # A string that provides a description of the payment; may be useful to display to
      # users.
      sig { returns(String) }
      attr_accessor :descriptor

      sig { returns(Lithic::Models::Payment::Direction::TaggedSymbol) }
      attr_accessor :direction

      # A list of all payment events that have modified this payment.
      sig { returns(T::Array[Lithic::Models::Payment::Event]) }
      attr_accessor :events

      sig { returns(T.nilable(String)) }
      attr_accessor :external_bank_account_token

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(Lithic::Models::Payment::Method::TaggedSymbol) }
      attr_accessor :method_

      sig { returns(Lithic::Models::Payment::MethodAttributes) }
      attr_reader :method_attributes

      sig do
        params(method_attributes: T.any(Lithic::Models::Payment::MethodAttributes, Lithic::Internal::AnyHash)).void
      end
      attr_writer :method_attributes

      # Pending amount of the payment in the currency's smallest unit (e.g., cents). The
      # value of this field will go to zero over time once the payment is settled.
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # APPROVED payments were successful while DECLINED payments were declined by
      # Lithic or returned.
      sig { returns(Lithic::Models::Payment::Result::TaggedSymbol) }
      attr_accessor :result

      # Amount of the payment that has been settled in the currency's smallest unit
      # (e.g., cents).
      sig { returns(Integer) }
      attr_accessor :settled_amount

      sig { returns(Lithic::Models::Payment::Source::TaggedSymbol) }
      attr_accessor :source

      # Status types:
      #
      # - `DECLINED` - The payment was declined.
      # - `PENDING` - The payment is being processed and has yet to settle or release
      #   (origination debit).
      # - `RETURNED` - The payment has been returned.
      # - `SETTLED` - The payment is completed.
      sig { returns(Lithic::Models::Payment::Status::TaggedSymbol) }
      attr_accessor :status

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(String)) }
      attr_accessor :user_defined_id

      # Date when the financial transaction expected to be released after settlement
      sig { returns(T.nilable(Date)) }
      attr_reader :expected_release_date

      sig { params(expected_release_date: Date).void }
      attr_writer :expected_release_date

      sig do
        params(
          token: String,
          category: Lithic::Models::Payment::Category::OrSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          direction: Lithic::Models::Payment::Direction::OrSymbol,
          events: T::Array[T.any(Lithic::Models::Payment::Event, Lithic::Internal::AnyHash)],
          external_bank_account_token: T.nilable(String),
          financial_account_token: String,
          method_: Lithic::Models::Payment::Method::OrSymbol,
          method_attributes: T.any(Lithic::Models::Payment::MethodAttributes, Lithic::Internal::AnyHash),
          pending_amount: Integer,
          result: Lithic::Models::Payment::Result::OrSymbol,
          settled_amount: Integer,
          source: Lithic::Models::Payment::Source::OrSymbol,
          status: Lithic::Models::Payment::Status::OrSymbol,
          updated: Time,
          user_defined_id: T.nilable(String),
          expected_release_date: Date
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
        user_defined_id:,
        expected_release_date: nil
      ); end
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
              user_defined_id: T.nilable(String),
              expected_release_date: Date
            }
          )
      end
      def to_hash; end

      # Payment category
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ACH, Lithic::Models::Payment::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Payment::Category::TaggedSymbol]) }
        def self.values; end
      end

      module Direction
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT = T.let(:CREDIT, Lithic::Models::Payment::Direction::TaggedSymbol)
        DEBIT = T.let(:DEBIT, Lithic::Models::Payment::Direction::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Payment::Direction::TaggedSymbol]) }
        def self.values; end
      end

      class Event < Lithic::Internal::Type::BaseModel
        # Globally unique identifier.
        sig { returns(String) }
        attr_accessor :token

        # Amount of the financial event that has been settled in the currency's smallest
        # unit (e.g., cents).
        sig { returns(Integer) }
        attr_accessor :amount

        # Date and time when the financial event occurred. UTC time zone.
        sig { returns(Time) }
        attr_accessor :created

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        sig { returns(Lithic::Models::Payment::Event::Result::TaggedSymbol) }
        attr_accessor :result

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
        sig { returns(Lithic::Models::Payment::Event::Type::TaggedSymbol) }
        attr_accessor :type

        # More detailed reasons for the event
        sig { returns(T.nilable(T::Array[Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol])) }
        attr_reader :detailed_results

        sig { params(detailed_results: T::Array[Lithic::Models::Payment::Event::DetailedResult::OrSymbol]).void }
        attr_writer :detailed_results

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Lithic::Models::Payment::Event::Result::OrSymbol,
            type: Lithic::Models::Payment::Event::Type::OrSymbol,
            detailed_results: T::Array[Lithic::Models::Payment::Event::DetailedResult::OrSymbol]
          )
            .returns(T.attached_class)
        end
        def self.new(token:, amount:, created:, result:, type:, detailed_results: nil); end

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
        def to_hash; end

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED = T.let(:APPROVED, Lithic::Models::Payment::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::Payment::Event::Result::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Payment::Event::Result::TaggedSymbol]) }
          def self.values; end
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
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

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

          sig { override.returns(T::Array[Lithic::Models::Payment::Event::Type::TaggedSymbol]) }
          def self.values; end
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Event::DetailedResult) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

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

          sig { override.returns(T::Array[Lithic::Models::Payment::Event::DetailedResult::TaggedSymbol]) }
          def self.values; end
        end
      end

      module Method
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_NEXT_DAY = T.let(:ACH_NEXT_DAY, Lithic::Models::Payment::Method::TaggedSymbol)
        ACH_SAME_DAY = T.let(:ACH_SAME_DAY, Lithic::Models::Payment::Method::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Payment::Method::TaggedSymbol]) }
        def self.values; end
      end

      class MethodAttributes < Lithic::Internal::Type::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :company_id

        sig { returns(T.nilable(String)) }
        attr_accessor :receipt_routing_number

        sig { returns(T.nilable(Integer)) }
        attr_accessor :retries

        sig { returns(T.nilable(String)) }
        attr_accessor :return_reason_code

        sig { returns(Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol) }
        attr_accessor :sec_code

        sig { returns(T::Array[T.nilable(String)]) }
        attr_accessor :trace_numbers

        sig do
          params(
            company_id: T.nilable(String),
            receipt_routing_number: T.nilable(String),
            retries: T.nilable(Integer),
            return_reason_code: T.nilable(String),
            sec_code: Lithic::Models::Payment::MethodAttributes::SecCode::OrSymbol,
            trace_numbers: T::Array[T.nilable(String)]
          )
            .returns(T.attached_class)
        end
        def self.new(
          company_id:,
          receipt_routing_number:,
          retries:,
          return_reason_code:,
          sec_code:,
          trace_numbers:
        )
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
        def to_hash; end

        module SecCode
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::MethodAttributes::SecCode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CCD = T.let(:CCD, Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol)
          PPD = T.let(:PPD, Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol)
          WEB = T.let(:WEB, Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Payment::MethodAttributes::SecCode::TaggedSymbol]) }
          def self.values; end
        end
      end

      # APPROVED payments were successful while DECLINED payments were declined by
      # Lithic or returned.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::Models::Payment::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::Payment::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Payment::Result::TaggedSymbol]) }
        def self.values; end
      end

      module Source
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER = T.let(:CUSTOMER, Lithic::Models::Payment::Source::TaggedSymbol)
        LITHIC = T.let(:LITHIC, Lithic::Models::Payment::Source::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Payment::Source::TaggedSymbol]) }
        def self.values; end
      end

      # Status types:
      #
      # - `DECLINED` - The payment was declined.
      # - `PENDING` - The payment is being processed and has yet to settle or release
      #   (origination debit).
      # - `RETURNED` - The payment has been returned.
      # - `SETTLED` - The payment is completed.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Payment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED = T.let(:DECLINED, Lithic::Models::Payment::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::Payment::Status::TaggedSymbol)
        RETURNED = T.let(:RETURNED, Lithic::Models::Payment::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::Payment::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Payment::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
