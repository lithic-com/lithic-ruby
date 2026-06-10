# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Queues#create
      class QueueCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute name
        #   Human-readable name of the queue
        #
        #   @return [String]
        required :name, String

        # @!attribute description
        #   Optional description of the queue
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(name:, description: nil, request_options: {})
        #   @param name [String] Human-readable name of the queue
        #
        #   @param description [String, nil] Optional description of the queue
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
