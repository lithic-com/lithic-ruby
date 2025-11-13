# typed: strong

module Lithic
  module Models
    class Merchant < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Merchant, Lithic::Internal::AnyHash) }

      # Unique alphanumeric identifier for the payment card acceptor (merchant).
      sig { returns(String) }
      attr_accessor :acceptor_id

      # Unique numeric identifier of the acquiring institution.
      sig { returns(String) }
      attr_accessor :acquiring_institution_id

      # City of card acceptor. Note that in many cases, particularly in card-not-present
      # transactions, merchants may send through a phone number or URL in this field.
      sig { returns(String) }
      attr_accessor :city

      # Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
      # alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
      sig { returns(String) }
      attr_accessor :country

      # Short description of card acceptor.
      sig { returns(String) }
      attr_accessor :descriptor

      # Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
      # used to classify a business by the types of goods or services it provides.
      sig { returns(String) }
      attr_accessor :mcc

      # Geographic state of card acceptor.
      sig { returns(String) }
      attr_accessor :state

      sig do
        params(
          acceptor_id: String,
          acquiring_institution_id: String,
          city: String,
          country: String,
          descriptor: String,
          mcc: String,
          state: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique alphanumeric identifier for the payment card acceptor (merchant).
        acceptor_id:,
        # Unique numeric identifier of the acquiring institution.
        acquiring_institution_id:,
        # City of card acceptor. Note that in many cases, particularly in card-not-present
        # transactions, merchants may send through a phone number or URL in this field.
        city:,
        # Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
        # alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
        country:,
        # Short description of card acceptor.
        descriptor:,
        # Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
        # used to classify a business by the types of goods or services it provides.
        mcc:,
        # Geographic state of card acceptor.
        state:
      )
      end

      sig do
        override.returns(
          {
            acceptor_id: String,
            acquiring_institution_id: String,
            city: String,
            country: String,
            descriptor: String,
            mcc: String,
            state: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
