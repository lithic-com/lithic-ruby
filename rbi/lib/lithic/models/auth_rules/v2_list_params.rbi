# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ListParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # Only return Authorization Rules that are bound to the provided account token.
        sig { returns(T.nilable(String)) }
        def account_token
        end

        sig { params(_: String).returns(String) }
        def account_token=(_)
        end

        # Only return Authorization Rules that are bound to the provided card token.
        sig { returns(T.nilable(String)) }
        def card_token
        end

        sig { params(_: String).returns(String) }
        def card_token=(_)
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

        sig do
          params(
            account_token: String,
            card_token: String,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_token: nil,
          card_token: nil,
          ending_before: nil,
          page_size: nil,
          starting_after: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                account_token: String,
                card_token: String,
                ending_before: String,
                page_size: Integer,
                starting_after: String,
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
