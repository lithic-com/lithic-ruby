# frozen_string_literal: true

module Lithic
  module Models
    class Merchant < Lithic::Internal::Type::BaseModel
      # @!attribute acceptor_id
      #   Unique alphanumeric identifier for the payment card acceptor (merchant).
      #
      #   @return [String]
      required :acceptor_id, String

      # @!attribute acquiring_institution_id
      #   Unique numeric identifier of the acquiring institution.
      #
      #   @return [String]
      required :acquiring_institution_id, String

      # @!attribute city
      #   City of card acceptor. Note that in many cases, particularly in card-not-present
      #   transactions, merchants may send through a phone number or URL in this field.
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
      #   alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
      #
      #   @return [String]
      required :country, String

      # @!attribute descriptor
      #   Short description of card acceptor.
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute mcc
      #   Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
      #   used to classify a business by the types of goods or services it provides.
      #
      #   @return [String]
      required :mcc, String

      # @!attribute state
      #   Geographic state of card acceptor.
      #
      #   @return [String]
      required :state, String

      # @!method initialize(acceptor_id:, acquiring_institution_id:, city:, country:, descriptor:, mcc:, state:)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Merchant}
      #   for more details.
      #
      #   @param acceptor_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant).
      #
      #   @param acquiring_institution_id [String] Unique numeric identifier of the acquiring institution.
      #
      #   @param city [String] City of card acceptor. Note that in many cases, particularly in card-not-present
      #
      #   @param country [String] Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1 alph
      #
      #   @param descriptor [String] Short description of card acceptor.
      #
      #   @param mcc [String] Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
      #
      #   @param state [String] Geographic state of card acceptor.
    end
  end
end
