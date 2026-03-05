# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#draft
      class V2DraftParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute auth_rule_token
        #
        #   @return [String]
        required :auth_rule_token, String

        # @!attribute parameters
        #   Parameters for the Auth Rule
        #
        #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, nil]
        optional :parameters, union: -> { Lithic::AuthRules::V2DraftParams::Parameters }, nil?: true

        # @!method initialize(auth_rule_token:, parameters: nil, request_options: {})
        #   @param auth_rule_token [String]
        #
        #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, nil] Parameters for the Auth Rule
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          # Deprecated: Use CONDITIONAL_ACTION instead.
          variant -> { Lithic::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::AuthRules::VelocityLimitParams }

          variant -> { Lithic::AuthRules::MerchantLockParameters }

          variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

          variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

          variant -> { Lithic::AuthRules::ConditionalACHActionParameters }

          variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters }

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters)]
        end
      end
    end
  end
end
