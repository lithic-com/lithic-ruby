# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#create
      class V2CreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute account_tokens
        #   Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute name
        #   Auth Rule Name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute parameters
        #   Parameters for the Auth Rule
        #
        #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, nil]
        optional :parameters, union: -> { Lithic::Models::AuthRules::V2CreateParams::Parameters }

        # @!attribute type
        #   The type of Auth Rule
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type, nil]
        optional :type, enum: -> { Lithic::Models::AuthRules::V2CreateParams::Type }

        # @!attribute card_tokens
        #   Card tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute program_level
        #   Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @return [Boolean]
        required :program_level, Lithic::Internal::Type::Boolean

        # @!attribute excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!method initialize(account_tokens:, card_tokens:, program_level:, name: nil, parameters: nil, type: nil, excluded_card_tokens: nil, request_options: {})
        #   @param account_tokens [Array<String>]
        #   @param card_tokens [Array<String>]
        #   @param program_level [Boolean]
        #   @param name [String, nil]
        #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
        #   @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type]
        #   @param excluded_card_tokens [Array<String>]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams)]
        end

        # The type of Auth Rule
        module Type
          extend Lithic::Internal::Type::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
