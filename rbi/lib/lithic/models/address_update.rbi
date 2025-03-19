# typed: strong

module Lithic
  module Models
    class AddressUpdate < Lithic::BaseModel
      # Valid deliverable address (no PO boxes).
      sig { returns(T.nilable(String)) }
      def address1
      end

      sig { params(_: String).returns(String) }
      def address1=(_)
      end

      # Unit or apartment number (if applicable).
      sig { returns(T.nilable(String)) }
      def address2
      end

      sig { params(_: String).returns(String) }
      def address2=(_)
      end

      # Name of city.
      sig { returns(T.nilable(String)) }
      def city
      end

      sig { params(_: String).returns(String) }
      def city=(_)
      end

      # Valid country code. Only USA is currently supported, entered in uppercase ISO
      #   3166-1 alpha-3 three-character format.
      sig { returns(T.nilable(String)) }
      def country
      end

      sig { params(_: String).returns(String) }
      def country=(_)
      end

      # Valid postal code. Only USA ZIP codes are currently supported, entered as a
      #   five-digit ZIP or nine-digit ZIP+4.
      sig { returns(T.nilable(String)) }
      def postal_code
      end

      sig { params(_: String).returns(String) }
      def postal_code=(_)
      end

      # Valid state code. Only USA state codes are currently supported, entered in
      #   uppercase ISO 3166-2 two-character format.
      sig { returns(T.nilable(String)) }
      def state
      end

      sig { params(_: String).returns(String) }
      def state=(_)
      end

      sig do
        params(
          address1: String,
          address2: String,
          city: String,
          country: String,
          postal_code: String,
          state: String
        )
          .returns(T.attached_class)
      end
      def self.new(address1: nil, address2: nil, city: nil, country: nil, postal_code: nil, state: nil)
      end

      sig do
        override
          .returns(
            {
              address1: String,
              address2: String,
              city: String,
              country: String,
              postal_code: String,
              state: String
            }
          )
      end
      def to_hash
      end
    end
  end
end
