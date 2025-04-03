# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#list
    class AccountHolderListParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :begin_, Time, api_name: :begin

      # @!parse
      #   # @return [Time]
      #   attr_writer :begin_

      # @!attribute [r] email
      #   Email address of the account holder. The query must be an exact match, case
      #     insensitive.
      #
      #   @return [String, nil]
      optional :email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :email

      # @!attribute [r] end_
      #   Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :end_, Time, api_name: :end

      # @!parse
      #   # @return [Time]
      #   attr_writer :end_

      # @!attribute [r] ending_before
      #   A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @return [String, nil]
      optional :ending_before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ending_before

      # @!attribute [r] external_id
      #   If applicable, represents the external_id associated with the account_holder.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_id

      # @!attribute [r] first_name
      #   (Individual Account Holders only) The first name of the account holder. The
      #     query is case insensitive and supports partial matches.
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :first_name

      # @!attribute [r] last_name
      #   (Individual Account Holders only) The last name of the account holder. The query
      #     is case insensitive and supports partial matches.
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :last_name

      # @!attribute [r] legal_business_name
      #   (Business Account Holders only) The legal business name of the account holder.
      #     The query is case insensitive and supports partial matches.
      #
      #   @return [String, nil]
      optional :legal_business_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :legal_business_name

      # @!attribute [r] limit
      #   The number of account_holders to limit the response to.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] phone_number
      #   Phone number of the account holder. The query must be an exact match.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :phone_number

      # @!attribute [r] starting_after
      #   A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :starting_after

      # @!parse
      #   # @param begin_ [Time]
      #   # @param email [String]
      #   # @param end_ [Time]
      #   # @param ending_before [String]
      #   # @param external_id [String]
      #   # @param first_name [String]
      #   # @param last_name [String]
      #   # @param legal_business_name [String]
      #   # @param limit [Integer]
      #   # @param phone_number [String]
      #   # @param starting_after [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     begin_: nil,
      #     email: nil,
      #     end_: nil,
      #     ending_before: nil,
      #     external_id: nil,
      #     first_name: nil,
      #     last_name: nil,
      #     legal_business_name: nil,
      #     limit: nil,
      #     phone_number: nil,
      #     starting_after: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
