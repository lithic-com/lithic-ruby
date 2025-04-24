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
      #   @param enrolled [Boolean] True if the instance has an endpoint enrolled.
      #
      #   @param url [String, nil] The URL of the currently enrolled endpoint or null.
    end
  end
end
