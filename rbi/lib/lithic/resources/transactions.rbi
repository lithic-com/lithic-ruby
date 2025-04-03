# typed: strong

module Lithic
  module Resources
    class Transactions
      sig { returns(Lithic::Resources::Transactions::EnhancedCommercialData) }
      attr_reader :enhanced_commercial_data

      sig { returns(Lithic::Resources::Transactions::Events) }
      attr_reader :events

      # Get a specific card transaction. All amounts are in the smallest unit of their
      #   respective currency (e.g., cents for USD).
      sig do
        params(
          transaction_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::Transaction)
      end
      def retrieve(
        # Globally unique identifier for the transaction.
        transaction_token,
        request_options: {}
      )
      end

      # List card transactions. All amounts are in the smallest unit of their respective
      #   currency (e.g., cents for USD) and inclusive of any acquirer fees.
      sig do
        params(
          account_token: String,
          begin_: Time,
          card_token: String,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          result: Lithic::Models::TransactionListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::Models::TransactionListParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Internal::CursorPage[Lithic::Models::Transaction])
      end
      def list(
        # Filters for transactions associated with a specific account.
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        begin_: nil,
        # Filters for transactions associated with a specific card.
        card_token: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # Filters for transactions using transaction result field. Can filter by
        #   `APPROVED`, and `DECLINED`.
        result: nil,
        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Filters for transactions using transaction status field.
        status: nil,
        request_options: {}
      )
      end

      # Expire authorization
      sig do
        params(
          transaction_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .void
      end
      def expire_authorization(
        # The token of the transaction to expire.
        transaction_token,
        request_options: {}
      )
      end

      # Simulates an authorization request from the card network as if it came from a
      #   merchant acquirer. If you are configured for ASA, simulating authorizations
      #   requires your ASA client to be set up properly, i.e. be able to respond to the
      #   ASA request with a valid JSON. For users that are not configured for ASA, a
      #   daily transaction limit of $5000 USD is applied by default. You can update this
      #   limit via the
      #   [update account](https://docs.lithic.com/reference/patchaccountbytoken)
      #   endpoint.
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
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::TransactionSimulateAuthorizationResponse)
      end
      def simulate_authorization(
        # Amount (in cents) to authorize. For credit authorizations and financial credit
        #   authorizations, any value entered will be converted into a negative amount in
        #   the simulated transaction. For example, entering 100 in this field will result
        #   in a -100 amount in the transaction. For balance inquiries, this field must be
        #   set to 0.
        amount:,
        # Merchant descriptor.
        descriptor:,
        # Sixteen digit card number.
        pan:,
        # Merchant category code for the transaction to be simulated. A four-digit number
        #   listed in ISO 18245. Supported merchant category codes can be found
        #   [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
        mcc: nil,
        # Unique identifier to identify the payment card acceptor.
        merchant_acceptor_id: nil,
        # Amount of the transaction to be simulated in currency specified in
        #   merchant_currency, including any acquirer fees.
        merchant_amount: nil,
        # 3-character alphabetic ISO 4217 currency code. Note: Simulator only accepts USD,
        #   GBP, EUR and defaults to GBP if another ISO 4217 code is provided
        merchant_currency: nil,
        # Set to true if the terminal is capable of partial approval otherwise false.
        #   Partial approval is when part of a transaction is approved and another payment
        #   must be used for the remainder.
        partial_approval_capable: nil,
        # Simulate entering a PIN. If omitted, PIN check will not be performed.
        pin: nil,
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
        status: nil,
        request_options: {}
      )
      end

      # Simulates an authorization advice from the card network as if it came from a
      #   merchant acquirer. An authorization advice changes the pending amount of the
      #   transaction.
      sig do
        params(
          token: String,
          amount: Integer,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::TransactionSimulateAuthorizationAdviceResponse)
      end
      def simulate_authorization_advice(
        # The transaction token returned from the /v1/simulate/authorize. response.
        token:,
        # Amount (in cents) to authorize. This amount will override the transaction's
        #   amount that was originally set by /v1/simulate/authorize.
        amount:,
        request_options: {}
      )
      end

      # Clears an existing authorization, either debit or credit. After this event, the
      #   transaction transitions from `PENDING` to `SETTLED` status.
      #
      #   If `amount` is not set, the full amount of the transaction will be cleared.
      #   Transactions that have already cleared, either partially or fully, cannot be
      #   cleared again using this endpoint.
      sig do
        params(
          token: String,
          amount: Integer,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::TransactionSimulateClearingResponse)
      end
      def simulate_clearing(
        # The transaction token returned from the /v1/simulate/authorize response.
        token:,
        # Amount (in cents) to clear. Typically this will match the amount in the original
        #   authorization, but can be higher or lower. The sign of this amount will
        #   automatically match the sign of the original authorization's amount. For
        #   example, entering 100 in this field will result in a -100 amount in the
        #   transaction, if the original authorization is a credit authorization.
        #
        #   If `amount` is not set, the full amount of the transaction will be cleared.
        #   Transactions that have already cleared, either partially or fully, cannot be
        #   cleared again using this endpoint.
        amount: nil,
        request_options: {}
      )
      end

      # Simulates a credit authorization advice from the card network. This message
      #   indicates that the network approved a credit authorization on your behalf.
      sig do
        params(
          amount: Integer,
          descriptor: String,
          pan: String,
          mcc: String,
          merchant_acceptor_id: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::TransactionSimulateCreditAuthorizationResponse)
      end
      def simulate_credit_authorization(
        # Amount (in cents). Any value entered will be converted into a negative amount in
        #   the simulated transaction. For example, entering 100 in this field will appear
        #   as a -100 amount in the transaction.
        amount:,
        # Merchant descriptor.
        descriptor:,
        # Sixteen digit card number.
        pan:,
        # Merchant category code for the transaction to be simulated. A four-digit number
        #   listed in ISO 18245. Supported merchant category codes can be found
        #   [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
        mcc: nil,
        # Unique identifier to identify the payment card acceptor.
        merchant_acceptor_id: nil,
        request_options: {}
      )
      end

      # Returns, or refunds, an amount back to a card. Returns simulated via this
      #   endpoint clear immediately, without prior authorization, and result in a
      #   `SETTLED` transaction status.
      sig do
        params(
          amount: Integer,
          descriptor: String,
          pan: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::TransactionSimulateReturnResponse)
      end
      def simulate_return(
        # Amount (in cents) to authorize.
        amount:,
        # Merchant descriptor.
        descriptor:,
        # Sixteen digit card number.
        pan:,
        request_options: {}
      )
      end

      # Reverses a return, i.e. a credit transaction with a `SETTLED` status. Returns
      #   can be financial credit authorizations, or credit authorizations that have
      #   cleared.
      sig do
        params(
          token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::TransactionSimulateReturnReversalResponse)
      end
      def simulate_return_reversal(
        # The transaction token returned from the /v1/simulate/authorize response.
        token:,
        request_options: {}
      )
      end

      # Voids a pending authorization. If `amount` is not set, the full amount will be
      #   voided. Can be used on partially voided transactions but not partially cleared
      #   transactions. _Simulating an authorization expiry on credit authorizations or
      #   credit authorization advice is not currently supported but will be added soon._
      sig do
        params(
          token: String,
          amount: Integer,
          type: Lithic::Models::TransactionSimulateVoidParams::Type::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::TransactionSimulateVoidResponse)
      end
      def simulate_void(
        # The transaction token returned from the /v1/simulate/authorize response.
        token:,
        # Amount (in cents) to void. Typically this will match the amount in the original
        #   authorization, but can be less.
        amount: nil,
        # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
        #
        #   - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
        #     by Lithic.
        #   - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
        type: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
