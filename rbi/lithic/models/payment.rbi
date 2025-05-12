# typed: strong

module Lithic
  module Models
    class Payment < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Payment, Lithic::Internal::AnyHash) }

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Payment category
      sig { returns(Lithic::Payment::Category::TaggedSymbol) }
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

      sig { returns(Lithic::Payment::Direction::TaggedSymbol) }
      attr_accessor :direction

      # A list of all payment events that have modified this payment.
      sig { returns(T::Array[Lithic::Payment::Event]) }
      attr_accessor :events

      sig { returns(T.nilable(String)) }
      attr_accessor :external_bank_account_token

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(Lithic::Payment::Method::TaggedSymbol) }
      attr_accessor :method_

      sig { returns(Lithic::Payment::MethodAttributes) }
      attr_reader :method_attributes

      sig do
        params(
          method_attributes: Lithic::Payment::MethodAttributes::OrHash
        ).void
      end
      attr_writer :method_attributes

      # Pending amount of the payment in the currency's smallest unit (e.g., cents). The
      # value of this field will go to zero over time once the payment is settled.
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # APPROVED payments were successful while DECLINED payments were declined by
      # Lithic or returned.
      sig { returns(Lithic::Payment::Result::TaggedSymbol) }
      attr_accessor :result

      # Amount of the payment that has been settled in the currency's smallest unit
      # (e.g., cents).
      sig { returns(Integer) }
      attr_accessor :settled_amount

      sig { returns(Lithic::Payment::Source::TaggedSymbol) }
      attr_accessor :source

      # Status types:
      #
      # - `DECLINED` - The payment was declined.
      # - `PENDING` - The payment is being processed and has yet to settle or release
      #   (origination debit).
      # - `RETURNED` - The payment has been returned.
      # - `SETTLED` - The payment is completed.
      sig { returns(Lithic::Payment::Status::TaggedSymbol) }
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
          category: Lithic::Payment::Category::OrSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          direction: Lithic::Payment::Direction::OrSymbol,
          events: T::Array[Lithic::Payment::Event::OrHash],
          external_bank_account_token: T.nilable(String),
          financial_account_token: String,
          method_: Lithic::Payment::Method::OrSymbol,
          method_attributes: Lithic::Payment::MethodAttributes::OrHash,
          pending_amount: Integer,
          result: Lithic::Payment::Result::OrSymbol,
          settled_amount: Integer,
          source: Lithic::Payment::Source::OrSymbol,
          status: Lithic::Payment::Status::OrSymbol,
          updated: Time,
          user_defined_id: T.nilable(String),
          expected_release_date: Date
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # Payment category
        category:,
        # Date and time when the payment first occurred. UTC time zone.
        created:,
        # 3-character alphabetic ISO 4217 code for the settling currency of the payment.
        currency:,
        # A string that provides a description of the payment; may be useful to display to
        # users.
        descriptor:,
        direction:,
        # A list of all payment events that have modified this payment.
        events:,
        external_bank_account_token:,
        financial_account_token:,
        method_:,
        method_attributes:,
        # Pending amount of the payment in the currency's smallest unit (e.g., cents). The
        # value of this field will go to zero over time once the payment is settled.
        pending_amount:,
        # APPROVED payments were successful while DECLINED payments were declined by
        # Lithic or returned.
        result:,
        # Amount of the payment that has been settled in the currency's smallest unit
        # (e.g., cents).
        settled_amount:,
        source:,
        # Status types:
        #
        # - `DECLINED` - The payment was declined.
        # - `PENDING` - The payment is being processed and has yet to settle or release
        #   (origination debit).
        # - `RETURNED` - The payment has been returned.
        # - `SETTLED` - The payment is completed.
        status:,
        # Date and time when the financial transaction was last updated. UTC time zone.
        updated:,
        user_defined_id:,
        # Date when the financial transaction expected to be released after settlement
        expected_release_date: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            category: Lithic::Payment::Category::TaggedSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            direction: Lithic::Payment::Direction::TaggedSymbol,
            events: T::Array[Lithic::Payment::Event],
            external_bank_account_token: T.nilable(String),
            financial_account_token: String,
            method_: Lithic::Payment::Method::TaggedSymbol,
            method_attributes: Lithic::Payment::MethodAttributes,
            pending_amount: Integer,
            result: Lithic::Payment::Result::TaggedSymbol,
            settled_amount: Integer,
            source: Lithic::Payment::Source::TaggedSymbol,
            status: Lithic::Payment::Status::TaggedSymbol,
            updated: Time,
            user_defined_id: T.nilable(String),
            expected_release_date: Date
          }
        )
      end
      def to_hash
      end

      # Payment category
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ACH, Lithic::Payment::Category::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Category::TaggedSymbol])
        end
        def self.values
        end
      end

      module Direction
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Payment::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT = T.let(:CREDIT, Lithic::Payment::Direction::TaggedSymbol)
        DEBIT = T.let(:DEBIT, Lithic::Payment::Direction::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Direction::TaggedSymbol])
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Payment::Event, Lithic::Internal::AnyHash)
          end

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
        sig { returns(Lithic::Payment::Event::Result::TaggedSymbol) }
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
        sig { returns(Lithic::Payment::Event::Type::TaggedSymbol) }
        attr_accessor :type

        # More detailed reasons for the event
        sig do
          returns(
            T.nilable(
              T::Array[Lithic::Payment::Event::DetailedResult::TaggedSymbol]
            )
          )
        end
        attr_reader :detailed_results

        sig do
          params(
            detailed_results:
              T::Array[Lithic::Payment::Event::DetailedResult::OrSymbol]
          ).void
        end
        attr_writer :detailed_results

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Lithic::Payment::Event::Result::OrSymbol,
            type: Lithic::Payment::Event::Type::OrSymbol,
            detailed_results:
              T::Array[Lithic::Payment::Event::DetailedResult::OrSymbol]
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier.
          token:,
          # Amount of the financial event that has been settled in the currency's smallest
          # unit (e.g., cents).
          amount:,
          # Date and time when the financial event occurred. UTC time zone.
          created:,
          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          result:,
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
          type:,
          # More detailed reasons for the event
          detailed_results: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              amount: Integer,
              created: Time,
              result: Lithic::Payment::Event::Result::TaggedSymbol,
              type: Lithic::Payment::Event::Type::TaggedSymbol,
              detailed_results:
                T::Array[Lithic::Payment::Event::DetailedResult::TaggedSymbol]
            }
          )
        end
        def to_hash
        end

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Payment::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(:APPROVED, Lithic::Payment::Event::Result::TaggedSymbol)
          DECLINED =
            T.let(:DECLINED, Lithic::Payment::Event::Result::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Lithic::Payment::Event::Result::TaggedSymbol]
            )
          end
          def self.values
          end
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

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Payment::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH_ORIGINATION_CANCELLED =
            T.let(
              :ACH_ORIGINATION_CANCELLED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_INITIATED =
            T.let(
              :ACH_ORIGINATION_INITIATED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_PROCESSED =
            T.let(
              :ACH_ORIGINATION_PROCESSED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_SETTLED =
            T.let(
              :ACH_ORIGINATION_SETTLED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_RELEASED =
            T.let(
              :ACH_ORIGINATION_RELEASED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_REVIEWED =
            T.let(
              :ACH_ORIGINATION_REVIEWED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RECEIPT_PROCESSED =
            T.let(
              :ACH_RECEIPT_PROCESSED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RECEIPT_SETTLED =
            T.let(
              :ACH_RECEIPT_SETTLED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RETURN_INITIATED =
            T.let(
              :ACH_RETURN_INITIATED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RETURN_PROCESSED =
            T.let(
              :ACH_RETURN_PROCESSED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RETURN_SETTLED =
            T.let(
              :ACH_RETURN_SETTLED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Payment::Event::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Payment::Event::DetailedResult)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          FUNDS_INSUFFICIENT =
            T.let(
              :FUNDS_INSUFFICIENT,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_INVALID =
            T.let(
              :ACCOUNT_INVALID,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_TRANSACTION_LIMIT_EXCEEDED =
            T.let(
              :PROGRAM_TRANSACTION_LIMIT_EXCEEDED,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_DAILY_LIMIT_EXCEEDED =
            T.let(
              :PROGRAM_DAILY_LIMIT_EXCEEDED,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_MONTHLY_LIMIT_EXCEEDED =
            T.let(
              :PROGRAM_MONTHLY_LIMIT_EXCEEDED,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Payment::Event::DetailedResult::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      module Method
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_NEXT_DAY =
          T.let(:ACH_NEXT_DAY, Lithic::Payment::Method::TaggedSymbol)
        ACH_SAME_DAY =
          T.let(:ACH_SAME_DAY, Lithic::Payment::Method::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Method::TaggedSymbol])
        end
        def self.values
        end
      end

      class MethodAttributes < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Payment::MethodAttributes, Lithic::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :company_id

        sig { returns(T.nilable(String)) }
        attr_accessor :receipt_routing_number

        sig { returns(T.nilable(Integer)) }
        attr_accessor :retries

        sig { returns(T.nilable(String)) }
        attr_accessor :return_reason_code

        sig do
          returns(Lithic::Payment::MethodAttributes::SecCode::TaggedSymbol)
        end
        attr_accessor :sec_code

        sig { returns(T::Array[T.nilable(String)]) }
        attr_accessor :trace_numbers

        sig do
          params(
            company_id: T.nilable(String),
            receipt_routing_number: T.nilable(String),
            retries: T.nilable(Integer),
            return_reason_code: T.nilable(String),
            sec_code: Lithic::Payment::MethodAttributes::SecCode::OrSymbol,
            trace_numbers: T::Array[T.nilable(String)]
          ).returns(T.attached_class)
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
          override.returns(
            {
              company_id: T.nilable(String),
              receipt_routing_number: T.nilable(String),
              retries: T.nilable(Integer),
              return_reason_code: T.nilable(String),
              sec_code:
                Lithic::Payment::MethodAttributes::SecCode::TaggedSymbol,
              trace_numbers: T::Array[T.nilable(String)]
            }
          )
        end
        def to_hash
        end

        module SecCode
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Payment::MethodAttributes::SecCode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CCD =
            T.let(
              :CCD,
              Lithic::Payment::MethodAttributes::SecCode::TaggedSymbol
            )
          PPD =
            T.let(
              :PPD,
              Lithic::Payment::MethodAttributes::SecCode::TaggedSymbol
            )
          WEB =
            T.let(
              :WEB,
              Lithic::Payment::MethodAttributes::SecCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Payment::MethodAttributes::SecCode::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # APPROVED payments were successful while DECLINED payments were declined by
      # Lithic or returned.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::Payment::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Payment::Result::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Result::TaggedSymbol])
        end
        def self.values
        end
      end

      module Source
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER = T.let(:CUSTOMER, Lithic::Payment::Source::TaggedSymbol)
        LITHIC = T.let(:LITHIC, Lithic::Payment::Source::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Source::TaggedSymbol])
        end
        def self.values
        end
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

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED = T.let(:DECLINED, Lithic::Payment::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Payment::Status::TaggedSymbol)
        RETURNED = T.let(:RETURNED, Lithic::Payment::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Payment::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
