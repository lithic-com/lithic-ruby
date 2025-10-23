# typed: strong

module Lithic
  module Models
    class ProvisionResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::ProvisionResponse, Lithic::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :activation_data

      sig { params(activation_data: String).void }
      attr_writer :activation_data

      sig { returns(T.nilable(String)) }
      attr_reader :encrypted_data

      sig { params(encrypted_data: String).void }
      attr_writer :encrypted_data

      sig { returns(T.nilable(String)) }
      attr_reader :ephemeral_public_key

      sig { params(ephemeral_public_key: String).void }
      attr_writer :ephemeral_public_key

      # Object containing the fields required to add a card to Apple Pay. Applies only
      # to Apple Pay wallet.
      sig do
        params(
          activation_data: String,
          encrypted_data: String,
          ephemeral_public_key: String
        ).returns(T.attached_class)
      end
      def self.new(
        activation_data: nil,
        encrypted_data: nil,
        ephemeral_public_key: nil
      )
      end

      sig do
        override.returns(
          {
            activation_data: String,
            encrypted_data: String,
            ephemeral_public_key: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
