# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#update
      class V2UpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute name
        #   Auth Rule Name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute state
        #   The desired state of the Auth Rule.
        #
        #   Note that only deactivating an Auth Rule through this endpoint is supported at
        #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        #   should be used to promote a draft to the currently active version.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::State, nil]
        optional :state, enum: -> { Lithic::AuthRules::V2UpdateParams::State }

        # @!attribute card_tokens
        #   Card tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>, nil]
        optional :card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute program_level
        #   Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @return [Boolean, nil]
        optional :program_level, Lithic::Internal::Type::Boolean

        # @!method initialize(name: nil, state: nil, card_tokens: nil, excluded_card_tokens: nil, program_level: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::V2UpdateParams} for more details.
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::State] The desired state of the Auth Rule.
        #
        #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # The desired state of the Auth Rule.
        #
        # Note that only deactivating an Auth Rule through this endpoint is supported at
        # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        # should be used to promote a draft to the currently active version.
        module State
          extend Lithic::Internal::Type::Enum

          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
