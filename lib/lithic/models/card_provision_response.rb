# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#provision
    class CardProvisionResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] provisioning_payload
      #
      #   @return [String, nil]
      optional :provisioning_payload, String

      # @!parse
      #   # @return [String]
      #   attr_writer :provisioning_payload

      # @!parse
      #   # @param provisioning_payload [String]
      #   #
      #   def initialize(provisioning_payload: nil, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
