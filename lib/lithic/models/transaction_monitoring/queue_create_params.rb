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

        # @!attribute allowed_resolutions
        #   Resolutions that can be recorded on cases in this queue. Omit or send `null` to
        #   use the default list. Values are free-form labels and must be non-empty and
        #   unique
        #
        #   @return [Array<String>, nil]
        optional :allowed_resolutions, Lithic::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute description
        #   Optional description of the queue
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(name:, allowed_resolutions: nil, description: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TransactionMonitoring::QueueCreateParams} for more details.
        #
        #   @param name [String] Human-readable name of the queue
        #
        #   @param allowed_resolutions [Array<String>, nil] Resolutions that can be recorded on cases in this queue. Omit or send `null` to
        #
        #   @param description [String, nil] Optional description of the queue
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
