# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2DraftParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

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
        def parameters
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Lithic::Models::AuthRules::ConditionalBlockParameters,
                  Lithic::Models::AuthRules::VelocityLimitParams
                )
              )
            )
        end
        def parameters=(_)
        end

        sig do
          params(
            parameters: T.nilable(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            ),
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(parameters: nil, request_options: {})
        end

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
        def to_hash
        end

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  Lithic::Models::AuthRules::ConditionalBlockParameters,
                  Lithic::Models::AuthRules::VelocityLimitParams
                )
              }
            end

          class << self
            sig do
              override
                .returns(
                  [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
                )
            end
            def variants
            end
          end
        end
      end
    end
  end
end
