# typed: strong

module Lithic
  module Models
    class TransactionSimulateReturnParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Amount (in cents) to authorize.
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

      sig do
        params(
          amount: Integer,
          descriptor: String,
          pan: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(amount:, descriptor:, pan:, request_options: {})
      end

      sig do
        override
          .returns({
                     amount: Integer,
                     descriptor: String,
                     pan: String,
                     request_options: Lithic::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
