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
      sig { returns(T.nilable(Symbol)) }
      def tokenization_channel
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          tokenization_channel: Symbol,
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
              tokenization_channel: Symbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Filter for tokenizations by tokenization channel. If this is not specified, only
      #   DIGITAL_WALLET tokenizations will be returned.
      class TokenizationChannel < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DIGITAL_WALLET = :DIGITAL_WALLET
        MERCHANT = :MERCHANT
        ALL = :ALL
      end
    end
  end
end
