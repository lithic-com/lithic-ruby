# typed: strong

module Lithic
  module Models
    class FinancialTransaction < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::FinancialTransaction, Lithic::Internal::AnyHash)
        end

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Status types:
      #
      # - `CARD` - Issuing card transaction.
      # - `ACH` - Transaction over ACH.
      # - `INTERNAL` - Transaction for internal adjustment.
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      sig { returns(Lithic::FinancialTransaction::Category::TaggedSymbol) }
      attr_accessor :category

      # Date and time when the financial transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      # transaction.
      sig { returns(String) }
      attr_accessor :currency

      # A string that provides a description of the financial transaction; may be useful
      # to display to users.
      sig { returns(String) }
      attr_accessor :descriptor

      # A list of all financial events that have modified this financial transaction.
      sig { returns(T::Array[Lithic::FinancialEvent]) }
      attr_accessor :events

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      # including any acquirer fees. The value of this field will go to zero over time
      # once the financial transaction is settled.
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      sig { returns(Lithic::FinancialTransaction::Result::TaggedSymbol) }
      attr_accessor :result

      # Amount of the transaction that has been settled in the currency's smallest unit
      # (e.g., cents), including any acquirer fees. This may change over time.
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Status types:
      #
      # - `DECLINED` - The transaction was declined.
      # - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #   transaction only.
      # - `PENDING` - The transaction is expected to settle.
      # - `RETURNED` - The transaction has been returned.
      # - `SETTLED` - The transaction is completed.
      # - `VOIDED` - The transaction was voided. Card transaction only.
      sig { returns(Lithic::FinancialTransaction::Status::TaggedSymbol) }
      attr_accessor :status

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(
          token: String,
          category: Lithic::FinancialTransaction::Category::OrSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          events: T::Array[Lithic::FinancialEvent::OrHash],
          pending_amount: Integer,
          result: Lithic::FinancialTransaction::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::FinancialTransaction::Status::OrSymbol,
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # Status types:
        #
        # - `CARD` - Issuing card transaction.
        # - `ACH` - Transaction over ACH.
        # - `INTERNAL` - Transaction for internal adjustment.
        # - `TRANSFER` - Internal transfer of funds between financial accounts in your
        #   program.
        category:,
        # Date and time when the financial transaction first occurred. UTC time zone.
        created:,
        # 3-character alphabetic ISO 4217 code for the settling currency of the
        # transaction.
        currency:,
        # A string that provides a description of the financial transaction; may be useful
        # to display to users.
        descriptor:,
        # A list of all financial events that have modified this financial transaction.
        events:,
        # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
        # including any acquirer fees. The value of this field will go to zero over time
        # once the financial transaction is settled.
        pending_amount:,
        # APPROVED transactions were successful while DECLINED transactions were declined
        # by user, Lithic, or the network.
        result:,
        # Amount of the transaction that has been settled in the currency's smallest unit
        # (e.g., cents), including any acquirer fees. This may change over time.
        settled_amount:,
        # Status types:
        #
        # - `DECLINED` - The transaction was declined.
        # - `EXPIRED` - The authorization as it has passed its expiration time. Card
        #   transaction only.
        # - `PENDING` - The transaction is expected to settle.
        # - `RETURNED` - The transaction has been returned.
        # - `SETTLED` - The transaction is completed.
        # - `VOIDED` - The transaction was voided. Card transaction only.
        status:,
        # Date and time when the financial transaction was last updated. UTC time zone.
        updated:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            category: Lithic::FinancialTransaction::Category::TaggedSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            events: T::Array[Lithic::FinancialEvent],
            pending_amount: Integer,
            result: Lithic::FinancialTransaction::Result::TaggedSymbol,
            settled_amount: Integer,
            status: Lithic::FinancialTransaction::Status::TaggedSymbol,
            updated: Time
          }
        )
      end
      def to_hash
      end

      # Status types:
      #
      # - `CARD` - Issuing card transaction.
      # - `ACH` - Transaction over ACH.
      # - `INTERNAL` - Transaction for internal adjustment.
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialTransaction::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ACH, Lithic::FinancialTransaction::Category::TaggedSymbol)
        CARD =
          T.let(:CARD, Lithic::FinancialTransaction::Category::TaggedSymbol)
        INTERNAL =
          T.let(:INTERNAL, Lithic::FinancialTransaction::Category::TaggedSymbol)
        TRANSFER =
          T.let(:TRANSFER, Lithic::FinancialTransaction::Category::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialTransaction::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialTransaction::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::FinancialTransaction::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::FinancialTransaction::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialTransaction::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status types:
      #
      # - `DECLINED` - The transaction was declined.
      # - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #   transaction only.
      # - `PENDING` - The transaction is expected to settle.
      # - `RETURNED` - The transaction has been returned.
      # - `SETTLED` - The transaction is completed.
      # - `VOIDED` - The transaction was voided. Card transaction only.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialTransaction::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED =
          T.let(:DECLINED, Lithic::FinancialTransaction::Status::TaggedSymbol)
        EXPIRED =
          T.let(:EXPIRED, Lithic::FinancialTransaction::Status::TaggedSymbol)
        PENDING =
          T.let(:PENDING, Lithic::FinancialTransaction::Status::TaggedSymbol)
        RETURNED =
          T.let(:RETURNED, Lithic::FinancialTransaction::Status::TaggedSymbol)
        SETTLED =
          T.let(:SETTLED, Lithic::FinancialTransaction::Status::TaggedSymbol)
        VOIDED =
          T.let(:VOIDED, Lithic::FinancialTransaction::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialTransaction::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
