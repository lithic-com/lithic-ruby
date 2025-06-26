# frozen_string_literal: true

module Lithic
  module Models
    module Fraud
      # @see Lithic::Resources::Fraud::Transactions#retrieve
      class TransactionRetrieveResponse < Lithic::Internal::Type::BaseModel
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
        #   - `NO_REPORTED_FRAUD`: Indicates that no fraud report exists for the
        #     transaction. It is the default state for transactions that have not been
        #     analyzed or associated with any known fraudulent activity.
        #
        #   @return [Symbol, Lithic::Models::Fraud::TransactionRetrieveResponse::FraudStatus]
        required :fraud_status, enum: -> { Lithic::Models::Fraud::TransactionRetrieveResponse::FraudStatus }

        # @!attribute transaction_token
        #   The universally unique identifier (UUID) associated with the transaction being
        #   reported.
        #
        #   @return [String]
        required :transaction_token, String

        # @!attribute comment
        #   Provides additional context or details about the fraud report.
        #
        #   @return [String, nil]
        optional :comment, String

        # @!attribute created_at
        #   Timestamp representing when the fraud report was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

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
        #   @return [Symbol, Lithic::Models::Fraud::TransactionRetrieveResponse::FraudType, nil]
        optional :fraud_type, enum: -> { Lithic::Models::Fraud::TransactionRetrieveResponse::FraudType }

        # @!attribute updated_at
        #   Timestamp representing the last update to the fraud report.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(fraud_status:, transaction_token:, comment: nil, created_at: nil, fraud_type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Fraud::TransactionRetrieveResponse} for more details.
        #
        #   @param fraud_status [Symbol, Lithic::Models::Fraud::TransactionRetrieveResponse::FraudStatus] The fraud status of the transaction, string (enum) supporting the following valu
        #
        #   @param transaction_token [String] The universally unique identifier (UUID) associated with the transaction being r
        #
        #   @param comment [String] Provides additional context or details about the fraud report.
        #
        #   @param created_at [Time] Timestamp representing when the fraud report was created.
        #
        #   @param fraud_type [Symbol, Lithic::Models::Fraud::TransactionRetrieveResponse::FraudType] Specifies the type or category of fraud that the transaction is suspected or con
        #
        #   @param updated_at [Time] Timestamp representing the last update to the fraud report.

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
        # - `NO_REPORTED_FRAUD`: Indicates that no fraud report exists for the
        #   transaction. It is the default state for transactions that have not been
        #   analyzed or associated with any known fraudulent activity.
        #
        # @see Lithic::Models::Fraud::TransactionRetrieveResponse#fraud_status
        module FraudStatus
          extend Lithic::Internal::Type::Enum

          SUSPECTED_FRAUD = :SUSPECTED_FRAUD
          FRAUDULENT = :FRAUDULENT
          NOT_FRAUDULENT = :NOT_FRAUDULENT
          NO_REPORTED_FRAUD = :NO_REPORTED_FRAUD

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
        #
        # @see Lithic::Models::Fraud::TransactionRetrieveResponse#fraud_type
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
