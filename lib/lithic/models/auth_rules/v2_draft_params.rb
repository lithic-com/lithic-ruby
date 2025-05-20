# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#draft
      class V2DraftParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute parameters
        #   Parameters for the Auth Rule
        #
        #   @return [Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters, nil]
        optional :parameters, union: -> { Lithic::AuthRules::V2DraftParams::Parameters }, nil?: true

        # @!method initialize(parameters: nil, request_options: {})
        #   @param parameters [Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters, nil] Parameters for the Auth Rule
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::AuthRules::VelocityLimitParams }

          variant -> { Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters }

          class MerchantLockParameters < Lithic::Internal::Type::BaseModel
            # @!attribute merchants
            #   A list of merchant locks defining specific merchants or groups of merchants
            #   (based on descriptors or IDs) that the lock applies to.
            #
            #   @return [Array<Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters::Merchant>]
            required :merchants,
                     -> {
                       Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters::Merchant]
                     }

            # @!method initialize(merchants:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters} for more
            #   details.
            #
            #   @param merchants [Array<Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters::Merchant>] A list of merchant locks defining specific merchants or groups of merchants (bas

            class Merchant < Lithic::Internal::Type::BaseModel
              # @!attribute comment
              #   A comment or explanation about the merchant, used internally for rule management
              #   purposes.
              #
              #   @return [String, nil]
              optional :comment, String

              # @!attribute descriptor
              #   Short description of the merchant, often used to provide more human-readable
              #   context about the transaction merchant. This is typically the name or label
              #   shown on transaction summaries.
              #
              #   @return [String, nil]
              optional :descriptor, String

              # @!attribute merchant_id
              #   Unique alphanumeric identifier for the payment card acceptor (merchant). This
              #   attribute specifies the merchant entity that will be locked or referenced for
              #   authorization rules.
              #
              #   @return [String, nil]
              optional :merchant_id, String

              # @!method initialize(comment: nil, descriptor: nil, merchant_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters::Merchant}
              #   for more details.
              #
              #   Represents a specific merchant lock based on their ID or descriptor. Each
              #   merchant object allows transaction rules to work at a granular level and
              #   requires at least one of merchant_id or descriptor.
              #
              #   @param comment [String] A comment or explanation about the merchant, used internally for rule management
              #
              #   @param descriptor [String] Short description of the merchant, often used to provide more human-readable con
              #
              #   @param merchant_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant). This at
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters)]
        end
      end
    end
  end
end
