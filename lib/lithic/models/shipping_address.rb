# frozen_string_literal: true

module Lithic
  module Models
    class ShippingAddress < Lithic::Internal::Type::BaseModel
      # @!attribute address1
      #   Valid USPS routable address.
      #
      #   @return [String]
      required :address1, String

      # @!attribute city
      #   City
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   Uppercase ISO 3166-1 alpha-3 three character abbreviation.
      #
      #   @return [String]
      required :country, String

      # @!attribute first_name
      #   Customer's first name. This will be the first name printed on the physical card.
      #   The combined length of `first_name` and `last_name` may not exceed 25
      #   characters.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #   Customer's surname (family name). This will be the last name printed on the
      #   physical card. The combined length of `first_name` and `last_name` may not
      #   exceed 25 characters.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute postal_code
      #   Postal code (formerly zipcode). For US addresses, either five-digit postal code
      #   or nine-digit postal code (ZIP+4) using the format 12345-1234.
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute state
      #   Uppercase ISO 3166-2 two character abbreviation for US and CA. Optional with a
      #   limit of 24 characters for other countries.
      #
      #   @return [String]
      required :state, String

      # @!attribute address2
      #   Unit number (if applicable).
      #
      #   @return [String, nil]
      optional :address2, String

      # @!attribute email
      #   Email address to be contacted for expedited shipping process purposes. Required
      #   if `shipping_method` is `EXPEDITED`.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute line2_text
      #   Text to be printed on line two of the physical card. Use of this field requires
      #   additional permissions.
      #
      #   @return [String, nil]
      optional :line2_text, String

      # @!attribute phone_number
      #   Cardholder's phone number in E.164 format to be contacted for expedited shipping
      #   process purposes. Required if `shipping_method` is `EXPEDITED`.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!method initialize(address1:, city:, country:, first_name:, last_name:, postal_code:, state:, address2: nil, email: nil, line2_text: nil, phone_number: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::ShippingAddress} for more details.
      #
      #   @param address1 [String] Valid USPS routable address.
      #
      #   @param city [String] City
      #
      #   @param country [String] Uppercase ISO 3166-1 alpha-3 three character abbreviation.
      #
      #   @param first_name [String] Customer's first name. This will be the first name printed on the physical card.
      #
      #   @param last_name [String] Customer's surname (family name). This will be the last name printed on the phys
      #
      #   @param postal_code [String] Postal code (formerly zipcode). For US addresses, either five-digit postal code
      #
      #   @param state [String] Uppercase ISO 3166-2 two character abbreviation for US and CA. Optional with a l
      #
      #   @param address2 [String] Unit number (if applicable).
      #
      #   @param email [String] Email address to be contacted for expedited shipping process purposes. Required
      #
      #   @param line2_text [String] Text to be printed on line two of the physical card. Use of this field requires
      #
      #   @param phone_number [String] Cardholder's phone number in E.164 format to be contacted for expedited shipping
    end
  end
end
