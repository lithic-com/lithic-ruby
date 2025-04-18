# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AuthStreamEnrollment#rotate_secret
    class AuthStreamEnrollmentRotateSecretParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
