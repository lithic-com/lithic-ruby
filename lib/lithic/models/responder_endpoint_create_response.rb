# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ResponderEndpoints#create
    class ResponderEndpointCreateResponse < Lithic::Internal::Type::BaseModel
      # @!attribute enrolled
      #   True if the endpoint was enrolled successfully.
      #
      #   @return [Boolean, nil]
      optional :enrolled, Lithic::Internal::Type::Boolean

      # @!method initialize(enrolled: nil)
      #   @param enrolled [Boolean] True if the endpoint was enrolled successfully.
    end
  end
end
