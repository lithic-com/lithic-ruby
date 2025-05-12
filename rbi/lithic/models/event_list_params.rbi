# typed: strong

module Lithic
  module Models
    class EventListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::EventListParams, Lithic::Internal::AnyHash)
        end

      # Date string in RFC 3339 format. Only entries created after the specified time
      # will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

      # Date string in RFC 3339 format. Only entries created before the specified time
      # will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_

      sig { params(end_: Time).void }
      attr_writer :end_

      # A cursor representing an item's token before which a page of results should end.
      # Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      attr_reader :ending_before

      sig { params(ending_before: String).void }
      attr_writer :ending_before

      # Event types to filter events by.
      sig do
        returns(
          T.nilable(T::Array[Lithic::EventListParams::EventType::OrSymbol])
        )
      end
      attr_reader :event_types

      sig do
        params(
          event_types: T::Array[Lithic::EventListParams::EventType::OrSymbol]
        ).void
      end
      attr_writer :event_types

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Whether to include the event payload content in the response.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :with_content

      sig { params(with_content: T::Boolean).void }
      attr_writer :with_content

      sig do
        params(
          begin_: Time,
          end_: Time,
          ending_before: String,
          event_types: T::Array[Lithic::EventListParams::EventType::OrSymbol],
          page_size: Integer,
          starting_after: String,
          with_content: T::Boolean,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Event types to filter events by.
        event_types: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Whether to include the event payload content in the response.
        with_content: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            begin_: Time,
            end_: Time,
            ending_before: String,
            event_types: T::Array[Lithic::EventListParams::EventType::OrSymbol],
            page_size: Integer,
            starting_after: String,
            with_content: T::Boolean,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      module EventType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::EventListParams::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_HOLDER_CREATED =
          T.let(
            :"account_holder.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        ACCOUNT_HOLDER_UPDATED =
          T.let(
            :"account_holder.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        ACCOUNT_HOLDER_VERIFICATION =
          T.let(
            :"account_holder.verification",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        AUTH_RULES_PERFORMANCE_REPORT_CREATED =
          T.let(
            :"auth_rules.performance_report.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        BALANCE_UPDATED =
          T.let(
            :"balance.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        BOOK_TRANSFER_TRANSACTION_CREATED =
          T.let(
            :"book_transfer_transaction.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        CARD_CREATED =
          T.let(
            :"card.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        CARD_RENEWED =
          T.let(
            :"card.renewed",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        CARD_REISSUED =
          T.let(
            :"card.reissued",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        CARD_CONVERTED =
          T.let(
            :"card.converted",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        CARD_SHIPPED =
          T.let(
            :"card.shipped",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        CARD_TRANSACTION_UPDATED =
          T.let(
            :"card_transaction.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
          T.let(
            :"digital_wallet.tokenization_approval_request",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_RESULT =
          T.let(
            :"digital_wallet.tokenization_result",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          T.let(
            :"digital_wallet.tokenization_two_factor_authentication_code",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          T.let(
            :"digital_wallet.tokenization_two_factor_authentication_code_sent",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        DIGITAL_WALLET_TOKENIZATION_UPDATED =
          T.let(
            :"digital_wallet.tokenization_updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        DISPUTE_EVIDENCE_UPLOAD_FAILED =
          T.let(
            :"dispute_evidence.upload_failed",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        EXTERNAL_BANK_ACCOUNT_CREATED =
          T.let(
            :"external_bank_account.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        EXTERNAL_BANK_ACCOUNT_UPDATED =
          T.let(
            :"external_bank_account.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        EXTERNAL_PAYMENT_CREATED =
          T.let(
            :"external_payment.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        EXTERNAL_PAYMENT_UPDATED =
          T.let(
            :"external_payment.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        FINANCIAL_ACCOUNT_CREATED =
          T.let(
            :"financial_account.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        FINANCIAL_ACCOUNT_UPDATED =
          T.let(
            :"financial_account.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        FUNDING_EVENT_CREATED =
          T.let(
            :"funding_event.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        LOAN_TAPE_CREATED =
          T.let(
            :"loan_tape.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        LOAN_TAPE_UPDATED =
          T.let(
            :"loan_tape.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        MANAGEMENT_OPERATION_CREATED =
          T.let(
            :"management_operation.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        MANAGEMENT_OPERATION_UPDATED =
          T.let(
            :"management_operation.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        PAYMENT_TRANSACTION_CREATED =
          T.let(
            :"payment_transaction.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        PAYMENT_TRANSACTION_UPDATED =
          T.let(
            :"payment_transaction.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        INTERNAL_TRANSACTION_CREATED =
          T.let(
            :"internal_transaction.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        INTERNAL_TRANSACTION_UPDATED =
          T.let(
            :"internal_transaction.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        SETTLEMENT_REPORT_UPDATED =
          T.let(
            :"settlement_report.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        STATEMENTS_CREATED =
          T.let(
            :"statements.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        THREE_DS_AUTHENTICATION_CREATED =
          T.let(
            :"three_ds_authentication.created",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        THREE_DS_AUTHENTICATION_UPDATED =
          T.let(
            :"three_ds_authentication.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        TOKENIZATION_APPROVAL_REQUEST =
          T.let(
            :"tokenization.approval_request",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        TOKENIZATION_RESULT =
          T.let(
            :"tokenization.result",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE =
          T.let(
            :"tokenization.two_factor_authentication_code",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        TOKENIZATION_TWO_FACTOR_AUTHENTICATION_CODE_SENT =
          T.let(
            :"tokenization.two_factor_authentication_code_sent",
            Lithic::EventListParams::EventType::TaggedSymbol
          )
        TOKENIZATION_UPDATED =
          T.let(
            :"tokenization.updated",
            Lithic::EventListParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::EventListParams::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
