# typed: strong

module Lithic
  module Models
    class Hold < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Lithic::Hold, Lithic::Internal::AnyHash) }

      # Unique identifier for the transaction
      sig { returns(String) }
      attr_accessor :token

      # ISO 8601 timestamp of when the transaction was created
      sig { returns(Time) }
      attr_accessor :created

      # ISO 8601 timestamp of when the transaction was last updated
      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(T::Array[Lithic::HoldEvent])) }
      attr_reader :events

      sig { params(events: T::Array[Lithic::HoldEvent::OrHash]).void }
      attr_writer :events

      # When the hold will auto-expire if not resolved
      sig { returns(T.nilable(Time)) }
      attr_accessor :expiration_datetime

      # HOLD - Hold Transaction
      sig { returns(T.nilable(Lithic::Hold::Family::TaggedSymbol)) }
      attr_reader :family

      sig { params(family: Lithic::Hold::Family::OrSymbol).void }
      attr_writer :family

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      # Current pending amount (0 when resolved)
      sig { returns(T.nilable(Integer)) }
      attr_reader :pending_amount

      sig { params(pending_amount: Integer).void }
      attr_writer :pending_amount

      sig { returns(T.nilable(Lithic::Hold::Result::TaggedSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::Hold::Result::OrSymbol).void }
      attr_writer :result

      # Status of a hold transaction
      sig { returns(T.nilable(Lithic::Hold::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Hold::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_accessor :user_defined_id

      # A hold transaction representing reserved funds on a financial account. Holds
      # move funds from available to pending balance in anticipation of future payments.
      # They can be resolved via settlement (linked to payment), manual release, or
      # expiration.
      sig do
        params(
          token: String,
          created: Time,
          updated: Time,
          currency: String,
          events: T::Array[Lithic::HoldEvent::OrHash],
          expiration_datetime: T.nilable(Time),
          family: Lithic::Hold::Family::OrSymbol,
          financial_account_token: String,
          pending_amount: Integer,
          result: Lithic::Hold::Result::OrSymbol,
          status: Lithic::Hold::Status::OrSymbol,
          user_defined_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the transaction
        token:,
        # ISO 8601 timestamp of when the transaction was created
        created:,
        # ISO 8601 timestamp of when the transaction was last updated
        updated:,
        currency: nil,
        events: nil,
        # When the hold will auto-expire if not resolved
        expiration_datetime: nil,
        # HOLD - Hold Transaction
        family: nil,
        financial_account_token: nil,
        # Current pending amount (0 when resolved)
        pending_amount: nil,
        result: nil,
        # Status of a hold transaction
        status: nil,
        user_defined_id: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            created: Time,
            updated: Time,
            currency: String,
            events: T::Array[Lithic::HoldEvent],
            expiration_datetime: T.nilable(Time),
            family: Lithic::Hold::Family::TaggedSymbol,
            financial_account_token: String,
            pending_amount: Integer,
            result: Lithic::Hold::Result::TaggedSymbol,
            status: Lithic::Hold::Status::TaggedSymbol,
            user_defined_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # HOLD - Hold Transaction
      module Family
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Hold::Family) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HOLD = T.let(:HOLD, Lithic::Hold::Family::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Hold::Family::TaggedSymbol]) }
        def self.values
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Hold::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::Hold::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Hold::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Hold::Result::TaggedSymbol]) }
        def self.values
        end
      end

      # Status of a hold transaction
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Hold::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:PENDING, Lithic::Hold::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Hold::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Hold::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Hold::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Hold::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
