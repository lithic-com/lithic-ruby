# frozen_string_literal: true

module Lithic
  module Models
    class AddressUpdate < Lithic::Internal::Type::BaseModel
      # @!attribute [r] address1
      #   Valid deliverable address (no PO boxes).
      #
      #   @return [String, nil]
      optional :address1, String

      # @!parse
      #   # @return [String]
      #   attr_writer :address1

      # @!attribute [r] address2
      #   Unit or apartment number (if applicable).
      #
      #   @return [String, nil]
      optional :address2, String

      # @!parse
      #   # @return [String]
      #   attr_writer :address2

      # @!attribute [r] city
      #   Name of city.
      #
      #   @return [String, nil]
      optional :city, String

      # @!parse
      #   # @return [String]
      #   attr_writer :city

      # @!attribute [r] country
      #   Valid country code. Only USA is currently supported, entered in uppercase ISO
      #   3166-1 alpha-3 three-character format.
      #
      #   @return [String, nil]
      optional :country, String

      # @!parse
      #   # @return [String]
      #   attr_writer :country

      # @!attribute [r] postal_code
      #   Valid postal code. Only USA ZIP codes are currently supported, entered as a
      #   five-digit ZIP or nine-digit ZIP+4.
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!parse
      #   # @return [String]
      #   attr_writer :postal_code

      # @!attribute [r] state
      #   Valid state code. Only USA state codes are currently supported, entered in
      #   uppercase ISO 3166-2 two-character format.
      #
      #   @return [String, nil]
      optional :state, String

      # @!parse
      #   # @return [String]
      #   attr_writer :state

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
