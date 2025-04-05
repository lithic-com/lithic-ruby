# typed: strong

module Lithic
  module Models
    class ShippingAddress < Lithic::Internal::Type::BaseModel
      # Valid USPS routable address.
      sig { returns(String) }
      attr_accessor :address1

      # City
      sig { returns(String) }
      attr_accessor :city

      # Uppercase ISO 3166-1 alpha-3 three character abbreviation.
      sig { returns(String) }
      attr_accessor :country

      # Customer's first name. This will be the first name printed on the physical card.
      # The combined length of `first_name` and `last_name` may not exceed 25
      # characters.
      sig { returns(String) }
      attr_accessor :first_name

      # Customer's surname (family name). This will be the last name printed on the
      # physical card. The combined length of `first_name` and `last_name` may not
      # exceed 25 characters.
      sig { returns(String) }
      attr_accessor :last_name

      # Postal code (formerly zipcode). For US addresses, either five-digit postal code
      # or nine-digit postal code (ZIP+4) using the format 12345-1234.
      sig { returns(String) }
      attr_accessor :postal_code

      # Uppercase ISO 3166-2 two character abbreviation for US and CA. Optional with a
      # limit of 24 characters for other countries.
      sig { returns(String) }
      attr_accessor :state

      # Unit number (if applicable).
      sig { returns(T.nilable(String)) }
      attr_reader :address2

      sig { params(address2: String).void }
      attr_writer :address2

      # Email address to be contacted for expedited shipping process purposes. Required
      # if `shipping_method` is `EXPEDITED`.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Text to be printed on line two of the physical card. Use of this field requires
      # additional permissions.
      sig { returns(T.nilable(String)) }
      attr_reader :line2_text

      sig { params(line2_text: String).void }
      attr_writer :line2_text

      # Cardholder's phone number in E.164 format to be contacted for expedited shipping
      # process purposes. Required if `shipping_method` is `EXPEDITED`.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig do
        params(
          address1: String,
          city: String,
          country: String,
          first_name: String,
          last_name: String,
          postal_code: String,
          state: String,
          address2: String,
          email: String,
          line2_text: String,
          phone_number: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        address1:,
        city:,
        country:,
        first_name:,
        last_name:,
        postal_code:,
        state:,
        address2: nil,
        email: nil,
        line2_text: nil,
        phone_number: nil
      ); end
      sig do
        override
          .returns(
            {
              address1: String,
              city: String,
              country: String,
              first_name: String,
              last_name: String,
              postal_code: String,
              state: String,
              address2: String,
              email: String,
              line2_text: String,
              phone_number: String
            }
          )
      end
      def to_hash; end
    end
  end
end
