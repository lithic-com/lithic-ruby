# typed: strong

module Lithic
  module Models
    class KYBBusinessEntity < Lithic::BaseModel
      # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
      #   acceptable; APO/FPO are acceptable.
      sig { returns(Lithic::Models::KYBBusinessEntity::Address) }
      def address
      end

      sig { params(_: Lithic::Models::KYBBusinessEntity::Address).returns(Lithic::Models::KYBBusinessEntity::Address) }
      def address=(_)
      end

      # Government-issued identification number. US Federal Employer Identification
      #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
      #   without hyphens.
      sig { returns(String) }
      def government_id
      end

      sig { params(_: String).returns(String) }
      def government_id=(_)
      end

      # Legal (formal) business name.
      sig { returns(String) }
      def legal_business_name
      end

      sig { params(_: String).returns(String) }
      def legal_business_name=(_)
      end

      # One or more of the business's phone number(s), entered as a list in E.164
      #   format.
      sig { returns(T::Array[String]) }
      def phone_numbers
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def phone_numbers=(_)
      end

      # Any name that the business operates under that is not its legal business name
      #   (if applicable).
      sig { returns(T.nilable(String)) }
      def dba_business_name
      end

      sig { params(_: String).returns(String) }
      def dba_business_name=(_)
      end

      # Parent company name (if applicable).
      sig { returns(T.nilable(String)) }
      def parent_company
      end

      sig { params(_: String).returns(String) }
      def parent_company=(_)
      end

      sig do
        params(
          address: Lithic::Models::KYBBusinessEntity::Address,
          government_id: String,
          legal_business_name: String,
          phone_numbers: T::Array[String],
          dba_business_name: String,
          parent_company: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        address:,
        government_id:,
        legal_business_name:,
        phone_numbers:,
        dba_business_name: nil,
        parent_company: nil
      )
      end

      sig do
        override
          .returns(
            {
              address: Lithic::Models::KYBBusinessEntity::Address,
              government_id: String,
              legal_business_name: String,
              phone_numbers: T::Array[String],
              dba_business_name: String,
              parent_company: String
            }
          )
      end
      def to_hash
      end

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

        # Valid country code. Only USA is currently supported, entered in uppercase ISO
        #   3166-1 alpha-3 three-character format.
        sig { returns(String) }
        def country
        end

        sig { params(_: String).returns(String) }
        def country=(_)
        end

        # Valid postal code. Only USA ZIP codes are currently supported, entered as a
        #   five-digit ZIP or nine-digit ZIP+4.
        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        # Valid state code. Only USA state codes are currently supported, entered in
        #   uppercase ISO 3166-2 two-character format.
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

        # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
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
end
