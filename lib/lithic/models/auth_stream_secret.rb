# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AuthStreamEnrollment#retrieve_secret
    class AuthStreamSecret < Lithic::BaseModel
      # @!attribute [r] secret
      #   The shared HMAC ASA secret
      #
      #   @return [String, nil]
      optional :secret, String

      # @!parse
      #   # @return [String]
      #   attr_writer :secret

      # @!parse
      #   # @param secret [String]
      #   #
      #   def initialize(secret: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
