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

        sig { returns(String) }
        attr_accessor :account_holder_token

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable. Only USA addresses are supported for the KYB
        # and KYC workflows.
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
        sig { returns(Lithic::TransactionMonitoring::EntityType::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            account_holder_token: String,
            address:
              Lithic::AccountHolders::EntityCreateParams::Address::OrHash,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String,
            type: Lithic::TransactionMonitoring::EntityType::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account_holder_token:,
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are supported for the KYB
          # and KYC workflows.
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
              account_holder_token: String,
              address: Lithic::AccountHolders::EntityCreateParams::Address,
              dob: String,
              email: String,
              first_name: String,
              government_id: String,
              last_name: String,
              phone_number: String,
              type: Lithic::TransactionMonitoring::EntityType::OrSymbol,
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

          # Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
          # format. Supported countries depend on the onboarding workflow used for the
          # account holder.
          sig { returns(String) }
          attr_accessor :country

          # Unit or apartment number (if applicable).
          sig { returns(T.nilable(String)) }
          attr_reader :address2

          sig { params(address2: String).void }
          attr_writer :address2

          # Valid postal code. For USA addresses, enter either a five-digit postal code or a
          # nine-digit postal code (ZIP+4) using the format 12345-1234. Required for all
          # countries except the following, which do not use postal codes: ABW, AGO, ARE,
          # ATG, BDI, BEN, BFA, BHS, BLZ, BOL, BWA, CIV, CMR, COD, COG, COK, COM, DJI, DMA,
          # ERI, FJI, GAB, GMB, GNQ, GRD, GUY, HKG, KIR, MAC, MLI, MRT, NIU, NRU, QAT, RWA,
          # SLB, SLE, SSD, SUR, SXM, SYC, TGO, TKL, TLS, TON, TUV, UGA, VUT, YEM, ZWE
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # Valid state, province, or subdivision code, entered as the uppercase ISO 3166-2
          # code for the country without the country prefix. For example, `CA` for
          # California. Optional unless the address is in one of the following countries,
          # where it is required:
          #
          # - `USA`
          # - `CAN`
          # - `AUS`
          # - `CHN`
          # - `KOR`
          # - `MEX`
          # - `MYS`
          # - `NZL`
          sig { returns(T.nilable(String)) }
          attr_accessor :state

          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are supported for the KYB
          # and KYC workflows.
          sig do
            params(
              address1: String,
              city: String,
              country: String,
              address2: String,
              postal_code: T.nilable(String),
              state: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Valid deliverable address (no PO boxes).
            address1:,
            # Name of city.
            city:,
            # Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
            # format. Supported countries depend on the onboarding workflow used for the
            # account holder.
            country:,
            # Unit or apartment number (if applicable).
            address2: nil,
            # Valid postal code. For USA addresses, enter either a five-digit postal code or a
            # nine-digit postal code (ZIP+4) using the format 12345-1234. Required for all
            # countries except the following, which do not use postal codes: ABW, AGO, ARE,
            # ATG, BDI, BEN, BFA, BHS, BLZ, BOL, BWA, CIV, CMR, COD, COG, COK, COM, DJI, DMA,
            # ERI, FJI, GAB, GMB, GNQ, GRD, GUY, HKG, KIR, MAC, MLI, MRT, NIU, NRU, QAT, RWA,
            # SLB, SLE, SSD, SUR, SXM, SYC, TGO, TKL, TLS, TON, TUV, UGA, VUT, YEM, ZWE
            postal_code: nil,
            # Valid state, province, or subdivision code, entered as the uppercase ISO 3166-2
            # code for the country without the country prefix. For example, `CA` for
            # California. Optional unless the address is in one of the following countries,
            # where it is required:
            #
            # - `USA`
            # - `CAN`
            # - `AUS`
            # - `CHN`
            # - `KOR`
            # - `MEX`
            # - `MYS`
            # - `NZL`
            state: nil
          )
          end

          sig do
            override.returns(
              {
                address1: String,
                city: String,
                country: String,
                address2: String,
                postal_code: T.nilable(String),
                state: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
