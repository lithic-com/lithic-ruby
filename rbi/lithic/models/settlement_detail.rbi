# typed: strong

module Lithic
  module Models
    class SettlementDetail < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::SettlementDetail, Lithic::Internal::AnyHash)
        end

      # Globally unique identifier denoting the Settlement Detail.
      sig { returns(String) }
      attr_accessor :token

      # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      # for Visa).
      sig { returns(String) }
      attr_accessor :account_token

      # Globally unique identifier denoting the card program that the associated
      # Transaction occurred on.
      sig { returns(String) }
      attr_accessor :card_program_token

      # Globally unique identifier denoting the card that the associated Transaction
      # occurred on.
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
      # for Visa).
      sig { returns(String) }
      attr_accessor :institution

      # The total amount of interchange in six-digit extended precision.
      sig { returns(Integer) }
      attr_accessor :interchange_fee_extended_precision

      # The total amount of interchange.
      sig { returns(Integer) }
      attr_accessor :interchange_gross_amount

      # Card network where the transaction took place.
      sig { returns(Lithic::SettlementDetail::Network::TaggedSymbol) }
      attr_accessor :network

      # The total gross amount of other fees by type.
      sig { returns(Lithic::SettlementDetail::OtherFeesDetails) }
      attr_reader :other_fees_details

      sig do
        params(
          other_fees_details: Lithic::SettlementDetail::OtherFeesDetails::OrHash
        ).void
      end
      attr_writer :other_fees_details

      # Total amount of gross other fees outside of interchange.
      sig { returns(Integer) }
      attr_accessor :other_fees_gross_amount

      # Date of when the report was first generated.
      sig { returns(String) }
      attr_accessor :report_date

      # Date of when money movement is triggered for the transaction. One exception
      # applies - for Mastercard dual message settlement, this is the settlement
      # advisement date, which is distinct from the date of money movement.
      sig { returns(String) }
      attr_accessor :settlement_date

      # Globally unique identifier denoting the associated Transaction object.
      sig { returns(String) }
      attr_accessor :transaction_token

      # The total amount of settlement impacting transactions (excluding interchange,
      # fees, and disputes).
      sig { returns(Integer) }
      attr_accessor :transactions_gross_amount

      # The type of settlement record.
      sig { returns(Lithic::SettlementDetail::Type::TaggedSymbol) }
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
          network: Lithic::SettlementDetail::Network::OrSymbol,
          other_fees_details:
            Lithic::SettlementDetail::OtherFeesDetails::OrHash,
          other_fees_gross_amount: Integer,
          report_date: String,
          settlement_date: String,
          transaction_token: String,
          transactions_gross_amount: Integer,
          type: Lithic::SettlementDetail::Type::OrSymbol,
          updated: Time,
          fee_description: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier denoting the Settlement Detail.
        token:,
        # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
        # for Visa).
        account_token:,
        # Globally unique identifier denoting the card program that the associated
        # Transaction occurred on.
        card_program_token:,
        # Globally unique identifier denoting the card that the associated Transaction
        # occurred on.
        card_token:,
        # Date and time when the transaction first occurred. UTC time zone.
        created:,
        # Three-character alphabetic ISO 4217 code.
        currency:,
        # The total gross amount of disputes settlements.
        disputes_gross_amount:,
        # Globally unique identifiers denoting the Events associated with this settlement.
        event_tokens:,
        # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
        # for Visa).
        institution:,
        # The total amount of interchange in six-digit extended precision.
        interchange_fee_extended_precision:,
        # The total amount of interchange.
        interchange_gross_amount:,
        # Card network where the transaction took place.
        network:,
        # The total gross amount of other fees by type.
        other_fees_details:,
        # Total amount of gross other fees outside of interchange.
        other_fees_gross_amount:,
        # Date of when the report was first generated.
        report_date:,
        # Date of when money movement is triggered for the transaction. One exception
        # applies - for Mastercard dual message settlement, this is the settlement
        # advisement date, which is distinct from the date of money movement.
        settlement_date:,
        # Globally unique identifier denoting the associated Transaction object.
        transaction_token:,
        # The total amount of settlement impacting transactions (excluding interchange,
        # fees, and disputes).
        transactions_gross_amount:,
        # The type of settlement record.
        type:,
        # Date and time when the transaction first occurred. UTC time zone.
        updated:,
        # Network's description of a fee, only present on records with type `FEE`.
        fee_description: nil
      )
      end

      sig do
        override.returns(
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
            network: Lithic::SettlementDetail::Network::TaggedSymbol,
            other_fees_details: Lithic::SettlementDetail::OtherFeesDetails,
            other_fees_gross_amount: Integer,
            report_date: String,
            settlement_date: String,
            transaction_token: String,
            transactions_gross_amount: Integer,
            type: Lithic::SettlementDetail::Type::TaggedSymbol,
            updated: Time,
            fee_description: String
          }
        )
      end
      def to_hash
      end

      # Card network where the transaction took place.
      module Network
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::SettlementDetail::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTERLINK =
          T.let(:INTERLINK, Lithic::SettlementDetail::Network::TaggedSymbol)
        MAESTRO =
          T.let(:MAESTRO, Lithic::SettlementDetail::Network::TaggedSymbol)
        MASTERCARD =
          T.let(:MASTERCARD, Lithic::SettlementDetail::Network::TaggedSymbol)
        UNKNOWN =
          T.let(:UNKNOWN, Lithic::SettlementDetail::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::SettlementDetail::Network::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::SettlementDetail::Network::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class OtherFeesDetails < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::SettlementDetail::OtherFeesDetails,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :isa

        sig { params(isa: Integer).void }
        attr_writer :isa

        # The total gross amount of other fees by type.
        sig { params(isa: Integer).returns(T.attached_class) }
        def self.new(isa: nil)
        end

        sig { override.returns({ isa: Integer }) }
        def to_hash
        end
      end

      # The type of settlement record.
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::SettlementDetail::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADJUSTMENT =
          T.let(:ADJUSTMENT, Lithic::SettlementDetail::Type::TaggedSymbol)
        ARBITRATION =
          T.let(:ARBITRATION, Lithic::SettlementDetail::Type::TaggedSymbol)
        CHARGEBACK =
          T.let(:CHARGEBACK, Lithic::SettlementDetail::Type::TaggedSymbol)
        CLEARING =
          T.let(:CLEARING, Lithic::SettlementDetail::Type::TaggedSymbol)
        FEE = T.let(:FEE, Lithic::SettlementDetail::Type::TaggedSymbol)
        FINANCIAL =
          T.let(:FINANCIAL, Lithic::SettlementDetail::Type::TaggedSymbol)
        NON_FINANCIAL =
          T.let(:"NON-FINANCIAL", Lithic::SettlementDetail::Type::TaggedSymbol)
        PREARBITRATION =
          T.let(:PREARBITRATION, Lithic::SettlementDetail::Type::TaggedSymbol)
        REPRESENTMENT =
          T.let(:REPRESENTMENT, Lithic::SettlementDetail::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::SettlementDetail::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
