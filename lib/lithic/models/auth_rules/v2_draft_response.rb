# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#draft
      class V2DraftResponse < Lithic::BaseModel
        # @!attribute token
        #   Auth Rule Token
        #
        #   @return [String]
        required :token, String

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

        # @!attribute current_version
        #
        #   @return [Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion, nil]
        required :current_version, -> { Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion }, nil?: true

        # @!attribute draft_version
        #
        #   @return [Lithic::Models::AuthRules::V2DraftResponse::DraftVersion, nil]
        required :draft_version, -> { Lithic::Models::AuthRules::V2DraftResponse::DraftVersion }, nil?: true

        # @!attribute name
        #   Auth Rule Name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute program_level
        #   Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @return [Boolean]
        required :program_level, Lithic::BooleanModel

        # @!attribute state
        #   The state of the Auth Rule
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2DraftResponse::State]
        required :state, enum: -> { Lithic::Models::AuthRules::V2DraftResponse::State }

        # @!attribute type
        #   The type of Auth Rule
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2DraftResponse::Type]
        required :type, enum: -> { Lithic::Models::AuthRules::V2DraftResponse::Type }

        # @!attribute [r] excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :excluded_card_tokens

        # @!parse
        #   # @param token [String]
        #   # @param account_tokens [Array<String>]
        #   # @param card_tokens [Array<String>]
        #   # @param current_version [Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion, nil]
        #   # @param draft_version [Lithic::Models::AuthRules::V2DraftResponse::DraftVersion, nil]
        #   # @param name [String, nil]
        #   # @param program_level [Boolean]
        #   # @param state [Symbol, Lithic::Models::AuthRules::V2DraftResponse::State]
        #   # @param type [Symbol, Lithic::Models::AuthRules::V2DraftResponse::Type]
        #   # @param excluded_card_tokens [Array<String>]
        #   #
        #   def initialize(
        #     token:,
        #     account_tokens:,
        #     card_tokens:,
        #     current_version:,
        #     draft_version:,
        #     name:,
        #     program_level:,
        #     state:,
        #     type:,
        #     excluded_card_tokens: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # @see Lithic::Models::AuthRules::V2DraftResponse#current_version
        class CurrentVersion < Lithic::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion::Parameters }

          response_only do
            # @!attribute version
            #   The version of the rule, this is incremented whenever the rule's parameters
            #     change.
            #
            #   @return [Integer]
            required :version, Integer
          end

          # @!parse
          #   # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
          #   # @param version [Integer]
          #   #
          #   def initialize(parameters:, version:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion#parameters
          module Parameters
            extend Lithic::Union

            variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

            # @!parse
            #   # @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams)]
            #   def self.variants; end
          end
        end

        # @see Lithic::Models::AuthRules::V2DraftResponse#draft_version
        class DraftVersion < Lithic::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2DraftResponse::DraftVersion::Parameters }

          response_only do
            # @!attribute version
            #   The version of the rule, this is incremented whenever the rule's parameters
            #     change.
            #
            #   @return [Integer]
            required :version, Integer
          end

          # @!parse
          #   # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
          #   # @param version [Integer]
          #   #
          #   def initialize(parameters:, version:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2DraftResponse::DraftVersion#parameters
          module Parameters
            extend Lithic::Union

            variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

            # @!parse
            #   # @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams)]
            #   def self.variants; end
          end
        end

        # The state of the Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2DraftResponse#state
        module State
          extend Lithic::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # The type of Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2DraftResponse#type
        module Type
          extend Lithic::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
