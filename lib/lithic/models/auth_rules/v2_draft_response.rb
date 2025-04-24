# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#draft
      class V2DraftResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Auth Rule Token
        #
        #   @return [String]
        required :token, String

        # @!attribute account_tokens
        #   Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute card_tokens
        #   Card tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :card_tokens, Lithic::Internal::Type::ArrayOf[String]

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
        required :program_level, Lithic::Internal::Type::Boolean

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

        # @!attribute excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!method initialize(token:, account_tokens:, card_tokens:, current_version:, draft_version:, name:, program_level:, state:, type:, excluded_card_tokens: nil)
        #   @param token [String] Auth Rule Token
        #
        #   @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        #   @param current_version [Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion, nil]
        #
        #   @param draft_version [Lithic::Models::AuthRules::V2DraftResponse::DraftVersion, nil]
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::V2DraftResponse::State] The state of the Auth Rule
        #
        #   @param type [Symbol, Lithic::Models::AuthRules::V2DraftResponse::Type] The type of Auth Rule
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.

        # @see Lithic::Models::AuthRules::V2DraftResponse#current_version
        class CurrentVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion::Parameters }

          response_only do
            # @!attribute version
            #   The version of the rule, this is incremented whenever the rule's parameters
            #   change.
            #
            #   @return [Integer]
            required :version, Integer
          end

          # @!method initialize(parameters:, version:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan
          #   ...

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams)]
          end
        end

        # @see Lithic::Models::AuthRules::V2DraftResponse#draft_version
        class DraftVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2DraftResponse::DraftVersion::Parameters }

          response_only do
            # @!attribute version
            #   The version of the rule, this is incremented whenever the rule's parameters
            #   change.
            #
            #   @return [Integer]
            required :version, Integer
          end

          # @!method initialize(parameters:, version:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::V2DraftResponse::DraftVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan
          #   ...

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2DraftResponse::DraftVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams)]
          end
        end

        # The state of the Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2DraftResponse#state
        module State
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2DraftResponse#type
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
