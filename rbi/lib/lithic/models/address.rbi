# typed: strong

module Lithic
  module Models
    class Address < Lithic::BaseModel
      # Valid deliverable address (no PO boxes).
      sig { returns(String) }
      def address1
      end

      sig { params(_: String).returns(String) }
      def address1=(_)
      end

      # Name of city.
      sig { returns(String) }
      def city
      end

      sig { params(_: String).returns(String) }
      def city=(_)
      end

      # Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
      #   format. Only USA is currently supported for all workflows. KYC_EXEMPT supports
      #   CAN additionally.
      sig { returns(String) }
      def country
      end

      sig { params(_: String).returns(String) }
      def country=(_)
      end

      # Valid postal code. USA postal codes (ZIP codes) are supported, entered as a
      #   five-digit postal code or nine-digit postal code (ZIP+4) using the format
      #   12345-1234. KYC_EXEMPT supports Canadian postal codes.
      sig { returns(String) }
      def postal_code
      end

      sig { params(_: String).returns(String) }
      def postal_code=(_)
      end

      # Valid state code. USA state codes are supported, entered in uppercase ISO 3166-2
      #   two-character format. KYC_EXEMPT supports Canadian province codes.
      sig { returns(String) }
      def state
      end

      sig { params(_: String).returns(String) }
      def state=(_)
      end

      # Unit or apartment number (if applicable).
      sig { returns(T.nilable(String)) }
      def address2
      end

      sig { params(_: String).returns(String) }
      def address2=(_)
      end

      sig do
        params(
          address1: String,
          city: String,
          country: String,
          postal_code: String,
          state: String,
          address2: String
        )
          .returns(T.attached_class)
      end
      def self.new(address1:, city:, country:, postal_code:, state:, address2: nil)
      end

      sig do
        override
          .returns(
            {
              address1: String,
              city: String,
              country: String,
              postal_code: String,
              state: String,
              address2: String
            }
          )
      end
      def to_hash
      end
    end
  end
end
