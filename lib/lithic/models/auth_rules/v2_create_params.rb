# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class V2CreateParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute account_tokens
        #   Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :account_tokens, Lithic::ArrayOf[String]

        # @!attribute name
        #   Auth Rule Name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute [r] parameters
        #   Parameters for the Auth Rule
        #
        #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, nil]
        optional :parameters, union: -> { Lithic::Models::AuthRules::V2CreateParams::Parameters }

        # @!parse
        #   # @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
        #   attr_writer :parameters

        # @!attribute [r] type
        #   The type of Auth Rule
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type, nil]
        optional :type, enum: -> { Lithic::Models::AuthRules::V2CreateParams::Type }

        # @!parse
        #   # @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type]
        #   attr_writer :type

        # @!attribute card_tokens
        #   Card tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :card_tokens, Lithic::ArrayOf[String]

        # @!attribute program_level
        #   Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @return [Boolean]
        required :program_level, Lithic::BooleanModel

        # @!attribute [r] excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :excluded_card_tokens

        # @!parse
        #   # @param account_tokens [Array<String>]
        #   # @param card_tokens [Array<String>]
        #   # @param program_level [Boolean]
        #   # @param name [String, nil]
        #   # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
        #   # @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type]
        #   # @param excluded_card_tokens [Array<String>]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     account_tokens:,
        #     card_tokens:,
        #     program_level:,
        #     name: nil,
        #     parameters: nil,
        #     type: nil,
        #     excluded_card_tokens: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Union

          variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

          # @!parse
          #   class << self
          #     # @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams)]
          #     def variants; end
          #   end
        end

        # The type of Auth Rule
        module Type
          extend Lithic::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT

          finalize!
        end
      end
    end
  end
end
