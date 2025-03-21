# typed: strong

module Lithic
  module Resources
    class CardPrograms
      # Get card program.
      sig do
        params(
          card_program_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
        )
          .returns(Lithic::Models::CardProgram)
      end
      def retrieve(
        # Globally unique identifier for the card program.
        card_program_token,
        request_options: {}
      )
      end

      # List card programs.
      sig do
        params(
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
        )
          .returns(Lithic::CursorPage[Lithic::Models::CardProgram])
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

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
