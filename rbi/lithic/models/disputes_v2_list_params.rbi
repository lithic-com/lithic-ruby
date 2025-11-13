# typed: strong

module Lithic
  module Models
    class DisputesV2ListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::DisputesV2ListParams, Lithic::Internal::AnyHash)
        end

      # Filter by account token.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # RFC 3339 timestamp for filtering by created date, inclusive.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

      # Filter by card token.
      sig { returns(T.nilable(String)) }
      attr_reader :card_token

      sig { params(card_token: String).void }
      attr_writer :card_token

      # Filter by the token of the transaction being disputed. Corresponds with
      # transaction_series.related_transaction_token in the Dispute.
      sig { returns(T.nilable(String)) }
      attr_reader :disputed_transaction_token

      sig { params(disputed_transaction_token: String).void }
      attr_writer :disputed_transaction_token

      # RFC 3339 timestamp for filtering by created date, inclusive.
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

      # Number of items to return.
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

      sig do
        params(
          account_token: String,
          begin_: Time,
          card_token: String,
          disputed_transaction_token: String,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by account token.
        account_token: nil,
        # RFC 3339 timestamp for filtering by created date, inclusive.
        begin_: nil,
        # Filter by card token.
        card_token: nil,
        # Filter by the token of the transaction being disputed. Corresponds with
        # transaction_series.related_transaction_token in the Dispute.
        disputed_transaction_token: nil,
        # RFC 3339 timestamp for filtering by created date, inclusive.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Number of items to return.
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            begin_: Time,
            card_token: String,
            disputed_transaction_token: String,
            end_: Time,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
