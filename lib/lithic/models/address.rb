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
      #   format. Only USA is currently supported for all workflows. KYC_EXEMPT supports
      #   CAN additionally.
      #
      #   @return [String]
      required :country, String

      # @!attribute postal_code
      #   Valid postal code. USA postal codes (ZIP codes) are supported, entered as a
      #   five-digit postal code or nine-digit postal code (ZIP+4) using the format
      #   12345-1234. KYC_EXEMPT supports Canadian postal codes.
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute state
      #   Valid state code. USA state codes are supported, entered in uppercase ISO 3166-2
      #   two-character format. KYC_EXEMPT supports Canadian province codes.
      #
      #   @return [String]
      required :state, String

      # @!attribute [r] address2
      #   Unit or apartment number (if applicable).
      #
      #   @return [String, nil]
      optional :address2, String

      # @!parse
      #   # @return [String]
      #   attr_writer :address2

      # @!parse
      #   # @param address1 [String]
      #   # @param city [String]
      #   # @param country [String]
      #   # @param postal_code [String]
      #   # @param state [String]
      #   # @param address2 [String]
      #   #
      #   def initialize(address1:, city:, country:, postal_code:, state:, address2: nil, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
