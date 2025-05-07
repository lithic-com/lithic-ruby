# typed: strong

module Lithic
  module Models
    class ExternalPaymentSettleParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        returns(
          T.nilable(Lithic::ExternalPaymentSettleParams::ProgressTo::OrSymbol)
        )
      end
      attr_reader :progress_to

      sig do
        params(
          progress_to: Lithic::ExternalPaymentSettleParams::ProgressTo::OrSymbol
        ).void
      end
      attr_writer :progress_to

      sig do
        params(
          effective_date: Date,
          memo: String,
          progress_to:
            Lithic::ExternalPaymentSettleParams::ProgressTo::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        effective_date:,
        memo: nil,
        progress_to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            effective_date: Date,
            memo: String,
            progress_to:
              Lithic::ExternalPaymentSettleParams::ProgressTo::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      module ProgressTo
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalPaymentSettleParams::ProgressTo)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SETTLED =
          T.let(
            :SETTLED,
            Lithic::ExternalPaymentSettleParams::ProgressTo::TaggedSymbol
          )
        RELEASED =
          T.let(
            :RELEASED,
            Lithic::ExternalPaymentSettleParams::ProgressTo::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ExternalPaymentSettleParams::ProgressTo::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
