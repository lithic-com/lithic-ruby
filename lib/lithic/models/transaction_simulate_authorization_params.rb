# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_authorization
    class TransactionSimulateAuthorizationParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount (in cents) to authorize. For credit authorizations and financial credit
      #   authorizations, any value entered will be converted into a negative amount in
      #   the simulated transaction. For example, entering 100 in this field will result
      #   in a -100 amount in the transaction. For balance inquiries, this field must be
      #   set to 0.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute descriptor
      #   Merchant descriptor.
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute pan
      #   Sixteen digit card number.
      #
      #   @return [String]
      required :pan, String

      # @!attribute mcc
      #   Merchant category code for the transaction to be simulated. A four-digit number
      #   listed in ISO 18245. Supported merchant category codes can be found
      #   [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!attribute merchant_acceptor_id
      #   Unique identifier to identify the payment card acceptor.
      #
      #   @return [String, nil]
      optional :merchant_acceptor_id, String

      # @!attribute merchant_amount
      #   Amount of the transaction to be simulated in currency specified in
      #   merchant_currency, including any acquirer fees.
      #
      #   @return [Integer, nil]
      optional :merchant_amount, Integer

      # @!attribute merchant_currency
      #   3-character alphabetic ISO 4217 currency code. Note: Simulator only accepts USD,
      #   GBP, EUR and defaults to GBP if another ISO 4217 code is provided
      #
      #   @return [String, nil]
      optional :merchant_currency, String

      # @!attribute partial_approval_capable
      #   Set to true if the terminal is capable of partial approval otherwise false.
      #   Partial approval is when part of a transaction is approved and another payment
      #   must be used for the remainder.
      #
      #   @return [Boolean, nil]
      optional :partial_approval_capable, Lithic::Internal::Type::Boolean

      # @!attribute pin
      #   Simulate entering a PIN. If omitted, PIN check will not be performed.
      #
      #   @return [String, nil]
      optional :pin, String

      # @!attribute status
      #   Type of event to simulate.
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
      #
      #   @return [Symbol, Lithic::Models::TransactionSimulateAuthorizationParams::Status, nil]
      optional :status, enum: -> { Lithic::Models::TransactionSimulateAuthorizationParams::Status }

      # @!method initialize(amount:, descriptor:, pan:, mcc: nil, merchant_acceptor_id: nil, merchant_amount: nil, merchant_currency: nil, partial_approval_capable: nil, pin: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TransactionSimulateAuthorizationParams} for more details.
      #
      #   @param amount [Integer] Amount (in cents) to authorize. For credit authorizations and financial credit a
      #   ...
      #
      #   @param descriptor [String] Merchant descriptor.
      #
      #   @param pan [String] Sixteen digit card number.
      #
      #   @param mcc [String] Merchant category code for the transaction to be simulated. A four-digit number
      #   ...
      #
      #   @param merchant_acceptor_id [String] Unique identifier to identify the payment card acceptor.
      #
      #   @param merchant_amount [Integer] Amount of the transaction to be simulated in currency specified in merchant_curr
      #   ...
      #
      #   @param merchant_currency [String] 3-character alphabetic ISO 4217 currency code. Note: Simulator only accepts USD,
      #   ...
      #
      #   @param partial_approval_capable [Boolean] Set to true if the terminal is capable of partial approval otherwise false. ...
      #
      #   @param pin [String] Simulate entering a PIN. If omitted, PIN check will not be performed.
      #
      #   @param status [Symbol, Lithic::Models::TransactionSimulateAuthorizationParams::Status] Type of event to simulate. ...
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Type of event to simulate.
      #
      # - `AUTHORIZATION` is a dual message purchase authorization, meaning a subsequent
      #   clearing step is required to settle the transaction.
      # - `BALANCE_INQUIRY` is a $0 authorization requesting the balance held on the
      #   card, and is most often observed when a cardholder requests to view a card's
      #   balance at an ATM.
      # - `CREDIT_AUTHORIZATION` is a dual message request from a merchant to authorize
      #   a refund, meaning a subsequent clearing step is required to settle the
      #   transaction.
      # - `FINANCIAL_AUTHORIZATION` is a single message request from a merchant to debit
      #   funds immediately (such as an ATM withdrawal), and no subsequent clearing is
      #   required to settle the transaction.
      # - `FINANCIAL_CREDIT_AUTHORIZATION` is a single message request from a merchant
      #   to credit funds immediately, and no subsequent clearing is required to settle
      #   the transaction.
      module Status
        extend Lithic::Internal::Type::Enum

        AUTHORIZATION = :AUTHORIZATION
        BALANCE_INQUIRY = :BALANCE_INQUIRY
        CREDIT_AUTHORIZATION = :CREDIT_AUTHORIZATION
        FINANCIAL_AUTHORIZATION = :FINANCIAL_AUTHORIZATION
        FINANCIAL_CREDIT_AUTHORIZATION = :FINANCIAL_CREDIT_AUTHORIZATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
