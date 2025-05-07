# typed: strong

module Lithic
  module Models
    module Events
      class EventSubscriptionResendParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :event_token

        sig do
          params(
            event_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(event_token:, request_options: {})
        end

        sig do
          override.returns(
            { event_token: String, request_options: Lithic::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
