# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        # @see Lithic::Resources::TransactionMonitoring::Cases::Files#retrieve
        class FileRetrieveParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute case_token
          #
          #   @return [String]
          required :case_token, String

          # @!attribute file_token
          #
          #   @return [String]
          required :file_token, String

          # @!method initialize(case_token:, file_token:, request_options: {})
          #   @param case_token [String]
          #   @param file_token [String]
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
