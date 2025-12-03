# frozen_string_literal: true

module Lithic
  module Models
    class Device < Lithic::Internal::Type::BaseModel
      # @!attribute imei
      #   The IMEI number of the device being provisioned. For Amex, this field contains
      #   device ID instead as IMEI is not provided
      #
      #   @return [String, nil]
      required :imei, String, nil?: true

      # @!attribute ip_address
      #   The IP address of the device initiating the request
      #
      #   @return [String, nil]
      required :ip_address, String, nil?: true

      # @!attribute location
      #   Latitude and longitude where the device is located during the authorization
      #   attempt
      #
      #   @return [String, nil]
      required :location, String, nil?: true

      # @!method initialize(imei:, ip_address:, location:)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Device}
      #   for more details.
      #
      #   @param imei [String, nil] The IMEI number of the device being provisioned. For Amex, this field contains d
      #
      #   @param ip_address [String, nil] The IP address of the device initiating the request
      #
      #   @param location [String, nil] Latitude and longitude where the device is located during the authorization atte
    end
  end
end
