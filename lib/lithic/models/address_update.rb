# frozen_string_literal: true

module Lithic
  module Models
    class AddressUpdate < Lithic::Internal::Type::BaseModel
      # @!attribute address1
      #   Valid deliverable address (no PO boxes).
      #
      #   @return [String, nil]
      optional :address1, String

      # @!attribute address2
      #   Unit or apartment number (if applicable).
      #
      #   @return [String, nil]
      optional :address2, String

      # @!attribute city
      #   Name of city.
      #
      #   @return [String, nil]
      optional :city, String

      # @!attribute country
      #   Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
      #   format. Supported countries depend on the onboarding workflow used for the
      #   account holder.
      #
      #   @return [String, nil]
      optional :country, String

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

      # @!method initialize(address1: nil, address2: nil, city: nil, country: nil, postal_code: nil, state: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::AddressUpdate} for more details.
      #
      #   @param address1 [String] Valid deliverable address (no PO boxes).
      #
      #   @param address2 [String] Unit or apartment number (if applicable).
      #
      #   @param city [String] Name of city.
      #
      #   @param country [String] Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character form
      #
      #   @param postal_code [String, nil] Valid postal code. For USA addresses, enter either a five-digit postal code or a
      #
      #   @param state [String, nil] Valid state, province, or subdivision code, entered as the uppercase ISO 3166-2
    end
  end
end
