# typed: strong

module Lithic
  module Models
    class TransactionListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Filters for transactions associated with a specific account.
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      def begin_
      end

      sig { params(_: Time).returns(Time) }
      def begin_=(_)
      end

      # Filters for transactions associated with a specific card.
      sig { returns(T.nilable(String)) }
      def card_token
      end

      sig { params(_: String).returns(String) }
      def card_token=(_)
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

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      # Filters for transactions using transaction result field. Can filter by
      #   `APPROVED`, and `DECLINED`.
      sig { returns(T.nilable(Lithic::Models::TransactionListParams::Result::OrSymbol)) }
      def result
      end

      sig do
        params(_: Lithic::Models::TransactionListParams::Result::OrSymbol)
          .returns(Lithic::Models::TransactionListParams::Result::OrSymbol)
      end
      def result=(_)
      end

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      def starting_after
      end

      sig { params(_: String).returns(String) }
      def starting_after=(_)
      end

      # Filters for transactions using transaction status field.
      sig { returns(T.nilable(Lithic::Models::TransactionListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Lithic::Models::TransactionListParams::Status::OrSymbol)
          .returns(Lithic::Models::TransactionListParams::Status::OrSymbol)
      end
      def status=(_)
      end

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
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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

        APPROVED = T.let(:APPROVED, Lithic::Models::TransactionListParams::Result::OrSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::TransactionListParams::Result::OrSymbol)
      end

      # Filters for transactions using transaction status field.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::TransactionListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::TransactionListParams::Status::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::TransactionListParams::Status::OrSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Models::TransactionListParams::Status::OrSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::TransactionListParams::Status::OrSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::TransactionListParams::Status::OrSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Models::TransactionListParams::Status::OrSymbol)
      end
    end
  end
end
