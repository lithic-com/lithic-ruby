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
            description: T.nilable(String),
            name: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          queue_token:,
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
