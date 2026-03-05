# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Authentication#retrieve
      class AuthenticationRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute three_ds_authentication_token
        #
        #   @return [String]
        required :three_ds_authentication_token, String

        # @!method initialize(three_ds_authentication_token:, request_options: {})
        #   @param three_ds_authentication_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
