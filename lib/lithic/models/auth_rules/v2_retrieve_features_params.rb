# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#retrieve_features
      class V2RetrieveFeaturesParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute account_token
        #
        #   @return [String, nil]
        optional :account_token, String

        # @!attribute card_token
        #
        #   @return [String, nil]
        optional :card_token, String

        # @!method initialize(account_token: nil, card_token: nil, request_options: {})
        #   @param account_token [String]
        #   @param card_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
