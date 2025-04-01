# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#update
      class V2UpdateParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute [r] account_tokens
        #   Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>, nil]
        optional :account_tokens, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :account_tokens

        # @!attribute name
        #   Auth Rule Name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute [r] state
        #   The desired state of the Auth Rule.
        #
        #     Note that only deactivating an Auth Rule through this endpoint is supported at
        #     this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        #     should be used to promote a draft to the currently active version.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::State, nil]
        optional :state, enum: -> { Lithic::Models::AuthRules::V2UpdateParams::State }

        # @!parse
        #   # @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::State]
        #   attr_writer :state

        # @!attribute [r] card_tokens
        #   Card tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>, nil]
        optional :card_tokens, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :card_tokens

        # @!attribute [r] excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :excluded_card_tokens

        # @!attribute [r] program_level
        #   Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @return [Boolean, nil]
        optional :program_level, Lithic::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :program_level

        # @!parse
        #   # @param account_tokens [Array<String>]
        #   # @param name [String, nil]
        #   # @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::State]
        #   # @param card_tokens [Array<String>]
        #   # @param excluded_card_tokens [Array<String>]
        #   # @param program_level [Boolean]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     account_tokens: nil,
        #     name: nil,
        #     state: nil,
        #     card_tokens: nil,
        #     excluded_card_tokens: nil,
        #     program_level: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # The desired state of the Auth Rule.
        #
        #   Note that only deactivating an Auth Rule through this endpoint is supported at
        #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        #   should be used to promote a draft to the currently active version.
        module State
          extend Lithic::Enum

          INACTIVE = :INACTIVE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
