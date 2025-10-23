# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#provision
    class CardProvisionResponse < Lithic::Internal::Type::BaseModel
      # @!attribute provisioning_payload
      #   Base64 encoded JSON payload representing a payment card that can be passed to a
      #   device's digital wallet. Applies to Google and Samsung Pay wallets.
      #
      #   @return [String, Lithic::Models::ProvisionResponse, nil]
      optional :provisioning_payload, union: -> { Lithic::Models::CardProvisionResponse::ProvisioningPayload }

      # @!method initialize(provisioning_payload: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardProvisionResponse} for more details.
      #
      #   @param provisioning_payload [String, Lithic::Models::ProvisionResponse] Base64 encoded JSON payload representing a payment card that can be passed to a

      # Base64 encoded JSON payload representing a payment card that can be passed to a
      # device's digital wallet. Applies to Google and Samsung Pay wallets.
      #
      # @see Lithic::Models::CardProvisionResponse#provisioning_payload
      module ProvisioningPayload
        extend Lithic::Internal::Type::Union

        # Base64 encoded JSON payload representing a payment card that can be passed to a device's digital wallet. Applies to Google and Samsung Pay wallets.
        variant String

        # Object containing the fields required to add a card to Apple Pay. Applies only to Apple Pay wallet.
        variant -> { Lithic::ProvisionResponse }

        # @!method self.variants
        #   @return [Array(String, Lithic::Models::ProvisionResponse)]
      end
    end
  end
end
