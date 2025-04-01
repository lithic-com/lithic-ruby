# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ResponderEndpoints#check_status
    class ResponderEndpointStatus < Lithic::BaseModel
      # @!attribute [r] enrolled
      #   True if the instance has an endpoint enrolled.
      #
      #   @return [Boolean, nil]
      optional :enrolled, Lithic::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :enrolled

      # @!attribute url
      #   The URL of the currently enrolled endpoint or null.
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!parse
      #   # @param enrolled [Boolean]
      #   # @param url [String, nil]
      #   #
      #   def initialize(enrolled: nil, url: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
