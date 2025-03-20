# typed: strong

module Lithic
  module Models
    class TokenizationListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Filters for tokenizations associated with a specific account.
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Filter for tokenizations created after this date.
      sig { returns(T.nilable(Date)) }
      def begin_
      end

      sig { params(_: Date).returns(Date) }
      def begin_=(_)
      end

      # Filters for tokenizations associated with a specific card.
      sig { returns(T.nilable(String)) }
      def card_token
      end

      sig { params(_: String).returns(String) }
      def card_token=(_)
      end

      # Filter for tokenizations created before this date.
      sig { returns(T.nilable(Date)) }
      def end_
      end

      sig { params(_: Date).returns(Date) }
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

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      def starting_after
      end

      sig { params(_: String).returns(String) }
      def starting_after=(_)
      end

      # Filter for tokenizations by tokenization channel. If this is not specified, only
      #   DIGITAL_WALLET tokenizations will be returned.
      sig { returns(T.nilable(Lithic::Models::TokenizationListParams::TokenizationChannel::OrSymbol)) }
      def tokenization_channel
      end

      sig do
        params(_: Lithic::Models::TokenizationListParams::TokenizationChannel::OrSymbol)
          .returns(Lithic::Models::TokenizationListParams::TokenizationChannel::OrSymbol)
      end
      def tokenization_channel=(_)
      end

      sig do
        params(
          account_token: String,
          begin_: Date,
          card_token: String,
          end_: Date,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          tokenization_channel: Lithic::Models::TokenizationListParams::TokenizationChannel::OrSymbol,
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
        starting_after: nil,
        tokenization_channel: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_token: String,
              begin_: Date,
              card_token: String,
              end_: Date,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              tokenization_channel: Lithic::Models::TokenizationListParams::TokenizationChannel::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Filter for tokenizations by tokenization channel. If this is not specified, only
      #   DIGITAL_WALLET tokenizations will be returned.
      module TokenizationChannel
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel::TaggedSymbol) }

        DIGITAL_WALLET =
          T.let(:DIGITAL_WALLET, Lithic::Models::TokenizationListParams::TokenizationChannel::TaggedSymbol)
        MERCHANT = T.let(:MERCHANT, Lithic::Models::TokenizationListParams::TokenizationChannel::TaggedSymbol)
        ALL = T.let(:ALL, Lithic::Models::TokenizationListParams::TokenizationChannel::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::TokenizationListParams::TokenizationChannel::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
