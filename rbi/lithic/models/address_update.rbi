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

      # Valid country code. Only USA is currently supported, entered in uppercase ISO
      # 3166-1 alpha-3 three-character format.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # Valid postal code. Only USA ZIP codes are currently supported, entered as a
      # five-digit ZIP or nine-digit ZIP+4.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code

      sig { params(postal_code: String).void }
      attr_writer :postal_code

      # Valid state code. Only USA state codes are currently supported, entered in
      # uppercase ISO 3166-2 two-character format.
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      sig do
        params(
          address1: String,
          address2: String,
          city: String,
          country: String,
          postal_code: String,
          state: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Valid deliverable address (no PO boxes).
        address1: nil,
        # Unit or apartment number (if applicable).
        address2: nil,
        # Name of city.
        city: nil,
        # Valid country code. Only USA is currently supported, entered in uppercase ISO
        # 3166-1 alpha-3 three-character format.
        country: nil,
        # Valid postal code. Only USA ZIP codes are currently supported, entered as a
        # five-digit ZIP or nine-digit ZIP+4.
        postal_code: nil,
        # Valid state code. Only USA state codes are currently supported, entered in
        # uppercase ISO 3166-2 two-character format.
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
            postal_code: String,
            state: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
