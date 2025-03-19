# typed: strong

module Lithic
  module Models
    class TransactionSimulateClearingParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The transaction token returned from the /v1/simulate/authorize response.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Amount (in cents) to clear. Typically this will match the amount in the original
      #   authorization, but can be higher or lower. The sign of this amount will
      #   automatically match the sign of the original authorization's amount. For
      #   example, entering 100 in this field will result in a -100 amount in the
      #   transaction, if the original authorization is a credit authorization.
      #
      #   If `amount` is not set, the full amount of the transaction will be cleared.
      #   Transactions that have already cleared, either partially or fully, cannot be
      #   cleared again using this endpoint.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig do
        params(
          token: String,
          amount: Integer,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(token:, amount: nil, request_options: {})
      end

      sig { override.returns({token: String, amount: Integer, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
