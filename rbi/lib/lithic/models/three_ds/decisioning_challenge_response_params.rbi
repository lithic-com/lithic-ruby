# typed: strong

module Lithic
  module Models
    module ThreeDS
      class DecisioningChallengeResponseParams < Lithic::Models::ThreeDS::ChallengeResponse
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        sig do
          params(
            request_options: T.any(
              Lithic::RequestOptions,
              Lithic::Internal::AnyHash
            )
          ).returns(T.attached_class)
        end
        def self.new(request_options: {}); end

        sig { override.returns({request_options: Lithic::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
