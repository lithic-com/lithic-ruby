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
      #   Valid country code. Only USA is currently supported, entered in uppercase ISO
      #   3166-1 alpha-3 three-character format.
      #
      #   @return [String, nil]
      optional :country, String

      # @!attribute postal_code
      #   Valid postal code. Only USA ZIP codes are currently supported, entered as a
      #   five-digit ZIP or nine-digit ZIP+4.
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!attribute state
      #   Valid state code. Only USA state codes are currently supported, entered in
      #   uppercase ISO 3166-2 two-character format.
      #
      #   @return [String, nil]
      optional :state, String

      # @!method initialize(address1: nil, address2: nil, city: nil, country: nil, postal_code: nil, state: nil)
      #   @param address1 [String]
      #   @param address2 [String]
      #   @param city [String]
      #   @param country [String]
      #   @param postal_code [String]
      #   @param state [String]
    end
  end
end
