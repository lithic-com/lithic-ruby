# typed: strong

module Lithic
  module Resources
    class DigitalCardArt
      # Get digital card art by token.
      sig do
        params(
          digital_card_art_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
        )
          .returns(Lithic::Models::DigitalCardArtAPI)
      end
      def retrieve(
        # Specifies the digital card art to be displayed in the user’s digital wallet
        #   after tokenization. This artwork must be approved by Mastercard and configured
        #   by Lithic to use. See
        #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
        digital_card_art_token,
        request_options: {}
      )
      end

      # List digital card art.
      sig do
        params(
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
        )
          .returns(Lithic::CursorPage[Lithic::Models::DigitalCardArtAPI])
      end
      def list(
        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
