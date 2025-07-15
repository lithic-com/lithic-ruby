# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::NetworkPrograms#retrieve
    class NetworkProgram < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Lithic-generated unique identifier for the program
      #
      #   @return [String]
      required :token, String

      # @!attribute default_product_code
      #   Network product ID associated with this program.
      #
      #   @return [String]
      required :default_product_code, String

      # @!attribute name
      #   The name of the network program.
      #
      #   @return [String]
      required :name, String

      # @!attribute registered_program_identification_number
      #   RPIN value assigned by the network.
      #
      #   @return [String]
      required :registered_program_identification_number, String

      # @!method initialize(token:, default_product_code:, name:, registered_program_identification_number:)
      #   @param token [String] Lithic-generated unique identifier for the program
      #
      #   @param default_product_code [String] Network product ID associated with this program.
      #
      #   @param name [String] The name of the network program.
      #
      #   @param registered_program_identification_number [String] RPIN value assigned by the network.
    end
  end
end
