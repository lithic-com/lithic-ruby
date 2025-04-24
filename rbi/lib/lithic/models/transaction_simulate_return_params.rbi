# typed: strong

module Lithic
  module Models
    class TransactionSimulateReturnParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Amount (in cents) to authorize.
      sig { returns(Integer) }
      attr_accessor :amount

      # Merchant descriptor.
      sig { returns(String) }
      attr_accessor :descriptor

      # Sixteen digit card number.
      sig { returns(String) }
      attr_accessor :pan

      sig do
        params(
          amount: Integer,
          descriptor: String,
          pan: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Amount (in cents) to authorize.
        amount:,
        # Merchant descriptor.
        descriptor:,
        # Sixteen digit card number.
        pan:,
        request_options: {}
      ); end
      sig do
        override
          .returns({
                     amount: Integer,
                     descriptor: String,
                     pan: String,
                     request_options: Lithic::RequestOptions
                   })
      end
      def to_hash; end
    end
  end
end
