# typed: strong

module Lithic
  module Models
    class FinancialAccountChargeOffParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Reason for the financial account being marked as Charged Off
      sig { returns(Lithic::Models::FinancialAccountChargeOffParams::Reason::OrSymbol) }
      attr_accessor :reason

      sig do
        params(
          reason: Lithic::Models::FinancialAccountChargeOffParams::Reason::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(reason:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              reason: Lithic::Models::FinancialAccountChargeOffParams::Reason::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Reason for the financial account being marked as Charged Off
      module Reason
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccountChargeOffParams::Reason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccountChargeOffParams::Reason::TaggedSymbol) }

        DELINQUENT = T.let(:DELINQUENT, Lithic::Models::FinancialAccountChargeOffParams::Reason::TaggedSymbol)
        FRAUD = T.let(:FRAUD, Lithic::Models::FinancialAccountChargeOffParams::Reason::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::FinancialAccountChargeOffParams::Reason::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
