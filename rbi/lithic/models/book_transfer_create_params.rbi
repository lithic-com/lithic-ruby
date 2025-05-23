# typed: strong

module Lithic
  module Models
    class BookTransferCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::BookTransferCreateParams, Lithic::Internal::AnyHash)
        end

      # Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      # This should always be a positive value.
      sig { returns(Integer) }
      attr_accessor :amount

      # Category of the book transfer
      sig { returns(Lithic::BookTransferCreateParams::Category::OrSymbol) }
      attr_accessor :category

      # Globally unique identifier for the financial account or card that will send the
      # funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      attr_accessor :from_financial_account_token

      # The program specific subtype code for the specified category/type.
      sig { returns(String) }
      attr_accessor :subtype

      # Globally unique identifier for the financial account or card that will receive
      # the funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      attr_accessor :to_financial_account_token

      # Type of book_transfer
      sig { returns(Lithic::BookTransferCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Customer-provided token that will serve as an idempotency token. This token will
      # become the transaction token.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Optional descriptor for the transfer.
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        params(
          amount: Integer,
          category: Lithic::BookTransferCreateParams::Category::OrSymbol,
          from_financial_account_token: String,
          subtype: String,
          to_financial_account_token: String,
          type: Lithic::BookTransferCreateParams::Type::OrSymbol,
          token: String,
          memo: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
        # This should always be a positive value.
        amount:,
        # Category of the book transfer
        category:,
        # Globally unique identifier for the financial account or card that will send the
        # funds. Accepted type dependent on the program's use case.
        from_financial_account_token:,
        # The program specific subtype code for the specified category/type.
        subtype:,
        # Globally unique identifier for the financial account or card that will receive
        # the funds. Accepted type dependent on the program's use case.
        to_financial_account_token:,
        # Type of book_transfer
        type:,
        # Customer-provided token that will serve as an idempotency token. This token will
        # become the transaction token.
        token: nil,
        # Optional descriptor for the transfer.
        memo: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            category: Lithic::BookTransferCreateParams::Category::OrSymbol,
            from_financial_account_token: String,
            subtype: String,
            to_financial_account_token: String,
            type: Lithic::BookTransferCreateParams::Type::OrSymbol,
            token: String,
            memo: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Category of the book transfer
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::BookTransferCreateParams::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADJUSTMENT =
          T.let(
            :ADJUSTMENT,
            Lithic::BookTransferCreateParams::Category::TaggedSymbol
          )
        BALANCE_OR_FUNDING =
          T.let(
            :BALANCE_OR_FUNDING,
            Lithic::BookTransferCreateParams::Category::TaggedSymbol
          )
        DERECOGNITION =
          T.let(
            :DERECOGNITION,
            Lithic::BookTransferCreateParams::Category::TaggedSymbol
          )
        DISPUTE =
          T.let(
            :DISPUTE,
            Lithic::BookTransferCreateParams::Category::TaggedSymbol
          )
        FEE =
          T.let(:FEE, Lithic::BookTransferCreateParams::Category::TaggedSymbol)
        REWARD =
          T.let(
            :REWARD,
            Lithic::BookTransferCreateParams::Category::TaggedSymbol
          )
        TRANSFER =
          T.let(
            :TRANSFER,
            Lithic::BookTransferCreateParams::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::BookTransferCreateParams::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Type of book_transfer
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::BookTransferCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ATM_WITHDRAWAL =
          T.let(
            :ATM_WITHDRAWAL,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        ATM_DECLINE =
          T.let(
            :ATM_DECLINE,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        INTERNATIONAL_ATM_WITHDRAWAL =
          T.let(
            :INTERNATIONAL_ATM_WITHDRAWAL,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        INACTIVITY =
          T.let(
            :INACTIVITY,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        STATEMENT =
          T.let(
            :STATEMENT,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        MONTHLY =
          T.let(:MONTHLY, Lithic::BookTransferCreateParams::Type::TaggedSymbol)
        QUARTERLY =
          T.let(
            :QUARTERLY,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        ANNUAL =
          T.let(:ANNUAL, Lithic::BookTransferCreateParams::Type::TaggedSymbol)
        CUSTOMER_SERVICE =
          T.let(
            :CUSTOMER_SERVICE,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        ACCOUNT_MAINTENANCE =
          T.let(
            :ACCOUNT_MAINTENANCE,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        ACCOUNT_ACTIVATION =
          T.let(
            :ACCOUNT_ACTIVATION,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        ACCOUNT_CLOSURE =
          T.let(
            :ACCOUNT_CLOSURE,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        CARD_REPLACEMENT =
          T.let(
            :CARD_REPLACEMENT,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        CARD_DELIVERY =
          T.let(
            :CARD_DELIVERY,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        CARD_CREATE =
          T.let(
            :CARD_CREATE,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        CURRENCY_CONVERSION =
          T.let(
            :CURRENCY_CONVERSION,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        INTEREST =
          T.let(:INTEREST, Lithic::BookTransferCreateParams::Type::TaggedSymbol)
        LATE_PAYMENT =
          T.let(
            :LATE_PAYMENT,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        BILL_PAYMENT =
          T.let(
            :BILL_PAYMENT,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        CASH_BACK =
          T.let(
            :CASH_BACK,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        ACCOUNT_TO_ACCOUNT =
          T.let(
            :ACCOUNT_TO_ACCOUNT,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        CARD_TO_CARD =
          T.let(
            :CARD_TO_CARD,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        DISBURSE =
          T.let(:DISBURSE, Lithic::BookTransferCreateParams::Type::TaggedSymbol)
        BILLING_ERROR =
          T.let(
            :BILLING_ERROR,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        LOSS_WRITE_OFF =
          T.let(
            :LOSS_WRITE_OFF,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        EXPIRED_CARD =
          T.let(
            :EXPIRED_CARD,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        EARLY_DERECOGNITION =
          T.let(
            :EARLY_DERECOGNITION,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        ESCHEATMENT =
          T.let(
            :ESCHEATMENT,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        INACTIVITY_FEE_DOWN =
          T.let(
            :INACTIVITY_FEE_DOWN,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        PROVISIONAL_CREDIT =
          T.let(
            :PROVISIONAL_CREDIT,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        DISPUTE_WON =
          T.let(
            :DISPUTE_WON,
            Lithic::BookTransferCreateParams::Type::TaggedSymbol
          )
        SERVICE =
          T.let(:SERVICE, Lithic::BookTransferCreateParams::Type::TaggedSymbol)
        TRANSFER =
          T.let(:TRANSFER, Lithic::BookTransferCreateParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::BookTransferCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
