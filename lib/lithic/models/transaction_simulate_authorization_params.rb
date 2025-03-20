# frozen_string_literal: true

module Lithic
  module Models
    class TransactionSimulateAuthorizationParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute amount
      #   Amount (in cents) to authorize. For credit authorizations and financial credit
      #     authorizations, any value entered will be converted into a negative amount in
      #     the simulated transaction. For example, entering 100 in this field will result
      #     in a -100 amount in the transaction. For balance inquiries, this field must be
      #     set to 0.
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

      # @!attribute [r] mcc
      #   Merchant category code for the transaction to be simulated. A four-digit number
      #     listed in ISO 18245. Supported merchant category codes can be found
      #     [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!parse
      #   # @return [String]
      #   attr_writer :mcc

      # @!attribute [r] merchant_acceptor_id
      #   Unique identifier to identify the payment card acceptor.
      #
      #   @return [String, nil]
      optional :merchant_acceptor_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :merchant_acceptor_id

      # @!attribute [r] merchant_amount
      #   Amount of the transaction to be simulated in currency specified in
      #     merchant_currency, including any acquirer fees.
      #
      #   @return [Integer, nil]
      optional :merchant_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :merchant_amount

      # @!attribute [r] merchant_currency
      #   3-character alphabetic ISO 4217 currency code. Note: Simulator only accepts USD,
      #     GBP, EUR and defaults to GBP if another ISO 4217 code is provided
      #
      #   @return [String, nil]
      optional :merchant_currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :merchant_currency

      # @!attribute [r] partial_approval_capable
      #   Set to true if the terminal is capable of partial approval otherwise false.
      #     Partial approval is when part of a transaction is approved and another payment
      #     must be used for the remainder.
      #
      #   @return [Boolean, nil]
      optional :partial_approval_capable, Lithic::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :partial_approval_capable

      # @!attribute [r] pin
      #   Simulate entering a PIN. If omitted, PIN check will not be performed.
      #
      #   @return [String, nil]
      optional :pin, String

      # @!parse
      #   # @return [String]
      #   attr_writer :pin

      # @!attribute [r] status
      #   Type of event to simulate.
      #
      #     - `AUTHORIZATION` is a dual message purchase authorization, meaning a subsequent
      #       clearing step is required to settle the transaction.
      #     - `BALANCE_INQUIRY` is a $0 authorization requesting the balance held on the
      #       card, and is most often observed when a cardholder requests to view a card's
      #       balance at an ATM.
      #     - `CREDIT_AUTHORIZATION` is a dual message request from a merchant to authorize
      #       a refund, meaning a subsequent clearing step is required to settle the
      #       transaction.
      #     - `FINANCIAL_AUTHORIZATION` is a single message request from a merchant to debit
      #       funds immediately (such as an ATM withdrawal), and no subsequent clearing is
      #       required to settle the transaction.
      #     - `FINANCIAL_CREDIT_AUTHORIZATION` is a single message request from a merchant
      #       to credit funds immediately, and no subsequent clearing is required to settle
      #       the transaction.
      #
      #   @return [Symbol, Lithic::Models::TransactionSimulateAuthorizationParams::Status, nil]
      optional :status, enum: -> { Lithic::Models::TransactionSimulateAuthorizationParams::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::TransactionSimulateAuthorizationParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param amount [Integer]
      #   # @param descriptor [String]
      #   # @param pan [String]
      #   # @param mcc [String]
      #   # @param merchant_acceptor_id [String]
      #   # @param merchant_amount [Integer]
      #   # @param merchant_currency [String]
      #   # @param partial_approval_capable [Boolean]
      #   # @param pin [String]
      #   # @param status [Symbol, Lithic::Models::TransactionSimulateAuthorizationParams::Status]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     descriptor:,
      #     pan:,
      #     mcc: nil,
      #     merchant_acceptor_id: nil,
      #     merchant_amount: nil,
      #     merchant_currency: nil,
      #     partial_approval_capable: nil,
      #     pin: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

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
        extend Lithic::Enum

        AUTHORIZATION = :AUTHORIZATION
        BALANCE_INQUIRY = :BALANCE_INQUIRY
        CREDIT_AUTHORIZATION = :CREDIT_AUTHORIZATION
        FINANCIAL_AUTHORIZATION = :FINANCIAL_AUTHORIZATION
        FINANCIAL_CREDIT_AUTHORIZATION = :FINANCIAL_CREDIT_AUTHORIZATION

        finalize!
      end
    end
  end
end
