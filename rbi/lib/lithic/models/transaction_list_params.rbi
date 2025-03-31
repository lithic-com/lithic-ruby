# typed: strong

module Lithic
  module Models
    class TransactionListParams < Lithic::BaseModel
      extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # Filters for transactions associated with a specific account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

      # Filters for transactions associated with a specific card.
      sig { returns(T.nilable(String)) }
      attr_reader :card_token

      sig { params(card_token: String).void }
      attr_writer :card_token

      # Date string in RFC 3339 format. Only entries created before the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_

      sig { params(end_: Time).void }
      attr_writer :end_

      # A cursor representing an item's token before which a page of results should end.
      #   Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      attr_reader :ending_before

      sig { params(ending_before: String).void }
      attr_writer :ending_before

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filters for transactions using transaction result field. Can filter by
      #   `APPROVED`, and `DECLINED`.
      sig { returns(T.nilable(Lithic::Models::TransactionListParams::Result::OrSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::Models::TransactionListParams::Result::OrSymbol).void }
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Filters for transactions using transaction status field.
      sig { returns(T.nilable(Lithic::Models::TransactionListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::TransactionListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          account_token: String,
          begin_: Time,
          card_token: String,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          result: Lithic::Models::TransactionListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::Models::TransactionListParams::Status::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        begin_: nil,
        card_token: nil,
        end_: nil,
        ending_before: nil,
        page_size: nil,
        result: nil,
        starting_after: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_token: String,
              begin_: Time,
              card_token: String,
              end_: Time,
              ending_before: String,
              page_size: Integer,
              result: Lithic::Models::TransactionListParams::Result::OrSymbol,
              starting_after: String,
              status: Lithic::Models::TransactionListParams::Status::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Filters for transactions using transaction result field. Can filter by
      #   `APPROVED`, and `DECLINED`.
      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::TransactionListParams::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::TransactionListParams::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::TransactionListParams::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::TransactionListParams::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::TransactionListParams::Result::TaggedSymbol]) }
        def self.values
        end
      end

      # Filters for transactions using transaction status field.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::TransactionListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::TransactionListParams::Status::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::TransactionListParams::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Models::TransactionListParams::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::TransactionListParams::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::TransactionListParams::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Models::TransactionListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::TransactionListParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
