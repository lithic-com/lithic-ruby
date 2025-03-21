# typed: strong

module Lithic
  module Models
    class SettlementDetail < Lithic::BaseModel
      # Globally unique identifier denoting the Settlement Detail.
      sig { returns(String) }
      attr_accessor :token

      # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #   for Visa).
      sig { returns(String) }
      attr_accessor :account_token

      # Globally unique identifier denoting the card program that the associated
      #   Transaction occurred on.
      sig { returns(String) }
      attr_accessor :card_program_token

      # Globally unique identifier denoting the card that the associated Transaction
      #   occurred on.
      sig { returns(String) }
      attr_accessor :card_token

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # Three-character alphabetic ISO 4217 code.
      sig { returns(String) }
      attr_accessor :currency

      # The total gross amount of disputes settlements.
      sig { returns(Integer) }
      attr_accessor :disputes_gross_amount

      # Globally unique identifiers denoting the Events associated with this settlement.
      sig { returns(T::Array[String]) }
      attr_accessor :event_tokens

      # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #   for Visa).
      sig { returns(String) }
      attr_accessor :institution

      # The total amount of interchange in six-digit extended precision.
      sig { returns(Integer) }
      attr_accessor :interchange_fee_extended_precision

      # The total amount of interchange.
      sig { returns(Integer) }
      attr_accessor :interchange_gross_amount

      # Card network where the transaction took place.
      sig { returns(Lithic::Models::SettlementDetail::Network::TaggedSymbol) }
      attr_accessor :network

      # The total gross amount of other fees by type.
      sig { returns(Lithic::Models::SettlementDetail::OtherFeesDetails) }
      attr_reader :other_fees_details

      sig do
        params(
          other_fees_details: T.any(Lithic::Models::SettlementDetail::OtherFeesDetails, Lithic::Util::AnyHash)
        )
          .void
      end
      attr_writer :other_fees_details

      # Total amount of gross other fees outside of interchange.
      sig { returns(Integer) }
      attr_accessor :other_fees_gross_amount

      # Date of when the report was first generated.
      sig { returns(String) }
      attr_accessor :report_date

      # Date of when money movement is triggered for the transaction.
      sig { returns(String) }
      attr_accessor :settlement_date

      # Globally unique identifier denoting the associated Transaction object.
      sig { returns(String) }
      attr_accessor :transaction_token

      # The total amount of settlement impacting transactions (excluding interchange,
      #   fees, and disputes).
      sig { returns(Integer) }
      attr_accessor :transactions_gross_amount

      # The type of settlement record.
      sig { returns(Lithic::Models::SettlementDetail::Type::TaggedSymbol) }
      attr_accessor :type

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      # Network's description of a fee, only present on records with type `FEE`.
      sig { returns(T.nilable(String)) }
      attr_reader :fee_description

      sig { params(fee_description: String).void }
      attr_writer :fee_description

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
          network: Lithic::Models::SettlementDetail::Network::OrSymbol,
          other_fees_details: T.any(Lithic::Models::SettlementDetail::OtherFeesDetails, Lithic::Util::AnyHash),
          other_fees_gross_amount: Integer,
          report_date: String,
          settlement_date: String,
          transaction_token: String,
          transactions_gross_amount: Integer,
          type: Lithic::Models::SettlementDetail::Type::OrSymbol,
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
              network: Lithic::Models::SettlementDetail::Network::TaggedSymbol,
              other_fees_details: Lithic::Models::SettlementDetail::OtherFeesDetails,
              other_fees_gross_amount: Integer,
              report_date: String,
              settlement_date: String,
              transaction_token: String,
              transactions_gross_amount: Integer,
              type: Lithic::Models::SettlementDetail::Type::TaggedSymbol,
              updated: Time,
              fee_description: String
            }
          )
      end
      def to_hash
      end

      # Card network where the transaction took place.
      module Network
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::SettlementDetail::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::SettlementDetail::Network::TaggedSymbol) }

        INTERLINK = T.let(:INTERLINK, Lithic::Models::SettlementDetail::Network::TaggedSymbol)
        MAESTRO = T.let(:MAESTRO, Lithic::Models::SettlementDetail::Network::TaggedSymbol)
        MASTERCARD = T.let(:MASTERCARD, Lithic::Models::SettlementDetail::Network::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, Lithic::Models::SettlementDetail::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::Models::SettlementDetail::Network::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::SettlementDetail::Network::TaggedSymbol]) }
          def values
          end
        end
      end

      class OtherFeesDetails < Lithic::BaseModel
        sig { returns(T.nilable(Integer)) }
        attr_reader :isa

        sig { params(isa: Integer).void }
        attr_writer :isa

        # The total gross amount of other fees by type.
        sig { params(isa: Integer).returns(T.attached_class) }
        def self.new(isa: nil)
        end

        sig { override.returns({isa: Integer}) }
        def to_hash
        end
      end

      # The type of settlement record.
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::SettlementDetail::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::SettlementDetail::Type::TaggedSymbol) }

        ADJUSTMENT = T.let(:ADJUSTMENT, Lithic::Models::SettlementDetail::Type::TaggedSymbol)
        ARBITRATION = T.let(:ARBITRATION, Lithic::Models::SettlementDetail::Type::TaggedSymbol)
        CHARGEBACK = T.let(:CHARGEBACK, Lithic::Models::SettlementDetail::Type::TaggedSymbol)
        CLEARING = T.let(:CLEARING, Lithic::Models::SettlementDetail::Type::TaggedSymbol)
        FEE = T.let(:FEE, Lithic::Models::SettlementDetail::Type::TaggedSymbol)
        FINANCIAL = T.let(:FINANCIAL, Lithic::Models::SettlementDetail::Type::TaggedSymbol)
        NON_FINANCIAL = T.let(:"NON-FINANCIAL", Lithic::Models::SettlementDetail::Type::TaggedSymbol)
        PREARBITRATION = T.let(:PREARBITRATION, Lithic::Models::SettlementDetail::Type::TaggedSymbol)
        REPRESENTMENT = T.let(:REPRESENTMENT, Lithic::Models::SettlementDetail::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::SettlementDetail::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
