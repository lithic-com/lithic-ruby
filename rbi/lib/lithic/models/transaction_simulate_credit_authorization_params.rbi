# typed: strong

module Lithic
  module Models
    class TransactionSimulateCreditAuthorizationParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Amount (in cents). Any value entered will be converted into a negative amount in
      #   the simulated transaction. For example, entering 100 in this field will appear
      #   as a -100 amount in the transaction.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Merchant descriptor.
      sig { returns(String) }
      def descriptor
      end

      sig { params(_: String).returns(String) }
      def descriptor=(_)
      end

      # Sixteen digit card number.
      sig { returns(String) }
      def pan
      end

      sig { params(_: String).returns(String) }
      def pan=(_)
      end

      # Merchant category code for the transaction to be simulated. A four-digit number
      #   listed in ISO 18245. Supported merchant category codes can be found
      #   [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      sig { returns(T.nilable(String)) }
      def mcc
      end

      sig { params(_: String).returns(String) }
      def mcc=(_)
      end

      # Unique identifier to identify the payment card acceptor.
      sig { returns(T.nilable(String)) }
      def merchant_acceptor_id
      end

      sig { params(_: String).returns(String) }
      def merchant_acceptor_id=(_)
      end

      sig do
        params(
          amount: Integer,
          descriptor: String,
          pan: String,
          mcc: String,
          merchant_acceptor_id: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(amount:, descriptor:, pan:, mcc: nil, merchant_acceptor_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              descriptor: String,
              pan: String,
              mcc: String,
              merchant_acceptor_id: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
