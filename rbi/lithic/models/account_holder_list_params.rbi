# typed: strong

module Lithic
  module Models
    class AccountHolderListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Date string in RFC 3339 format. Only entries created after the specified time
      # will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

      # Email address of the account holder. The query must be an exact match, case
      # insensitive.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

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

      # If applicable, represents the external_id associated with the account_holder.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # (Individual Account Holders only) The first name of the account holder. The
      # query is case insensitive and supports partial matches.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # (Individual Account Holders only) The last name of the account holder. The query
      # is case insensitive and supports partial matches.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      # (Business Account Holders only) The legal business name of the account holder.
      # The query is case insensitive and supports partial matches.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_business_name

      sig { params(legal_business_name: String).void }
      attr_writer :legal_business_name

      # The number of account_holders to limit the response to.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Phone number of the account holder. The query must be an exact match.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

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
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Email address of the account holder. The query must be an exact match, case
        # insensitive.
        email: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # If applicable, represents the external_id associated with the account_holder.
        external_id: nil,
        # (Individual Account Holders only) The first name of the account holder. The
        # query is case insensitive and supports partial matches.
        first_name: nil,
        # (Individual Account Holders only) The last name of the account holder. The query
        # is case insensitive and supports partial matches.
        last_name: nil,
        # (Business Account Holders only) The legal business name of the account holder.
        # The query is case insensitive and supports partial matches.
        legal_business_name: nil,
        # The number of account_holders to limit the response to.
        limit: nil,
        # Phone number of the account holder. The query must be an exact match.
        phone_number: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        request_options: {}
      ); end
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
      def to_hash; end
    end
  end
end
