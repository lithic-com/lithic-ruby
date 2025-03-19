# typed: strong

module Lithic
  module Models
    class ShippingAddress < Lithic::BaseModel
      # Valid USPS routable address.
      sig { returns(String) }
      def address1
      end

      sig { params(_: String).returns(String) }
      def address1=(_)
      end

      # City
      sig { returns(String) }
      def city
      end

      sig { params(_: String).returns(String) }
      def city=(_)
      end

      # Uppercase ISO 3166-1 alpha-3 three character abbreviation.
      sig { returns(String) }
      def country
      end

      sig { params(_: String).returns(String) }
      def country=(_)
      end

      # Customer's first name. This will be the first name printed on the physical card.
      #   The combined length of `first_name` and `last_name` may not exceed 25
      #   characters.
      sig { returns(String) }
      def first_name
      end

      sig { params(_: String).returns(String) }
      def first_name=(_)
      end

      # Customer's surname (family name). This will be the last name printed on the
      #   physical card. The combined length of `first_name` and `last_name` may not
      #   exceed 25 characters.
      sig { returns(String) }
      def last_name
      end

      sig { params(_: String).returns(String) }
      def last_name=(_)
      end

      # Postal code (formerly zipcode). For US addresses, either five-digit postal code
      #   or nine-digit postal code (ZIP+4) using the format 12345-1234.
      sig { returns(String) }
      def postal_code
      end

      sig { params(_: String).returns(String) }
      def postal_code=(_)
      end

      # Uppercase ISO 3166-2 two character abbreviation for US and CA. Optional with a
      #   limit of 24 characters for other countries.
      sig { returns(String) }
      def state
      end

      sig { params(_: String).returns(String) }
      def state=(_)
      end

      # Unit number (if applicable).
      sig { returns(T.nilable(String)) }
      def address2
      end

      sig { params(_: String).returns(String) }
      def address2=(_)
      end

      # Email address to be contacted for expedited shipping process purposes. Required
      #   if `shipping_method` is `EXPEDITED`.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      # Text to be printed on line two of the physical card. Use of this field requires
      #   additional permissions.
      sig { returns(T.nilable(String)) }
      def line2_text
      end

      sig { params(_: String).returns(String) }
      def line2_text=(_)
      end

      # Cardholder's phone number in E.164 format to be contacted for expedited shipping
      #   process purposes. Required if `shipping_method` is `EXPEDITED`.
      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: String).returns(String) }
      def phone_number=(_)
      end

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
      )
      end

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
      def to_hash
      end
    end
  end
end
