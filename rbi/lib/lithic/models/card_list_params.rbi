# typed: strong

module Lithic
  module Models
    class CardListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

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
      sig { returns(T.nilable(Lithic::Models::CardListParams::State::OrSymbol)) }
      attr_reader :state

      sig { params(state: Lithic::Models::CardListParams::State::OrSymbol).void }
      attr_writer :state

      sig do
        params(
          account_token: String,
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          state: Lithic::Models::CardListParams::State::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        begin_: nil,
        end_: nil,
        ending_before: nil,
        page_size: nil,
        starting_after: nil,
        state: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              account_token: String,
              begin_: Time,
              end_: Time,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              state: Lithic::Models::CardListParams::State::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

      # Returns cards with the specified state.
      module State
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardListParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Lithic::Models::CardListParams::State::TaggedSymbol) }

        CLOSED = T.let(:CLOSED, Lithic::Models::CardListParams::State::TaggedSymbol)
        OPEN = T.let(:OPEN, Lithic::Models::CardListParams::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::CardListParams::State::TaggedSymbol)
        PENDING_ACTIVATION = T.let(:PENDING_ACTIVATION, Lithic::Models::CardListParams::State::TaggedSymbol)
        PENDING_FULFILLMENT = T.let(:PENDING_FULFILLMENT, Lithic::Models::CardListParams::State::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::CardListParams::State::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
