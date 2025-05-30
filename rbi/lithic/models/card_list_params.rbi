# typed: strong

module Lithic
  module Models
    class CardListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::CardListParams, Lithic::Internal::AnyHash)
        end

      # Returns cards associated with the specified account.
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

      # Returns cards containing the specified partial or full memo text.
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

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

      # Returns cards with the specified state.
      sig { returns(T.nilable(Lithic::CardListParams::State::OrSymbol)) }
      attr_reader :state

      sig { params(state: Lithic::CardListParams::State::OrSymbol).void }
      attr_writer :state

      sig do
        params(
          account_token: String,
          begin_: Time,
          end_: Time,
          ending_before: String,
          memo: String,
          page_size: Integer,
          starting_after: String,
          state: Lithic::CardListParams::State::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns cards associated with the specified account.
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Returns cards containing the specified partial or full memo text.
        memo: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Returns cards with the specified state.
        state: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            begin_: Time,
            end_: Time,
            ending_before: String,
            memo: String,
            page_size: Integer,
            starting_after: String,
            state: Lithic::CardListParams::State::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Returns cards with the specified state.
      module State
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::CardListParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLOSED = T.let(:CLOSED, Lithic::CardListParams::State::TaggedSymbol)
        OPEN = T.let(:OPEN, Lithic::CardListParams::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::CardListParams::State::TaggedSymbol)
        PENDING_ACTIVATION =
          T.let(
            :PENDING_ACTIVATION,
            Lithic::CardListParams::State::TaggedSymbol
          )
        PENDING_FULFILLMENT =
          T.let(
            :PENDING_FULFILLMENT,
            Lithic::CardListParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::CardListParams::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
