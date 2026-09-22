# typed: strong

module Lithic
  module Models
    class AddressUpdate < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::AddressUpdate, Lithic::Internal::AnyHash) }

      # Valid deliverable address (no PO boxes).
      sig { returns(T.nilable(String)) }
      attr_reader :address1

      sig { params(address1: String).void }
      attr_writer :address1

      # Unit or apartment number (if applicable).
      sig { returns(T.nilable(String)) }
      attr_reader :address2

      sig { params(address2: String).void }
      attr_writer :address2

      # Name of city.
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { params(city: String).void }
      attr_writer :city

      # Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
      # format. Supported countries depend on the onboarding workflow used for the
      # account holder.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

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

      sig do
        params(
          address1: String,
          address2: String,
          city: String,
          country: String,
          postal_code: T.nilable(String),
          state: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Valid deliverable address (no PO boxes).
        address1: nil,
        # Unit or apartment number (if applicable).
        address2: nil,
        # Name of city.
        city: nil,
        # Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
        # format. Supported countries depend on the onboarding workflow used for the
        # account holder.
        country: nil,
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
            address2: String,
            city: String,
            country: String,
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
