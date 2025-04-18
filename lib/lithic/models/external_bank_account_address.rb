# frozen_string_literal: true

module Lithic
  module Models
    class ExternalBankAccountAddress < Lithic::Internal::Type::BaseModel
      # @!attribute address1
      #
      #   @return [String]
      required :address1, String

      # @!attribute city
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #
      #   @return [String]
      required :country, String

      # @!attribute postal_code
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute state
      #
      #   @return [String]
      required :state, String

      # @!attribute address2
      #
      #   @return [String, nil]
      optional :address2, String

      # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
      #   @param address1 [String]
      #   @param city [String]
      #   @param country [String]
      #   @param postal_code [String]
      #   @param state [String]
      #   @param address2 [String]
    end
  end
end
