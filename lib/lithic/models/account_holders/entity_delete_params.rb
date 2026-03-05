# frozen_string_literal: true

module Lithic
  module Models
    module AccountHolders
      # @see Lithic::Resources::AccountHolders::Entities#delete
      class EntityDeleteParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute account_holder_token
        #
        #   @return [String]
        required :account_holder_token, String

        # @!attribute entity_token
        #
        #   @return [String]
        required :entity_token, String

        # @!method initialize(account_holder_token:, entity_token:, request_options: {})
        #   @param account_holder_token [String]
        #   @param entity_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
