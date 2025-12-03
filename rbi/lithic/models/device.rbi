# typed: strong

module Lithic
  module Models
    class Device < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Lithic::Device, Lithic::Internal::AnyHash) }

      # The IMEI number of the device being provisioned. For Amex, this field contains
      # device ID instead as IMEI is not provided
      sig { returns(T.nilable(String)) }
      attr_accessor :imei

      # The IP address of the device initiating the request
      sig { returns(T.nilable(String)) }
      attr_accessor :ip_address

      # Latitude and longitude where the device is located during the authorization
      # attempt
      sig { returns(T.nilable(String)) }
      attr_accessor :location

      sig do
        params(
          imei: T.nilable(String),
          ip_address: T.nilable(String),
          location: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The IMEI number of the device being provisioned. For Amex, this field contains
        # device ID instead as IMEI is not provided
        imei:,
        # The IP address of the device initiating the request
        ip_address:,
        # Latitude and longitude where the device is located during the authorization
        # attempt
        location:
      )
      end

      sig do
        override.returns(
          {
            imei: T.nilable(String),
            ip_address: T.nilable(String),
            location: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
