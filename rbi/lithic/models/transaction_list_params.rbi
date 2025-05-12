# typed: strong

module Lithic
  module Models
    class TransactionListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::TransactionListParams, Lithic::Internal::AnyHash)
        end

      # Filters for transactions associated with a specific account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Date string in RFC 3339 format. Only entries created after the specified time
      # will be included. UTC time zone.
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

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filters for transactions using transaction result field. Can filter by
      # `APPROVED`, and `DECLINED`.
      sig do
        returns(T.nilable(Lithic::TransactionListParams::Result::OrSymbol))
      end
      attr_reader :result

      sig do
        params(result: Lithic::TransactionListParams::Result::OrSymbol).void
      end
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Filters for transactions using transaction status field.
      sig do
        returns(T.nilable(Lithic::TransactionListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Lithic::TransactionListParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          account_token: String,
          begin_: Time,
          card_token: String,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          result: Lithic::TransactionListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::TransactionListParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filters for transactions associated with a specific account.
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Filters for transactions associated with a specific card.
        card_token: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # Filters for transactions using transaction result field. Can filter by
        # `APPROVED`, and `DECLINED`.
        result: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Filters for transactions using transaction status field.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            begin_: Time,
            card_token: String,
            end_: Time,
            ending_before: String,
            page_size: Integer,
            result: Lithic::TransactionListParams::Result::OrSymbol,
            starting_after: String,
            status: Lithic::TransactionListParams::Status::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filters for transactions using transaction result field. Can filter by
      # `APPROVED`, and `DECLINED`.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::TransactionListParams::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::TransactionListParams::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::TransactionListParams::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::TransactionListParams::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filters for transactions using transaction status field.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::TransactionListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:PENDING, Lithic::TransactionListParams::Status::TaggedSymbol)
        VOIDED =
          T.let(:VOIDED, Lithic::TransactionListParams::Status::TaggedSymbol)
        SETTLED =
          T.let(:SETTLED, Lithic::TransactionListParams::Status::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::TransactionListParams::Status::TaggedSymbol)
        EXPIRED =
          T.let(:EXPIRED, Lithic::TransactionListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::TransactionListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
