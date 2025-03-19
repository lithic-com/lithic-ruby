# typed: strong

module Lithic
  module Models
    class AccountHolderListParams < Lithic::BaseModel
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

      # Email address of the account holder. The query must be an exact match, case
      #   insensitive.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
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

      # If applicable, represents the external_id associated with the account_holder.
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      # (Individual Account Holders only) The first name of the account holder. The
      #   query is case insensitive and supports partial matches.
      sig { returns(T.nilable(String)) }
      def first_name
      end

      sig { params(_: String).returns(String) }
      def first_name=(_)
      end

      # (Individual Account Holders only) The last name of the account holder. The query
      #   is case insensitive and supports partial matches.
      sig { returns(T.nilable(String)) }
      def last_name
      end

      sig { params(_: String).returns(String) }
      def last_name=(_)
      end

      # (Business Account Holders only) The legal business name of the account holder.
      #   The query is case insensitive and supports partial matches.
      sig { returns(T.nilable(String)) }
      def legal_business_name
      end

      sig { params(_: String).returns(String) }
      def legal_business_name=(_)
      end

      # The number of account_holders to limit the response to.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      # Phone number of the account holder. The query must be an exact match.
      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: String).returns(String) }
      def phone_number=(_)
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
          email: String,
          end_: Time,
          ending_before: String,
          external_id: String,
          first_name: String,
          last_name: String,
          legal_business_name: String,
          limit: Integer,
          phone_number: String,
          starting_after: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        begin_: nil,
        email: nil,
        end_: nil,
        ending_before: nil,
        external_id: nil,
        first_name: nil,
        last_name: nil,
        legal_business_name: nil,
        limit: nil,
        phone_number: nil,
        starting_after: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              begin_: Time,
              email: String,
              end_: Time,
              ending_before: String,
              external_id: String,
              first_name: String,
              last_name: String,
              legal_business_name: String,
              limit: Integer,
              phone_number: String,
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
