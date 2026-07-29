# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class QueueCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::QueueCreateParams,
              Lithic::Internal::AnyHash
            )
          end

        # Human-readable name of the queue
        sig { returns(String) }
        attr_accessor :name

        # Resolutions that can be recorded on cases in this queue. Omit or send `null` to
        # use the default list. Values are free-form labels and must be non-empty and
        # unique
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :allowed_resolutions

        # Optional description of the queue
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig do
          params(
            name: String,
            allowed_resolutions: T.nilable(T::Array[String]),
            description: T.nilable(String),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Human-readable name of the queue
          name:,
          # Resolutions that can be recorded on cases in this queue. Omit or send `null` to
          # use the default list. Values are free-form labels and must be non-empty and
          # unique
          allowed_resolutions: nil,
          # Optional description of the queue
          description: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              allowed_resolutions: T.nilable(T::Array[String]),
              description: T.nilable(String),
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
