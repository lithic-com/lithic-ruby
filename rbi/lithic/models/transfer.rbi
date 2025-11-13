# typed: strong

module Lithic
  module Models
    class Transfer < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Transfer, Lithic::Internal::AnyHash) }

      # Globally unique identifier for the transfer event.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Status types:
      #
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      sig { returns(T.nilable(Lithic::Transfer::Category::TaggedSymbol)) }
      attr_reader :category

      sig { params(category: Lithic::Transfer::Category::OrSymbol).void }
      attr_writer :category

      # Date and time when the transfer occurred. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      # transaction.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # A string that provides a description of the transfer; may be useful to display
      # to users.
      sig { returns(T.nilable(String)) }
      attr_reader :descriptor

      sig { params(descriptor: String).void }
      attr_writer :descriptor

      # A list of all financial events that have modified this trasnfer.
      sig { returns(T.nilable(T::Array[Lithic::FinancialEvent])) }
      attr_reader :events

      sig { params(events: T::Array[Lithic::FinancialEvent::OrHash]).void }
      attr_writer :events

      # The updated balance of the sending financial account.
      sig { returns(T.nilable(T::Array[Lithic::Balance])) }
      attr_reader :from_balance

      sig { params(from_balance: T::Array[Lithic::Balance::OrHash]).void }
      attr_writer :from_balance

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      # including any acquirer fees. The value of this field will go to zero over time
      # once the financial transaction is settled.
      sig { returns(T.nilable(Integer)) }
      attr_reader :pending_amount

      sig { params(pending_amount: Integer).void }
      attr_writer :pending_amount

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      sig { returns(T.nilable(Lithic::Transfer::Result::TaggedSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::Transfer::Result::OrSymbol).void }
      attr_writer :result

      # Amount of the transaction that has been settled in the currency's smallest unit
      # (e.g., cents).
      sig { returns(T.nilable(Integer)) }
      attr_reader :settled_amount

      sig { params(settled_amount: Integer).void }
      attr_writer :settled_amount

      # Status types:
      #
      # - `DECLINED` - The transfer was declined.
      # - `EXPIRED` - The transfer was held in pending for too long and expired.
      # - `PENDING` - The transfer is pending release from a hold.
      # - `SETTLED` - The transfer is completed.
      # - `VOIDED` - The transfer was reversed before it settled.
      sig { returns(T.nilable(Lithic::Transfer::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Transfer::Status::OrSymbol).void }
      attr_writer :status

      # The updated balance of the receiving financial account.
      sig { returns(T.nilable(T::Array[Lithic::Balance])) }
      attr_reader :to_balance

      sig { params(to_balance: T::Array[Lithic::Balance::OrHash]).void }
      attr_writer :to_balance

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated

      sig { params(updated: Time).void }
      attr_writer :updated

      sig do
        params(
          token: String,
          category: Lithic::Transfer::Category::OrSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          events: T::Array[Lithic::FinancialEvent::OrHash],
          from_balance: T::Array[Lithic::Balance::OrHash],
          pending_amount: Integer,
          result: Lithic::Transfer::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::Transfer::Status::OrSymbol,
          to_balance: T::Array[Lithic::Balance::OrHash],
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier for the transfer event.
        token: nil,
        # Status types:
        #
        # - `TRANSFER` - Internal transfer of funds between financial accounts in your
        #   program.
        category: nil,
        # Date and time when the transfer occurred. UTC time zone.
        created: nil,
        # 3-character alphabetic ISO 4217 code for the settling currency of the
        # transaction.
        currency: nil,
        # A string that provides a description of the transfer; may be useful to display
        # to users.
        descriptor: nil,
        # A list of all financial events that have modified this trasnfer.
        events: nil,
        # The updated balance of the sending financial account.
        from_balance: nil,
        # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
        # including any acquirer fees. The value of this field will go to zero over time
        # once the financial transaction is settled.
        pending_amount: nil,
        # APPROVED transactions were successful while DECLINED transactions were declined
        # by user, Lithic, or the network.
        result: nil,
        # Amount of the transaction that has been settled in the currency's smallest unit
        # (e.g., cents).
        settled_amount: nil,
        # Status types:
        #
        # - `DECLINED` - The transfer was declined.
        # - `EXPIRED` - The transfer was held in pending for too long and expired.
        # - `PENDING` - The transfer is pending release from a hold.
        # - `SETTLED` - The transfer is completed.
        # - `VOIDED` - The transfer was reversed before it settled.
        status: nil,
        # The updated balance of the receiving financial account.
        to_balance: nil,
        # Date and time when the financial transaction was last updated. UTC time zone.
        updated: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            category: Lithic::Transfer::Category::TaggedSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            events: T::Array[Lithic::FinancialEvent],
            from_balance: T::Array[Lithic::Balance],
            pending_amount: Integer,
            result: Lithic::Transfer::Result::TaggedSymbol,
            settled_amount: Integer,
            status: Lithic::Transfer::Status::TaggedSymbol,
            to_balance: T::Array[Lithic::Balance],
            updated: Time
          }
        )
      end
      def to_hash
      end

      # Status types:
      #
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Transfer::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER = T.let(:TRANSFER, Lithic::Transfer::Category::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Transfer::Category::TaggedSymbol])
        end
        def self.values
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Transfer::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::Transfer::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Transfer::Result::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Transfer::Result::TaggedSymbol])
        end
        def self.values
        end
      end

      # Status types:
      #
      # - `DECLINED` - The transfer was declined.
      # - `EXPIRED` - The transfer was held in pending for too long and expired.
      # - `PENDING` - The transfer is pending release from a hold.
      # - `SETTLED` - The transfer is completed.
      # - `VOIDED` - The transfer was reversed before it settled.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Transfer::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED = T.let(:DECLINED, Lithic::Transfer::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Transfer::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Transfer::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Transfer::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Transfer::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Transfer::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
