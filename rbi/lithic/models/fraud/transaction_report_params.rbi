# typed: strong

module Lithic
  module Models
    module Fraud
      class TransactionReportParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::Fraud::TransactionReportParams,
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
        sig do
          returns(Lithic::Fraud::TransactionReportParams::FraudStatus::OrSymbol)
        end
        attr_accessor :fraud_status

        # Optional field providing additional information or context about why the
        # transaction is considered fraudulent.
        sig { returns(T.nilable(String)) }
        attr_reader :comment

        sig { params(comment: String).void }
        attr_writer :comment

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
              Lithic::Fraud::TransactionReportParams::FraudType::OrSymbol
            )
          )
        end
        attr_reader :fraud_type

        sig do
          params(
            fraud_type:
              Lithic::Fraud::TransactionReportParams::FraudType::OrSymbol
          ).void
        end
        attr_writer :fraud_type

        sig do
          params(
            fraud_status:
              Lithic::Fraud::TransactionReportParams::FraudStatus::OrSymbol,
            comment: String,
            fraud_type:
              Lithic::Fraud::TransactionReportParams::FraudType::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
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

        sig do
          override.returns(
            {
              fraud_status:
                Lithic::Fraud::TransactionReportParams::FraudStatus::OrSymbol,
              comment: String,
              fraud_type:
                Lithic::Fraud::TransactionReportParams::FraudType::OrSymbol,
              request_options: Lithic::RequestOptions
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
        module FraudStatus
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Fraud::TransactionReportParams::FraudStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUSPECTED_FRAUD =
            T.let(
              :SUSPECTED_FRAUD,
              Lithic::Fraud::TransactionReportParams::FraudStatus::TaggedSymbol
            )
          FRAUDULENT =
            T.let(
              :FRAUDULENT,
              Lithic::Fraud::TransactionReportParams::FraudStatus::TaggedSymbol
            )
          NOT_FRAUDULENT =
            T.let(
              :NOT_FRAUDULENT,
              Lithic::Fraud::TransactionReportParams::FraudStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Fraud::TransactionReportParams::FraudStatus::TaggedSymbol
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
              T.all(Symbol, Lithic::Fraud::TransactionReportParams::FraudType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIRST_PARTY_FRAUD =
            T.let(
              :FIRST_PARTY_FRAUD,
              Lithic::Fraud::TransactionReportParams::FraudType::TaggedSymbol
            )
          ACCOUNT_TAKEOVER =
            T.let(
              :ACCOUNT_TAKEOVER,
              Lithic::Fraud::TransactionReportParams::FraudType::TaggedSymbol
            )
          CARD_COMPROMISED =
            T.let(
              :CARD_COMPROMISED,
              Lithic::Fraud::TransactionReportParams::FraudType::TaggedSymbol
            )
          IDENTITY_THEFT =
            T.let(
              :IDENTITY_THEFT,
              Lithic::Fraud::TransactionReportParams::FraudType::TaggedSymbol
            )
          CARDHOLDER_MANIPULATION =
            T.let(
              :CARDHOLDER_MANIPULATION,
              Lithic::Fraud::TransactionReportParams::FraudType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Fraud::TransactionReportParams::FraudType::TaggedSymbol
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
