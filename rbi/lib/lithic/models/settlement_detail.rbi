# typed: strong

module Lithic
  module Models
    class SettlementDetail < Lithic::BaseModel
      # Globally unique identifier denoting the Settlement Detail.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #   for Visa).
      sig { returns(String) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Globally unique identifier denoting the card program that the associated
      #   Transaction occurred on.
      sig { returns(String) }
      def card_program_token
      end

      sig { params(_: String).returns(String) }
      def card_program_token=(_)
      end

      # Globally unique identifier denoting the card that the associated Transaction
      #   occurred on.
      sig { returns(String) }
      def card_token
      end

      sig { params(_: String).returns(String) }
      def card_token=(_)
      end

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # Three-character alphabetic ISO 4217 code.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The total gross amount of disputes settlements.
      sig { returns(Integer) }
      def disputes_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def disputes_gross_amount=(_)
      end

      # Globally unique identifiers denoting the Events associated with this settlement.
      sig { returns(T::Array[String]) }
      def event_tokens
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def event_tokens=(_)
      end

      # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #   for Visa).
      sig { returns(String) }
      def institution
      end

      sig { params(_: String).returns(String) }
      def institution=(_)
      end

      # The total amount of interchange in six-digit extended precision.
      sig { returns(Integer) }
      def interchange_fee_extended_precision
      end

      sig { params(_: Integer).returns(Integer) }
      def interchange_fee_extended_precision=(_)
      end

      # The total amount of interchange.
      sig { returns(Integer) }
      def interchange_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def interchange_gross_amount=(_)
      end

      # Card network where the transaction took place.
      sig { returns(Symbol) }
      def network
      end

      sig { params(_: Symbol).returns(Symbol) }
      def network=(_)
      end

      # The total gross amount of other fees by type.
      sig { returns(Lithic::Models::SettlementDetail::OtherFeesDetails) }
      def other_fees_details
      end

      sig do
        params(_: Lithic::Models::SettlementDetail::OtherFeesDetails)
          .returns(Lithic::Models::SettlementDetail::OtherFeesDetails)
      end
      def other_fees_details=(_)
      end

      # Total amount of gross other fees outside of interchange.
      sig { returns(Integer) }
      def other_fees_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def other_fees_gross_amount=(_)
      end

      # Date of when the report was first generated.
      sig { returns(String) }
      def report_date
      end

      sig { params(_: String).returns(String) }
      def report_date=(_)
      end

      # Date of when money movement is triggered for the transaction.
      sig { returns(String) }
      def settlement_date
      end

      sig { params(_: String).returns(String) }
      def settlement_date=(_)
      end

      # Globally unique identifier denoting the associated Transaction object.
      sig { returns(String) }
      def transaction_token
      end

      sig { params(_: String).returns(String) }
      def transaction_token=(_)
      end

      # The total amount of settlement impacting transactions (excluding interchange,
      #   fees, and disputes).
      sig { returns(Integer) }
      def transactions_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def transactions_gross_amount=(_)
      end

      # The type of settlement record.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      # Network's description of a fee, only present on records with type `FEE`.
      sig { returns(T.nilable(String)) }
      def fee_description
      end

      sig { params(_: String).returns(String) }
      def fee_description=(_)
      end

      sig do
        params(
          token: String,
          account_token: String,
          card_program_token: String,
          card_token: String,
          created: Time,
          currency: String,
          disputes_gross_amount: Integer,
          event_tokens: T::Array[String],
          institution: String,
          interchange_fee_extended_precision: Integer,
          interchange_gross_amount: Integer,
          network: Symbol,
          other_fees_details: Lithic::Models::SettlementDetail::OtherFeesDetails,
          other_fees_gross_amount: Integer,
          report_date: String,
          settlement_date: String,
          transaction_token: String,
          transactions_gross_amount: Integer,
          type: Symbol,
          updated: Time,
          fee_description: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        account_token:,
        card_program_token:,
        card_token:,
        created:,
        currency:,
        disputes_gross_amount:,
        event_tokens:,
        institution:,
        interchange_fee_extended_precision:,
        interchange_gross_amount:,
        network:,
        other_fees_details:,
        other_fees_gross_amount:,
        report_date:,
        settlement_date:,
        transaction_token:,
        transactions_gross_amount:,
        type:,
        updated:,
        fee_description: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              account_token: String,
              card_program_token: String,
              card_token: String,
              created: Time,
              currency: String,
              disputes_gross_amount: Integer,
              event_tokens: T::Array[String],
              institution: String,
              interchange_fee_extended_precision: Integer,
              interchange_gross_amount: Integer,
              network: Symbol,
              other_fees_details: Lithic::Models::SettlementDetail::OtherFeesDetails,
              other_fees_gross_amount: Integer,
              report_date: String,
              settlement_date: String,
              transaction_token: String,
              transactions_gross_amount: Integer,
              type: Symbol,
              updated: Time,
              fee_description: String
            }
          )
      end
      def to_hash
      end

      # Card network where the transaction took place.
      class Network < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        INTERLINK = :INTERLINK
        MAESTRO = :MAESTRO
        MASTERCARD = :MASTERCARD
        UNKNOWN = :UNKNOWN
        VISA = :VISA
      end

      class OtherFeesDetails < Lithic::BaseModel
        sig { returns(T.nilable(Integer)) }
        def isa
        end

        sig { params(_: Integer).returns(Integer) }
        def isa=(_)
        end

        # The total gross amount of other fees by type.
        sig { params(isa: Integer).returns(T.attached_class) }
        def self.new(isa: nil)
        end

        sig { override.returns({isa: Integer}) }
        def to_hash
        end
      end

      # The type of settlement record.
      class Type < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ADJUSTMENT = :ADJUSTMENT
        ARBITRATION = :ARBITRATION
        CHARGEBACK = :CHARGEBACK
        CLEARING = :CLEARING
        FEE = :FEE
        FINANCIAL = :FINANCIAL
        NON_FINANCIAL = :"NON-FINANCIAL"
        PREARBITRATION = :PREARBITRATION
        REPRESENTMENT = :REPRESENTMENT
      end
    end
  end
end
