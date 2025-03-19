# frozen_string_literal: true

module Lithic
  module Models
    class ResponderEndpointCreateResponse < Lithic::BaseModel
      # @!attribute [r] enrolled
      #   True if the endpoint was enrolled successfully.
      #
      #   @return [Boolean, nil]
      optional :enrolled, Lithic::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :enrolled

      # @!parse
      #   # @param enrolled [Boolean]
      #   #
      #   def initialize(enrolled: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
