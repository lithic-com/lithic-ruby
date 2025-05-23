# typed: strong

module Lithic
  module Models
    class KYBBusinessEntity < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::KYBBusinessEntity, Lithic::Internal::AnyHash)
        end

      # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
      # acceptable; APO/FPO are acceptable.
      sig { returns(Lithic::KYBBusinessEntity::Address) }
      attr_reader :address

      sig { params(address: Lithic::KYBBusinessEntity::Address::OrHash).void }
      attr_writer :address

      # Government-issued identification number. US Federal Employer Identification
      # Numbers (EIN) are currently supported, entered as full nine-digits, with or
      # without hyphens.
      sig { returns(String) }
      attr_accessor :government_id

      # Legal (formal) business name.
      sig { returns(String) }
      attr_accessor :legal_business_name

      # One or more of the business's phone number(s), entered as a list in E.164
      # format.
      sig { returns(T::Array[String]) }
      attr_accessor :phone_numbers

      # Any name that the business operates under that is not its legal business name
      # (if applicable).
      sig { returns(T.nilable(String)) }
      attr_reader :dba_business_name

      sig { params(dba_business_name: String).void }
      attr_writer :dba_business_name

      # Parent company name (if applicable).
      sig { returns(T.nilable(String)) }
      attr_reader :parent_company

      sig { params(parent_company: String).void }
      attr_writer :parent_company

      sig do
        params(
          address: Lithic::KYBBusinessEntity::Address::OrHash,
          government_id: String,
          legal_business_name: String,
          phone_numbers: T::Array[String],
          dba_business_name: String,
          parent_company: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable.
        address:,
        # Government-issued identification number. US Federal Employer Identification
        # Numbers (EIN) are currently supported, entered as full nine-digits, with or
        # without hyphens.
        government_id:,
        # Legal (formal) business name.
        legal_business_name:,
        # One or more of the business's phone number(s), entered as a list in E.164
        # format.
        phone_numbers:,
        # Any name that the business operates under that is not its legal business name
        # (if applicable).
        dba_business_name: nil,
        # Parent company name (if applicable).
        parent_company: nil
      )
      end

      sig do
        override.returns(
          {
            address: Lithic::KYBBusinessEntity::Address,
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

      class Address < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::KYBBusinessEntity::Address, Lithic::Internal::AnyHash)
          end

        # Valid deliverable address (no PO boxes).
        sig { returns(String) }
        attr_accessor :address1

        # Name of city.
        sig { returns(String) }
        attr_accessor :city

        # Valid country code. Only USA is currently supported, entered in uppercase ISO
        # 3166-1 alpha-3 three-character format.
        sig { returns(String) }
        attr_accessor :country

        # Valid postal code. Only USA ZIP codes are currently supported, entered as a
        # five-digit ZIP or nine-digit ZIP+4.
        sig { returns(String) }
        attr_accessor :postal_code

        # Valid state code. Only USA state codes are currently supported, entered in
        # uppercase ISO 3166-2 two-character format.
        sig { returns(String) }
        attr_accessor :state

        # Unit or apartment number (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :address2

        sig { params(address2: String).void }
        attr_writer :address2

        # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable.
        sig do
          params(
            address1: String,
            city: String,
            country: String,
            postal_code: String,
            state: String,
            address2: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Valid deliverable address (no PO boxes).
          address1:,
          # Name of city.
          city:,
          # Valid country code. Only USA is currently supported, entered in uppercase ISO
          # 3166-1 alpha-3 three-character format.
          country:,
          # Valid postal code. Only USA ZIP codes are currently supported, entered as a
          # five-digit ZIP or nine-digit ZIP+4.
          postal_code:,
          # Valid state code. Only USA state codes are currently supported, entered in
          # uppercase ISO 3166-2 two-character format.
          state:,
          # Unit or apartment number (if applicable).
          address2: nil
        )
        end

        sig do
          override.returns(
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
