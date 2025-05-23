# typed: strong

module Lithic
  module Models
    class TokenizationListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::TokenizationListParams, Lithic::Internal::AnyHash)
        end

      # Filters for tokenizations associated with a specific account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Filter for tokenizations created after this date.
      sig { returns(T.nilable(Date)) }
      attr_reader :begin_

      sig { params(begin_: Date).void }
      attr_writer :begin_

      # Filters for tokenizations associated with a specific card.
      sig { returns(T.nilable(String)) }
      attr_reader :card_token

      sig { params(card_token: String).void }
      attr_writer :card_token

      # Filter for tokenizations created before this date.
      sig { returns(T.nilable(Date)) }
      attr_reader :end_

      sig { params(end_: Date).void }
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

      # Filter for tokenizations by tokenization channel. If this is not specified, only
      # DIGITAL_WALLET tokenizations will be returned.
      sig do
        returns(
          T.nilable(
            Lithic::TokenizationListParams::TokenizationChannel::OrSymbol
          )
        )
      end
      attr_reader :tokenization_channel

      sig do
        params(
          tokenization_channel:
            Lithic::TokenizationListParams::TokenizationChannel::OrSymbol
        ).void
      end
      attr_writer :tokenization_channel

      sig do
        params(
          account_token: String,
          begin_: Date,
          card_token: String,
          end_: Date,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          tokenization_channel:
            Lithic::TokenizationListParams::TokenizationChannel::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filters for tokenizations associated with a specific account.
        account_token: nil,
        # Filter for tokenizations created after this date.
        begin_: nil,
        # Filters for tokenizations associated with a specific card.
        card_token: nil,
        # Filter for tokenizations created before this date.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Filter for tokenizations by tokenization channel. If this is not specified, only
        # DIGITAL_WALLET tokenizations will be returned.
        tokenization_channel: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            begin_: Date,
            card_token: String,
            end_: Date,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            tokenization_channel:
              Lithic::TokenizationListParams::TokenizationChannel::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter for tokenizations by tokenization channel. If this is not specified, only
      # DIGITAL_WALLET tokenizations will be returned.
      module TokenizationChannel
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TokenizationListParams::TokenizationChannel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIGITAL_WALLET =
          T.let(
            :DIGITAL_WALLET,
            Lithic::TokenizationListParams::TokenizationChannel::TaggedSymbol
          )
        MERCHANT =
          T.let(
            :MERCHANT,
            Lithic::TokenizationListParams::TokenizationChannel::TaggedSymbol
          )
        ALL =
          T.let(
            :ALL,
            Lithic::TokenizationListParams::TokenizationChannel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationListParams::TokenizationChannel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
