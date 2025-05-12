# typed: strong

module Lithic
  module Models
    class ExternalPaymentReverseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::ExternalPaymentReverseParams, Lithic::Internal::AnyHash)
        end

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        params(
          effective_date: Date,
          memo: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(effective_date:, memo: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            effective_date: Date,
            memo: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
