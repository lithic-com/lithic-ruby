# typed: strong

module Lithic
  module Resources
    class Fraud
      class Transactions
        # Retrieve a fraud report for a specific transaction identified by its unique
        # transaction token.
        sig do
          params(
            transaction_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::Fraud::TransactionRetrieveResponse)
        end
        def retrieve(
          # The token of the transaction that the enhanced data is associated with.
          transaction_token,
          request_options: {}
        )
        end

        # Report fraud for a specific transaction token by providing details such as fraud
        # type, fraud status, and any additional comments.
        sig do
          params(
            transaction_token: String,
            fraud_status:
              Lithic::Fraud::TransactionReportParams::FraudStatus::OrSymbol,
            comment: String,
            fraud_type:
              Lithic::Fraud::TransactionReportParams::FraudType::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::Fraud::TransactionReportResponse)
        end
        def report(
          # The token of the transaction that the enhanced data is associated with.
          transaction_token,
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
          fraud_status:,
          # Optional field providing additional information or context about why the
          # transaction is considered fraudulent.
          comment: nil,
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
          fraud_type: nil,
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
end
