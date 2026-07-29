# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Queues#update
      class QueueUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute queue_token
        #
        #   @return [String]
        required :queue_token, String

        # @!attribute allowed_resolutions
        #   New list of resolutions that can be recorded on cases in this queue, or `null`
        #   to revert to the default list. Values are free-form labels and must be non-empty
        #   and unique. Changing the list only affects what is selectable going forward; the
        #   `resolution` already stored on a case is preserved as-is
        #
        #   @return [Array<String>, nil]
        optional :allowed_resolutions, Lithic::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute description
        #   New description for the queue, or `null` to clear it
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute name
        #   New name for the queue
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(queue_token:, allowed_resolutions: nil, description: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TransactionMonitoring::QueueUpdateParams} for more details.
        #
        #   @param queue_token [String]
        #
        #   @param allowed_resolutions [Array<String>, nil] New list of resolutions that can be recorded on cases in this queue, or `null` t
        #
        #   @param description [String, nil] New description for the queue, or `null` to clear it
        #
        #   @param name [String] New name for the queue
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
