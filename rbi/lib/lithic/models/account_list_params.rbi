# typed: strong

module Lithic
  module Models
    class AccountListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      def begin_
      end

      sig { params(_: Time).returns(Time) }
      def begin_=(_)
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
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              begin_: Time,
              end_: Time,
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
