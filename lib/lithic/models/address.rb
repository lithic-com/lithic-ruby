# frozen_string_literal: true

module Lithic
  module Models
    class Address < Lithic::Internal::Type::BaseModel
      # @!attribute address1
      #   Valid deliverable address (no PO boxes).
      #
      #   @return [String]
      required :address1, String

      # @!attribute city
      #   Name of city.
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
      #   format. The KYB_DELEGATED and KYC_EXEMPT workflows support all countries except
      #   BLR, CUB, IRN, PRK, RUS, SDN, SYR, and UKR. Other workflows support USA only.
      #
      #   @return [String]
      required :country, String

      # @!attribute address2
      #   Unit or apartment number (if applicable).
      #
      #   @return [String, nil]
      optional :address2, String

      # @!attribute postal_code
      #   Valid postal code. For USA addresses, enter either a five-digit postal code or a
      #   nine-digit postal code (ZIP+4) using the format 12345-1234. Required for all
      #   countries except the following, which do not use postal codes: ABW, AGO, ARE,
      #   ATG, BDI, BEN, BFA, BHS, BLZ, BOL, BWA, CIV, CMR, COD, COG, COK, COM, DJI, DMA,
      #   ERI, FJI, GAB, GMB, GNQ, GRD, GUY, HKG, KIR, MAC, MLI, MRT, NIU, NRU, QAT, RWA,
      #   SLB, SLE, SSD, SUR, SXM, SYC, TGO, TKL, TLS, TON, TUV, UGA, VUT, YEM, ZWE
      #
      #   @return [String, nil]
      optional :postal_code, String, nil?: true

      # @!attribute state
      #   Valid state, province, or subdivision code, entered as the uppercase ISO 3166-2
      #   code for the country without the country prefix. For example, `CA` for
      #   California. Optional unless the address is in one of the following countries,
      #   where it is required:
      #
      #   - `USA`
      #   - `CAN`
      #   - `AUS`
      #   - `CHN`
      #   - `KOR`
      #   - `MEX`
      #   - `MYS`
      #   - `NZL`
      #
      #   @return [String, nil]
      optional :state, String, nil?: true

      # @!method initialize(address1:, city:, country:, address2: nil, postal_code: nil, state: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Address}
      #   for more details.
      #
      #   @param address1 [String] Valid deliverable address (no PO boxes).
      #
      #   @param city [String] Name of city.
      #
      #   @param country [String] Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character form
      #
      #   @param address2 [String] Unit or apartment number (if applicable).
      #
      #   @param postal_code [String, nil] Valid postal code. For USA addresses, enter either a five-digit postal code or a
      #
      #   @param state [String, nil] Valid state, province, or subdivision code, entered as the uppercase ISO 3166-2
    end
  end
end
