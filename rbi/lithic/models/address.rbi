# typed: strong

module Lithic
  module Models
    class Address < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Address, Lithic::Internal::AnyHash) }

      # Valid deliverable address (no PO boxes).
      sig { returns(String) }
      attr_accessor :address1

      # Name of city.
      sig { returns(String) }
      attr_accessor :city

      # Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
      # format. The KYB_DELEGATED and KYC_EXEMPT workflows support all countries except
      # BLR, CUB, IRN, PRK, RUS, SDN, SYR, and UKR. Other workflows support USA only.
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
        # format. The KYB_DELEGATED and KYC_EXEMPT workflows support all countries except
        # BLR, CUB, IRN, PRK, RUS, SDN, SYR, and UKR. Other workflows support USA only.
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
