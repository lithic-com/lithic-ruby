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

      sig { returns(T.nilable(Symbol)) }
      def progress_to
      end

      sig { params(_: Symbol).returns(Symbol) }
      def progress_to=(_)
      end

      sig do
        params(
          effective_date: Date,
          memo: String,
          progress_to: Symbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(effective_date:, memo: nil, progress_to: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {effective_date: Date, memo: String, progress_to: Symbol, request_options: Lithic::RequestOptions}
          )
      end
      def to_hash
      end

      class ProgressTo < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        SETTLED = :SETTLED
        RELEASED = :RELEASED
      end
    end
  end
end
