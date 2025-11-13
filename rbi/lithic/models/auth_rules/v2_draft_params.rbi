# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2DraftParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::V2DraftParams, Lithic::Internal::AnyHash)
          end

        # Parameters for the Auth Rule
        sig do
          returns(
            T.nilable(
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::MerchantLockParameters,
                Lithic::AuthRules::Conditional3DSActionParameters,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                Lithic::AuthRules::ConditionalACHActionParameters,
                Lithic::AuthRules::ConditionalTokenizationActionParameters
              )
            )
          )
        end
        attr_accessor :parameters

        sig do
          params(
            parameters:
              T.nilable(
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                  Lithic::AuthRules::VelocityLimitParams::OrHash,
                  Lithic::AuthRules::MerchantLockParameters::OrHash,
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalACHActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::OrHash
                )
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Parameters for the Auth Rule
          parameters: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              parameters:
                T.nilable(
                  T.any(
                    Lithic::AuthRules::ConditionalBlockParameters,
                    Lithic::AuthRules::VelocityLimitParams,
                    Lithic::AuthRules::MerchantLockParameters,
                    Lithic::AuthRules::Conditional3DSActionParameters,
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                    Lithic::AuthRules::ConditionalACHActionParameters,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters
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
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::MerchantLockParameters,
                Lithic::AuthRules::Conditional3DSActionParameters,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                Lithic::AuthRules::ConditionalACHActionParameters,
                Lithic::AuthRules::ConditionalTokenizationActionParameters
              )
            end

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2DraftParams::Parameters::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
