# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        # @see Lithic::Resources::TransactionMonitoring::Cases::Files#create
        class FileCreateParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute case_token
          #
          #   @return [String]
          required :case_token, String

          # @!attribute name
          #   Name of the file to upload
          #
          #   @return [String]
          required :name, String

          # @!method initialize(case_token:, name:, request_options: {})
          #   @param case_token [String]
          #
          #   @param name [String] Name of the file to upload
          #
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
