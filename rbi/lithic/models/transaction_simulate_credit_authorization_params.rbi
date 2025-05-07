# typed: strong

module Lithic
  module Models
    class TransactionSimulateCreditAuthorizationParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Amount (in cents). Any value entered will be converted into a negative amount in
      # the simulated transaction. For example, entering 100 in this field will appear
      # as a -100 amount in the transaction.
      sig { returns(Integer) }
      attr_accessor :amount

      # Merchant descriptor.
      sig { returns(String) }
      attr_accessor :descriptor

      # Sixteen digit card number.
      sig { returns(String) }
      attr_accessor :pan

      # Merchant category code for the transaction to be simulated. A four-digit number
      # listed in ISO 18245. Supported merchant category codes can be found
      # [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      sig { returns(T.nilable(String)) }
      attr_reader :mcc

      sig { params(mcc: String).void }
      attr_writer :mcc

      # Unique identifier to identify the payment card acceptor.
      sig { returns(T.nilable(String)) }
      attr_reader :merchant_acceptor_id

      sig { params(merchant_acceptor_id: String).void }
      attr_writer :merchant_acceptor_id

      sig do
        params(
          amount: Integer,
          descriptor: String,
          pan: String,
          mcc: String,
          merchant_acceptor_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount (in cents). Any value entered will be converted into a negative amount in
        # the simulated transaction. For example, entering 100 in this field will appear
        # as a -100 amount in the transaction.
        amount:,
        # Merchant descriptor.
        descriptor:,
        # Sixteen digit card number.
        pan:,
        # Merchant category code for the transaction to be simulated. A four-digit number
        # listed in ISO 18245. Supported merchant category codes can be found
        # [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
        mcc: nil,
        # Unique identifier to identify the payment card acceptor.
        merchant_acceptor_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
