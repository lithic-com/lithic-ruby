# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class QueueUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::QueueUpdateParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :queue_token

        # New list of resolutions that can be recorded on cases in this queue, or `null`
        # to revert to the default list. Values are free-form labels and must be non-empty
        # and unique. Changing the list only affects what is selectable going forward; the
        # `resolution` already stored on a case is preserved as-is
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :allowed_resolutions

        # New description for the queue, or `null` to clear it
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # New name for the queue
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            queue_token: String,
            allowed_resolutions: T.nilable(T::Array[String]),
            description: T.nilable(String),
            name: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          queue_token:,
          # New list of resolutions that can be recorded on cases in this queue, or `null`
          # to revert to the default list. Values are free-form labels and must be non-empty
          # and unique. Changing the list only affects what is selectable going forward; the
          # `resolution` already stored on a case is preserved as-is
          allowed_resolutions: nil,
          # New description for the queue, or `null` to clear it
          description: nil,
          # New name for the queue
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              queue_token: String,
              allowed_resolutions: T.nilable(T::Array[String]),
              description: T.nilable(String),
              name: String,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
