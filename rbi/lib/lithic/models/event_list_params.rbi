# typed: strong

module Lithic
  module Models
    class EventListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      def begin_
      end

      sig { params(_: Time).returns(Time) }
      def begin_=(_)
      end

      # Date string in RFC 3339 format. Only entries created before the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      def end_
      end

      sig { params(_: Time).returns(Time) }
      def end_=(_)
      end

      # A cursor representing an item's token before which a page of results should end.
      #   Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      def ending_before
      end

      sig { params(_: String).returns(String) }
      def ending_before=(_)
      end

      # Event types to filter events by.
      sig { returns(T.nilable(T::Array[Symbol])) }
      def event_types
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def event_types=(_)
      end

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      def starting_after
      end

      sig { params(_: String).returns(String) }
      def starting_after=(_)
      end

      # Whether to include the event payload content in the response.
      sig { returns(T.nilable(T::Boolean)) }
      def with_content
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def with_content=(_)
      end

      sig do
        params(
          begin_: Time,
          end_: Time,
          ending_before: String,
          event_types: T::Array[Symbol],
          page_size: Integer,
          starting_after: String,
          with_content: T::Boolean,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        begin_: nil,
        end_: nil,
        ending_before: nil,
        event_types: nil,
        page_size: nil,
        starting_after: nil,
        with_content: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              begin_: Time,
              end_: Time,
              ending_before: String,
              event_types: T::Array[Symbol],
              page_size: Integer,
              starting_after: String,
              with_content: T::Boolean,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      class EventType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACCOUNT_HOLDER_CREATED = :"account_holder.created"
        ACCOUNT_HOLDER_UPDATED = :"account_holder.updated"
        ACCOUNT_HOLDER_VERIFICATION = :"account_holder.verification"
        AUTH_RULES_PERFORMANCE_REPORT_CREATED = :"auth_rules.performance_report.created"
        BALANCE_UPDATED = :"balance.updated"
        BOOK_TRANSFER_TRANSACTION_CREATED = :"book_transfer_transaction.created"
        CARD_CREATED = :"card.created"
        CARD_RENEWED = :"card.renewed"
        CARD_REISSUED = :"card.reissued"
        CARD_CONVERTED = :"card.converted"
        CARD_SHIPPED = :"card.shipped"
        CARD_TRANSACTION_UPDATED = :"card_transaction.updated"
        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST = :"digital_wallet.tokenization_approval_request"
        DIGITAL_WALLET_TOKENIZATION_RESULT = :"digital_wallet.tokenization_result"
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          :"digital_wallet.tokenization_two_factor_authentication_code"
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          :"digital_wallet.tokenization_two_factor_authentication_code_sent"
        DIGITAL_WALLET_TOKENIZATION_UPDATED = :"digital_wallet.tokenization_updated"
        DISPUTE_UPDATED = :"dispute.updated"
        DISPUTE_EVIDENCE_UPLOAD_FAILED = :"dispute_evidence.upload_failed"
        EXTERNAL_BANK_ACCOUNT_CREATED = :"external_bank_account.created"
        EXTERNAL_BANK_ACCOUNT_UPDATED = :"external_bank_account.updated"
        EXTERNAL_PAYMENT_CREATED = :"external_payment.created"
        EXTERNAL_PAYMENT_UPDATED = :"external_payment.updated"
        FINANCIAL_ACCOUNT_CREATED = :"financial_account.created"
        FINANCIAL_ACCOUNT_UPDATED = :"financial_account.updated"
        LOAN_TAPE_CREATED = :"loan_tape.created"
        LOAN_TAPE_UPDATED = :"loan_tape.updated"
        MANAGEMENT_OPERATION_CREATED = :"management_operation.created"
        MANAGEMENT_OPERATION_UPDATED = :"management_operation.updated"
        PAYMENT_TRANSACTION_CREATED = :"payment_transaction.created"
        PAYMENT_TRANSACTION_UPDATED = :"payment_transaction.updated"
        INTERNAL_TRANSACTION_CREATED = :"internal_transaction.created"
        INTERNAL_TRANSACTION_UPDATED = :"internal_transaction.updated"
        SETTLEMENT_REPORT_UPDATED = :"settlement_report.updated"
        STATEMENTS_CREATED = :"statements.created"
        THREE_DS_AUTHENTICATION_CREATED = :"three_ds_authentication.created"
        THREE_DS_AUTHENTICATION_UPDATED = :"three_ds_authentication.updated"
        TOKENIZATION_APPROVAL_REQUEST = :"tokenization.approval_request"
        TOKENIZATION_RESULT = :"tokenization.result"
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE = :"tokenization.two_factor_authentication_code"
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT = :"tokenization.two_factor_authentication_code_sent"
        TOKENIZATION_UPDATED = :"tokenization.updated"
      end
    end
  end
end
