# typed: strong

module Lithic
  module Models
    module AccountHolders
      class EntityCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolders::EntityCreateParams,
              Lithic::Internal::AnyHash
            )
          end

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(Lithic::AccountHolders::EntityCreateParams::Address) }
        attr_reader :address

        sig do
          params(
            address: Lithic::AccountHolders::EntityCreateParams::Address::OrHash
          ).void
        end
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        # customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        attr_accessor :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Government-issued identification number (required for identity verification and
        # compliance with banking regulations). Social Security Numbers (SSN) and
        # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        # entered as full nine-digits, with or without hyphens
        sig { returns(String) }
        attr_accessor :government_id

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        attr_accessor :phone_number

        # The type of entity to create on the account holder
        sig do
          returns(Lithic::AccountHolders::EntityCreateParams::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            address:
              Lithic::AccountHolders::EntityCreateParams::Address::OrHash,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String,
            type: Lithic::AccountHolders::EntityCreateParams::Type::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          address:,
          # Individual's date of birth, as an RFC 3339 date.
          dob:,
          # Individual's email address. If utilizing Lithic for chargeback processing, this
          # customer email address may be used to communicate dispute status and resolution.
          email:,
          # Individual's first name, as it appears on government-issued identity documents.
          first_name:,
          # Government-issued identification number (required for identity verification and
          # compliance with banking regulations). Social Security Numbers (SSN) and
          # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
          # entered as full nine-digits, with or without hyphens
          government_id:,
          # Individual's last name, as it appears on government-issued identity documents.
          last_name:,
          # Individual's phone number, entered in E.164 format.
          phone_number:,
          # The type of entity to create on the account holder
          type:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              address: Lithic::AccountHolders::EntityCreateParams::Address,
              dob: String,
              email: String,
              first_name: String,
              government_id: String,
              last_name: String,
              phone_number: String,
              type: Lithic::AccountHolders::EntityCreateParams::Type::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Address < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AccountHolders::EntityCreateParams::Address,
                Lithic::Internal::AnyHash
              )
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

          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
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

        # The type of entity to create on the account holder
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AccountHolders::EntityCreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BENEFICIAL_OWNER_INDIVIDUAL =
            T.let(
              :BENEFICIAL_OWNER_INDIVIDUAL,
              Lithic::AccountHolders::EntityCreateParams::Type::TaggedSymbol
            )
          CONTROL_PERSON =
            T.let(
              :CONTROL_PERSON,
              Lithic::AccountHolders::EntityCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AccountHolders::EntityCreateParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
