# typed: strong

module Lithic
  module Models
    class ExternalPaymentSettleParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      sig { returns(T.nilable(Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol)) }
      def progress_to
      end

      sig do
        params(_: Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol)
          .returns(Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol)
      end
      def progress_to=(_)
      end

      sig do
        params(
          effective_date: Date,
          memo: String,
          progress_to: Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(effective_date:, memo: nil, progress_to: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              effective_date: Date,
              memo: String,
              progress_to: Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      module ProgressTo
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo::TaggedSymbol) }

        SETTLED = T.let(:SETTLED, Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol)
        RELEASED = T.let(:RELEASED, Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol)
      end
    end
  end
end
