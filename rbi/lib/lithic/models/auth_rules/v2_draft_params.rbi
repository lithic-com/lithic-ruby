# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2DraftParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # Parameters for the Auth Rule
        sig do
          returns(
            T.nilable(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
          )
        end
        attr_accessor :parameters

        sig do
          params(
            parameters: T.nilable(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Internal::AnyHash,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            ),
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(parameters: nil, request_options: {}); end

        sig do
          override
            .returns(
              {
                parameters: T.nilable(
                  T.any(
                    Lithic::Models::AuthRules::ConditionalBlockParameters,
                    Lithic::Models::AuthRules::VelocityLimitParams
                  )
                ),
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash; end

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          sig do
            override
              .returns(
                [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
              )
          end
          def self.variants; end
        end
      end
    end
  end
end
