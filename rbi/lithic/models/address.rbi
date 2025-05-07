# typed: strong

module Lithic
  module Models
    class Address < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Valid deliverable address (no PO boxes).
      sig { returns(String) }
      attr_accessor :address1

      # Name of city.
      sig { returns(String) }
      attr_accessor :city

      # Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
      # format. Only USA is currently supported for all workflows. KYC_EXEMPT supports
      # CAN additionally.
      sig { returns(String) }
      attr_accessor :country

      # Valid postal code. USA postal codes (ZIP codes) are supported, entered as a
      # five-digit postal code or nine-digit postal code (ZIP+4) using the format
      # 12345-1234. KYC_EXEMPT supports Canadian postal codes.
      sig { returns(String) }
      attr_accessor :postal_code

      # Valid state code. USA state codes are supported, entered in uppercase ISO 3166-2
      # two-character format. KYC_EXEMPT supports Canadian province codes.
      sig { returns(String) }
      attr_accessor :state

      # Unit or apartment number (if applicable).
      sig { returns(T.nilable(String)) }
      attr_reader :address2

      sig { params(address2: String).void }
      attr_writer :address2

      sig do
        params(
          address1: String,
          city: String,
          country: String,
          postal_code: String,
          state: String,
          address2: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Valid deliverable address (no PO boxes).
        address1:,
        # Name of city.
        city:,
        # Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
        # format. Only USA is currently supported for all workflows. KYC_EXEMPT supports
        # CAN additionally.
        country:,
        # Valid postal code. USA postal codes (ZIP codes) are supported, entered as a
        # five-digit postal code or nine-digit postal code (ZIP+4) using the format
        # 12345-1234. KYC_EXEMPT supports Canadian postal codes.
        postal_code:,
        # Valid state code. USA state codes are supported, entered in uppercase ISO 3166-2
        # two-character format. KYC_EXEMPT supports Canadian province codes.
        state:,
        # Unit or apartment number (if applicable).
        address2: nil
      )
      end

      sig do
        override.returns(
          {
            address1: String,
            city: String,
            country: String,
            postal_code: String,
            state: String,
            address2: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
