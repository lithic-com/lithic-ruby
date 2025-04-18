# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ResponderEndpoints#check_status
    class ResponderEndpointStatus < Lithic::Internal::Type::BaseModel
      # @!attribute enrolled
      #   True if the instance has an endpoint enrolled.
      #
      #   @return [Boolean, nil]
      optional :enrolled, Lithic::Internal::Type::Boolean

      # @!attribute url
      #   The URL of the currently enrolled endpoint or null.
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!method initialize(enrolled: nil, url: nil)
      #   @param enrolled [Boolean]
      #   @param url [String, nil]
    end
  end
end
