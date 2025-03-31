# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionRotateSecretParams < Lithic::BaseModel
        extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        sig do
          params(
            request_options: T.any(
              Lithic::RequestOptions,
              Lithic::Util::AnyHash
            )
          ).returns(T.attached_class)
        end
        def self.new(request_options: {})
        end

        sig { override.returns({request_options: Lithic::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
