# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#apply
      class V2ApplyParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute account_tokens
        #   Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :account_tokens, Lithic::ArrayOf[String]

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
        #   # @param excluded_card_tokens [Array<String>]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(account_tokens:, card_tokens:, program_level:, excluded_card_tokens: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
