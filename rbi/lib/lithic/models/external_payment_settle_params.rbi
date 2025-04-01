# typed: strong

module Lithic
  module Models
    class ExternalPaymentSettleParams < Lithic::BaseModel
      extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig { returns(T.nilable(Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol)) }
      attr_reader :progress_to

      sig { params(progress_to: Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol).void }
      attr_writer :progress_to

      sig do
        params(
          effective_date: Date,
          memo: String,
          progress_to: Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalPaymentSettleParams::ProgressTo::TaggedSymbol) }

        SETTLED = T.let(:SETTLED, Lithic::Models::ExternalPaymentSettleParams::ProgressTo::TaggedSymbol)
        RELEASED = T.let(:RELEASED, Lithic::Models::ExternalPaymentSettleParams::ProgressTo::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPaymentSettleParams::ProgressTo::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
