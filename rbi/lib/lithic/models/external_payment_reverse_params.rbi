# typed: strong

module Lithic
  module Models
    class ExternalPaymentReverseParams < Lithic::BaseModel
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

      sig do
        params(
          effective_date: Date,
          memo: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(effective_date:, memo: nil, request_options: {})
      end

      sig { override.returns({effective_date: Date, memo: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
