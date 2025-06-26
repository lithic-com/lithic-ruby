# frozen_string_literal: true

module Lithic
  module Models
    module Fraud
      # @see Lithic::Resources::Fraud::Transactions#report
      class TransactionReportParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute fraud_status
        #   The fraud status of the transaction, string (enum) supporting the following
        #   values:
        #
        #   - `SUSPECTED_FRAUD`: The transaction is suspected to be fraudulent, but this
        #     hasn’t been confirmed.
        #   - `FRAUDULENT`: The transaction is confirmed to be fraudulent. A transaction may
        #     immediately be moved into this state, or be graduated into this state from the
        #     `SUSPECTED_FRAUD` state.
        #   - `NOT_FRAUDULENT`: The transaction is (explicitly) marked as not fraudulent. A
        #     transaction may immediately be moved into this state, or be graduated into
        #     this state from the `SUSPECTED_FRAUD` state.
        #
        #   @return [Symbol, Lithic::Models::Fraud::TransactionReportParams::FraudStatus]
        required :fraud_status, enum: -> { Lithic::Fraud::TransactionReportParams::FraudStatus }

        # @!attribute comment
        #   Optional field providing additional information or context about why the
        #   transaction is considered fraudulent.
        #
        #   @return [String, nil]
        optional :comment, String

        # @!attribute fraud_type
        #   Specifies the type or category of fraud that the transaction is suspected or
        #   confirmed to involve, string (enum) supporting the following values:
        #
        #   - `FIRST_PARTY_FRAUD`: First-party fraud occurs when a legitimate account or
        #     cardholder intentionally misuses financial services for personal gain. This
        #     includes actions such as disputing legitimate transactions to obtain a refund,
        #     abusing return policies, or defaulting on credit obligations without intent to
        #     repay.
        #   - `ACCOUNT_TAKEOVER`: Account takeover fraud occurs when a fraudster gains
        #     unauthorized access to an existing account, modifies account settings, and
        #     carries out fraudulent transactions.
        #   - `CARD_COMPROMISED`: Card compromised fraud occurs when a fraudster gains
        #     access to card details without taking over the account, such as through
        #     physical card theft, cloning, or online data breaches.
        #   - `IDENTITY_THEFT`: Identity theft fraud occurs when a fraudster uses stolen
        #     personal information, such as Social Security numbers or addresses, to open
        #     accounts, apply for loans, or conduct financial transactions in someone's
        #     name.
        #   - `CARDHOLDER_MANIPULATION`: This type of fraud occurs when a fraudster
        #     manipulates or coerces a legitimate cardholder into unauthorized transactions,
        #     often through social engineering tactics.
        #
        #   @return [Symbol, Lithic::Models::Fraud::TransactionReportParams::FraudType, nil]
        optional :fraud_type, enum: -> { Lithic::Fraud::TransactionReportParams::FraudType }

        # @!method initialize(fraud_status:, comment: nil, fraud_type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Fraud::TransactionReportParams} for more details.
        #
        #   @param fraud_status [Symbol, Lithic::Models::Fraud::TransactionReportParams::FraudStatus] The fraud status of the transaction, string (enum) supporting the following valu
        #
        #   @param comment [String] Optional field providing additional information or context about why the transac
        #
        #   @param fraud_type [Symbol, Lithic::Models::Fraud::TransactionReportParams::FraudType] Specifies the type or category of fraud that the transaction is suspected or con
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # The fraud status of the transaction, string (enum) supporting the following
        # values:
        #
        # - `SUSPECTED_FRAUD`: The transaction is suspected to be fraudulent, but this
        #   hasn’t been confirmed.
        # - `FRAUDULENT`: The transaction is confirmed to be fraudulent. A transaction may
        #   immediately be moved into this state, or be graduated into this state from the
        #   `SUSPECTED_FRAUD` state.
        # - `NOT_FRAUDULENT`: The transaction is (explicitly) marked as not fraudulent. A
        #   transaction may immediately be moved into this state, or be graduated into
        #   this state from the `SUSPECTED_FRAUD` state.
        module FraudStatus
          extend Lithic::Internal::Type::Enum

          SUSPECTED_FRAUD = :SUSPECTED_FRAUD
          FRAUDULENT = :FRAUDULENT
          NOT_FRAUDULENT = :NOT_FRAUDULENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the type or category of fraud that the transaction is suspected or
        # confirmed to involve, string (enum) supporting the following values:
        #
        # - `FIRST_PARTY_FRAUD`: First-party fraud occurs when a legitimate account or
        #   cardholder intentionally misuses financial services for personal gain. This
        #   includes actions such as disputing legitimate transactions to obtain a refund,
        #   abusing return policies, or defaulting on credit obligations without intent to
        #   repay.
        # - `ACCOUNT_TAKEOVER`: Account takeover fraud occurs when a fraudster gains
        #   unauthorized access to an existing account, modifies account settings, and
        #   carries out fraudulent transactions.
        # - `CARD_COMPROMISED`: Card compromised fraud occurs when a fraudster gains
        #   access to card details without taking over the account, such as through
        #   physical card theft, cloning, or online data breaches.
        # - `IDENTITY_THEFT`: Identity theft fraud occurs when a fraudster uses stolen
        #   personal information, such as Social Security numbers or addresses, to open
        #   accounts, apply for loans, or conduct financial transactions in someone's
        #   name.
        # - `CARDHOLDER_MANIPULATION`: This type of fraud occurs when a fraudster
        #   manipulates or coerces a legitimate cardholder into unauthorized transactions,
        #   often through social engineering tactics.
        module FraudType
          extend Lithic::Internal::Type::Enum

          FIRST_PARTY_FRAUD = :FIRST_PARTY_FRAUD
          ACCOUNT_TAKEOVER = :ACCOUNT_TAKEOVER
          CARD_COMPROMISED = :CARD_COMPROMISED
          IDENTITY_THEFT = :IDENTITY_THEFT
          CARDHOLDER_MANIPULATION = :CARDHOLDER_MANIPULATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
