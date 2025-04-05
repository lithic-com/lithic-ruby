# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ResponderEndpoints#create
    class ResponderEndpointCreateResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] enrolled
      #   True if the endpoint was enrolled successfully.
      #
      #   @return [Boolean, nil]
      optional :enrolled, Lithic::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :enrolled

      # @!parse
      #   # @param enrolled [Boolean]
      #   #
      #   def initialize(enrolled: nil, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
