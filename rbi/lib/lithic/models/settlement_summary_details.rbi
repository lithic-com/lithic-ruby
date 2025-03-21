# typed: strong

module Lithic
  module Models
    class SettlementSummaryDetails < Lithic::BaseModel
      # 3-character alphabetic ISO 4217 code.
      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The total gross amount of disputes settlements.
      sig { returns(T.nilable(Integer)) }
      def disputes_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def disputes_gross_amount=(_)
      end

      # The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #   for Visa).
      sig { returns(T.nilable(String)) }
      def institution
      end

      sig { params(_: String).returns(String) }
      def institution=(_)
      end

      # The total amount of interchange.
      sig { returns(T.nilable(Integer)) }
      def interchange_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def interchange_gross_amount=(_)
      end

      # Card network where the transaction took place
      sig { returns(T.nilable(Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol)) }
      def network
      end

      sig do
        params(_: Lithic::Models::SettlementSummaryDetails::Network::OrSymbol)
          .returns(Lithic::Models::SettlementSummaryDetails::Network::OrSymbol)
      end
      def network=(_)
      end

      # Total amount of gross other fees outside of interchange.
      sig { returns(T.nilable(Integer)) }
      def other_fees_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def other_fees_gross_amount=(_)
      end

      # The total net amount of cash moved. (net value of settled_gross_amount,
      #   interchange, fees).
      sig { returns(T.nilable(Integer)) }
      def settled_net_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_net_amount=(_)
      end

      # The total amount of settlement impacting transactions (excluding interchange,
      #   fees, and disputes).
      sig { returns(T.nilable(Integer)) }
      def transactions_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def transactions_gross_amount=(_)
      end

      sig do
        params(
          currency: String,
          disputes_gross_amount: Integer,
          institution: String,
          interchange_gross_amount: Integer,
          network: Lithic::Models::SettlementSummaryDetails::Network::OrSymbol,
          other_fees_gross_amount: Integer,
          settled_net_amount: Integer,
          transactions_gross_amount: Integer
        )
          .returns(T.attached_class)
      end
      def self.new(
        currency: nil,
        disputes_gross_amount: nil,
        institution: nil,
        interchange_gross_amount: nil,
        network: nil,
        other_fees_gross_amount: nil,
        settled_net_amount: nil,
        transactions_gross_amount: nil
      )
      end

      sig do
        override
          .returns(
            {
              currency: String,
              disputes_gross_amount: Integer,
              institution: String,
              interchange_gross_amount: Integer,
              network: Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol,
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
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::SettlementSummaryDetails::Network) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol) }

        INTERLINK = T.let(:INTERLINK, Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol)
        MAESTRO = T.let(:MAESTRO, Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol)
        MASTERCARD = T.let(:MASTERCARD, Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::SettlementSummaryDetails::Network::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
