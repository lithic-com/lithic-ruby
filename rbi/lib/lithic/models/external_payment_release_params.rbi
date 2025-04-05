# typed: strong

module Lithic
  module Models
    class ExternalPaymentReleaseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

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
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(effective_date:, memo: nil, request_options: {}); end

      sig { override.returns({effective_date: Date, memo: String, request_options: Lithic::RequestOptions}) }
      def to_hash; end
    end
  end
end
