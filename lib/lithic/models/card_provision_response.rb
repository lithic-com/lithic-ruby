# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#provision
    class CardProvisionResponse < Lithic::Internal::Type::BaseModel
      # @!attribute provisioning_payload
      #
      #   @return [String, nil]
      optional :provisioning_payload, String

      # @!method initialize(provisioning_payload: nil)
      #   @param provisioning_payload [String]
    end
  end
end
