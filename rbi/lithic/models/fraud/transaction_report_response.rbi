# typed: strong

module Lithic
  module Models
    module Fraud
      class TransactionReportResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::Fraud::TransactionReportResponse,
              Lithic::Internal::AnyHash
            )
          end

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
        sig do
          returns(
            Lithic::Models::Fraud::TransactionReportResponse::FraudStatus::TaggedSymbol
          )
        end
        attr_accessor :fraud_status

        # The universally unique identifier (UUID) associated with the transaction being
        # reported.
        sig { returns(String) }
        attr_accessor :transaction_token

        # Provides additional context or details about the fraud report.
        sig { returns(T.nilable(String)) }
        attr_reader :comment

        sig { params(comment: String).void }
        attr_writer :comment

        # Timestamp representing when the fraud report was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

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
        sig do
          returns(
            T.nilable(
              Lithic::Models::Fraud::TransactionReportResponse::FraudType::TaggedSymbol
            )
          )
        end
        attr_reader :fraud_type

        sig do
          params(
            fraud_type:
              Lithic::Models::Fraud::TransactionReportResponse::FraudType::OrSymbol
          ).void
        end
        attr_writer :fraud_type

        # Timestamp representing the last update to the fraud report.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            fraud_status:
              Lithic::Models::Fraud::TransactionReportResponse::FraudStatus::OrSymbol,
            transaction_token: String,
            comment: String,
            created_at: Time,
            fraud_type:
              Lithic::Models::Fraud::TransactionReportResponse::FraudType::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
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
          fraud_status:,
          # The universally unique identifier (UUID) associated with the transaction being
          # reported.
          transaction_token:,
          # Provides additional context or details about the fraud report.
          comment: nil,
          # Timestamp representing when the fraud report was created.
          created_at: nil,
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
          # Timestamp representing the last update to the fraud report.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              fraud_status:
                Lithic::Models::Fraud::TransactionReportResponse::FraudStatus::TaggedSymbol,
              transaction_token: String,
              comment: String,
              created_at: Time,
              fraud_type:
                Lithic::Models::Fraud::TransactionReportResponse::FraudType::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

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
        module FraudStatus
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::Fraud::TransactionReportResponse::FraudStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUSPECTED_FRAUD =
            T.let(
              :SUSPECTED_FRAUD,
              Lithic::Models::Fraud::TransactionReportResponse::FraudStatus::TaggedSymbol
            )
          FRAUDULENT =
            T.let(
              :FRAUDULENT,
              Lithic::Models::Fraud::TransactionReportResponse::FraudStatus::TaggedSymbol
            )
          NOT_FRAUDULENT =
            T.let(
              :NOT_FRAUDULENT,
              Lithic::Models::Fraud::TransactionReportResponse::FraudStatus::TaggedSymbol
            )
          NO_REPORTED_FRAUD =
            T.let(
              :NO_REPORTED_FRAUD,
              Lithic::Models::Fraud::TransactionReportResponse::FraudStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::Fraud::TransactionReportResponse::FraudStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
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

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::Fraud::TransactionReportResponse::FraudType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIRST_PARTY_FRAUD =
            T.let(
              :FIRST_PARTY_FRAUD,
              Lithic::Models::Fraud::TransactionReportResponse::FraudType::TaggedSymbol
            )
          ACCOUNT_TAKEOVER =
            T.let(
              :ACCOUNT_TAKEOVER,
              Lithic::Models::Fraud::TransactionReportResponse::FraudType::TaggedSymbol
            )
          CARD_COMPROMISED =
            T.let(
              :CARD_COMPROMISED,
              Lithic::Models::Fraud::TransactionReportResponse::FraudType::TaggedSymbol
            )
          IDENTITY_THEFT =
            T.let(
              :IDENTITY_THEFT,
              Lithic::Models::Fraud::TransactionReportResponse::FraudType::TaggedSymbol
            )
          CARDHOLDER_MANIPULATION =
            T.let(
              :CARDHOLDER_MANIPULATION,
              Lithic::Models::Fraud::TransactionReportResponse::FraudType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::Fraud::TransactionReportResponse::FraudType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
