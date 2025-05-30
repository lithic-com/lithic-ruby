# typed: strong

module Lithic
  module Models
    class SettlementSummaryDetails < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::SettlementSummaryDetails, Lithic::Internal::AnyHash)
        end

      # 3-character alphabetic ISO 4217 code.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # The total gross amount of disputes settlements.
      sig { returns(T.nilable(Integer)) }
      attr_reader :disputes_gross_amount

      sig { params(disputes_gross_amount: Integer).void }
      attr_writer :disputes_gross_amount

      # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      # for Visa).
      sig { returns(T.nilable(String)) }
      attr_reader :institution

      sig { params(institution: String).void }
      attr_writer :institution

      # The total amount of interchange.
      sig { returns(T.nilable(Integer)) }
      attr_reader :interchange_gross_amount

      sig { params(interchange_gross_amount: Integer).void }
      attr_writer :interchange_gross_amount

      # Card network where the transaction took place
      sig do
        returns(
          T.nilable(Lithic::SettlementSummaryDetails::Network::TaggedSymbol)
        )
      end
      attr_reader :network

      sig do
        params(
          network: Lithic::SettlementSummaryDetails::Network::OrSymbol
        ).void
      end
      attr_writer :network

      # Total amount of gross other fees outside of interchange.
      sig { returns(T.nilable(Integer)) }
      attr_reader :other_fees_gross_amount

      sig { params(other_fees_gross_amount: Integer).void }
      attr_writer :other_fees_gross_amount

      # The total net amount of cash moved. (net value of settled_gross_amount,
      # interchange, fees).
      sig { returns(T.nilable(Integer)) }
      attr_reader :settled_net_amount

      sig { params(settled_net_amount: Integer).void }
      attr_writer :settled_net_amount

      # The total amount of settlement impacting transactions (excluding interchange,
      # fees, and disputes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :transactions_gross_amount

      sig { params(transactions_gross_amount: Integer).void }
      attr_writer :transactions_gross_amount

      sig do
        params(
          currency: String,
          disputes_gross_amount: Integer,
          institution: String,
          interchange_gross_amount: Integer,
          network: Lithic::SettlementSummaryDetails::Network::OrSymbol,
          other_fees_gross_amount: Integer,
          settled_net_amount: Integer,
          transactions_gross_amount: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # 3-character alphabetic ISO 4217 code.
        currency: nil,
        # The total gross amount of disputes settlements.
        disputes_gross_amount: nil,
        # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
        # for Visa).
        institution: nil,
        # The total amount of interchange.
        interchange_gross_amount: nil,
        # Card network where the transaction took place
        network: nil,
        # Total amount of gross other fees outside of interchange.
        other_fees_gross_amount: nil,
        # The total net amount of cash moved. (net value of settled_gross_amount,
        # interchange, fees).
        settled_net_amount: nil,
        # The total amount of settlement impacting transactions (excluding interchange,
        # fees, and disputes).
        transactions_gross_amount: nil
      )
      end

      sig do
        override.returns(
          {
            currency: String,
            disputes_gross_amount: Integer,
            institution: String,
            interchange_gross_amount: Integer,
            network: Lithic::SettlementSummaryDetails::Network::TaggedSymbol,
            other_fees_gross_amount: Integer,
            settled_net_amount: Integer,
            transactions_gross_amount: Integer
          }
        )
      end
      def to_hash
      end

      # Card network where the transaction took place
      module Network
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::SettlementSummaryDetails::Network)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTERLINK =
          T.let(
            :INTERLINK,
            Lithic::SettlementSummaryDetails::Network::TaggedSymbol
          )
        MAESTRO =
          T.let(
            :MAESTRO,
            Lithic::SettlementSummaryDetails::Network::TaggedSymbol
          )
        MASTERCARD =
          T.let(
            :MASTERCARD,
            Lithic::SettlementSummaryDetails::Network::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::SettlementSummaryDetails::Network::TaggedSymbol
          )
        VISA =
          T.let(:VISA, Lithic::SettlementSummaryDetails::Network::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::SettlementSummaryDetails::Network::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
