# typed: strong

module Lithic
  module Models
    class NetworkProgram < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::NetworkProgram, Lithic::Internal::AnyHash)
        end

      # Lithic-generated unique identifier for the program
      sig { returns(String) }
      attr_accessor :token

      # Network product ID associated with this program.
      sig { returns(String) }
      attr_accessor :default_product_code

      # The name of the network program.
      sig { returns(String) }
      attr_accessor :name

      # RPIN value assigned by the network.
      sig { returns(String) }
      attr_accessor :registered_program_identification_number

      sig do
        params(
          token: String,
          default_product_code: String,
          name: String,
          registered_program_identification_number: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Lithic-generated unique identifier for the program
        token:,
        # Network product ID associated with this program.
        default_product_code:,
        # The name of the network program.
        name:,
        # RPIN value assigned by the network.
        registered_program_identification_number:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            default_product_code: String,
            name: String,
            registered_program_identification_number: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
