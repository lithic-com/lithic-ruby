# frozen_string_literal: true

module Lithic
  module Models
    class ProvisionResponse < Lithic::Internal::Type::BaseModel
      # @!attribute activation_data
      #
      #   @return [String, nil]
      optional :activation_data, String, api_name: :activationData

      # @!attribute encrypted_data
      #
      #   @return [String, nil]
      optional :encrypted_data, String, api_name: :encryptedData

      # @!attribute ephemeral_public_key
      #
      #   @return [String, nil]
      optional :ephemeral_public_key, String, api_name: :ephemeralPublicKey

      # @!method initialize(activation_data: nil, encrypted_data: nil, ephemeral_public_key: nil)
      #   Object containing the fields required to add a card to Apple Pay. Applies only
      #   to Apple Pay wallet.
      #
      #   @param activation_data [String]
      #   @param encrypted_data [String]
      #   @param ephemeral_public_key [String]
    end
  end
end
