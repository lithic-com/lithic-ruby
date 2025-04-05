# typed: strong

module Lithic
  module Models
    class TransactionSimulateAuthorizationParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Amount (in cents) to authorize. For credit authorizations and financial credit
      #   authorizations, any value entered will be converted into a negative amount in
      #   the simulated transaction. For example, entering 100 in this field will result
      #   in a -100 amount in the transaction. For balance inquiries, this field must be
      #   set to 0.
      sig { returns(Integer) }
      attr_accessor :amount

      # Merchant descriptor.
      sig { returns(String) }
      attr_accessor :descriptor

      # Sixteen digit card number.
      sig { returns(String) }
      attr_accessor :pan

      # Merchant category code for the transaction to be simulated. A four-digit number
      #   listed in ISO 18245. Supported merchant category codes can be found
      #   [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      sig { returns(T.nilable(String)) }
      attr_reader :mcc

      sig { params(mcc: String).void }
      attr_writer :mcc

      # Unique identifier to identify the payment card acceptor.
      sig { returns(T.nilable(String)) }
      attr_reader :merchant_acceptor_id

      sig { params(merchant_acceptor_id: String).void }
      attr_writer :merchant_acceptor_id

      # Amount of the transaction to be simulated in currency specified in
      #   merchant_currency, including any acquirer fees.
      sig { returns(T.nilable(Integer)) }
      attr_reader :merchant_amount

      sig { params(merchant_amount: Integer).void }
      attr_writer :merchant_amount

      # 3-character alphabetic ISO 4217 currency code. Note: Simulator only accepts USD,
      #   GBP, EUR and defaults to GBP if another ISO 4217 code is provided
      sig { returns(T.nilable(String)) }
      attr_reader :merchant_currency

      sig { params(merchant_currency: String).void }
      attr_writer :merchant_currency

      # Set to true if the terminal is capable of partial approval otherwise false.
      #   Partial approval is when part of a transaction is approved and another payment
      #   must be used for the remainder.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :partial_approval_capable

      sig { params(partial_approval_capable: T::Boolean).void }
      attr_writer :partial_approval_capable

      # Simulate entering a PIN. If omitted, PIN check will not be performed.
      sig { returns(T.nilable(String)) }
      attr_reader :pin

      sig { params(pin: String).void }
      attr_writer :pin

      # Type of event to simulate.
      #
      #   - `AUTHORIZATION` is a dual message purchase authorization, meaning a subsequent
      #     clearing step is required to settle the transaction.
      #   - `BALANCE_INQUIRY` is a $0 authorization requesting the balance held on the
      #     card, and is most often observed when a cardholder requests to view a card's
      #     balance at an ATM.
      #   - `CREDIT_AUTHORIZATION` is a dual message request from a merchant to authorize
      #     a refund, meaning a subsequent clearing step is required to settle the
      #     transaction.
      #   - `FINANCIAL_AUTHORIZATION` is a single message request from a merchant to debit
      #     funds immediately (such as an ATM withdrawal), and no subsequent clearing is
      #     required to settle the transaction.
      #   - `FINANCIAL_CREDIT_AUTHORIZATION` is a single message request from a merchant
      #     to credit funds immediately, and no subsequent clearing is required to settle
      #     the transaction.
      sig { returns(T.nilable(Lithic::Models::TransactionSimulateAuthorizationParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::TransactionSimulateAuthorizationParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          amount: Integer,
          descriptor: String,
          pan: String,
          mcc: String,
          merchant_acceptor_id: String,
          merchant_amount: Integer,
          merchant_currency: String,
          partial_approval_capable: T::Boolean,
          pin: String,
          status: Lithic::Models::TransactionSimulateAuthorizationParams::Status::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        descriptor:,
        pan:,
        mcc: nil,
        merchant_acceptor_id: nil,
        merchant_amount: nil,
        merchant_currency: nil,
        partial_approval_capable: nil,
        pin: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              amount: Integer,
              descriptor: String,
              pan: String,
              mcc: String,
              merchant_acceptor_id: String,
              merchant_amount: Integer,
              merchant_currency: String,
              partial_approval_capable: T::Boolean,
              pin: String,
              status: Lithic::Models::TransactionSimulateAuthorizationParams::Status::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

      # Type of event to simulate.
      #
      #   - `AUTHORIZATION` is a dual message purchase authorization, meaning a subsequent
      #     clearing step is required to settle the transaction.
      #   - `BALANCE_INQUIRY` is a $0 authorization requesting the balance held on the
      #     card, and is most often observed when a cardholder requests to view a card's
      #     balance at an ATM.
      #   - `CREDIT_AUTHORIZATION` is a dual message request from a merchant to authorize
      #     a refund, meaning a subsequent clearing step is required to settle the
      #     transaction.
      #   - `FINANCIAL_AUTHORIZATION` is a single message request from a merchant to debit
      #     funds immediately (such as an ATM withdrawal), and no subsequent clearing is
      #     required to settle the transaction.
      #   - `FINANCIAL_CREDIT_AUTHORIZATION` is a single message request from a merchant
      #     to credit funds immediately, and no subsequent clearing is required to settle
      #     the transaction.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::TransactionSimulateAuthorizationParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::TransactionSimulateAuthorizationParams::Status::TaggedSymbol) }

        AUTHORIZATION =
          T.let(:AUTHORIZATION, Lithic::Models::TransactionSimulateAuthorizationParams::Status::TaggedSymbol)
        BALANCE_INQUIRY =
          T.let(:BALANCE_INQUIRY, Lithic::Models::TransactionSimulateAuthorizationParams::Status::TaggedSymbol)
        CREDIT_AUTHORIZATION =
          T.let(:CREDIT_AUTHORIZATION, Lithic::Models::TransactionSimulateAuthorizationParams::Status::TaggedSymbol)
        FINANCIAL_AUTHORIZATION =
          T.let(
            :FINANCIAL_AUTHORIZATION,
            Lithic::Models::TransactionSimulateAuthorizationParams::Status::TaggedSymbol
          )
        FINANCIAL_CREDIT_AUTHORIZATION =
          T.let(
            :FINANCIAL_CREDIT_AUTHORIZATION,
            Lithic::Models::TransactionSimulateAuthorizationParams::Status::TaggedSymbol
          )

        sig { override.returns(T::Array[Lithic::Models::TransactionSimulateAuthorizationParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
