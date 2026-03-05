# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#update
      class V2UpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute auth_rule_token
        #
        #   @return [String]
        required :auth_rule_token, String

        # @!attribute body
        #
        #   @return [Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule]
        required :body, union: -> { Lithic::AuthRules::V2UpdateParams::Body }

        # @!method initialize(auth_rule_token:, body:, request_options: {})
        #   @param auth_rule_token [String]
        #   @param body [Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        module Body
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule }

          variant -> { Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule }

          variant -> { Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule }

          class AccountLevelRule < Lithic::Internal::Type::BaseModel
            # @!attribute account_tokens
            #   Account tokens to which the Auth Rule applies.
            #
            #   @return [Array<String>, nil]
            optional :account_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute business_account_tokens
            #   Business Account tokens to which the Auth Rule applies.
            #
            #   @return [Array<String>, nil]
            optional :business_account_tokens, Lithic::Internal::Type::ArrayOf[String]

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
            #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule::State, nil]
            optional :state, enum: -> { Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State }

            # @!method initialize(account_tokens: nil, business_account_tokens: nil, name: nil, state: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule} for more
            #   details.
            #
            #   @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
            #
            #   @param business_account_tokens [Array<String>] Business Account tokens to which the Auth Rule applies.
            #
            #   @param name [String, nil] Auth Rule Name
            #
            #   @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule::State] The desired state of the Auth Rule.

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            #
            # @see Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule#state
            module State
              extend Lithic::Internal::Type::Enum

              INACTIVE = :INACTIVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CardLevelRule < Lithic::Internal::Type::BaseModel
            # @!attribute card_tokens
            #   Card tokens to which the Auth Rule applies.
            #
            #   @return [Array<String>, nil]
            optional :card_tokens, Lithic::Internal::Type::ArrayOf[String]

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
            #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule::State, nil]
            optional :state, enum: -> { Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State }

            # @!method initialize(card_tokens: nil, name: nil, state: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule} for more
            #   details.
            #
            #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
            #
            #   @param name [String, nil] Auth Rule Name
            #
            #   @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule::State] The desired state of the Auth Rule.

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            #
            # @see Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule#state
            module State
              extend Lithic::Internal::Type::Enum

              INACTIVE = :INACTIVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class ProgramLevelRule < Lithic::Internal::Type::BaseModel
            # @!attribute excluded_card_tokens
            #   Card tokens to which the Auth Rule does not apply.
            #
            #   @return [Array<String>, nil]
            optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute name
            #   Auth Rule Name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute program_level
            #   Whether the Auth Rule applies to all authorizations on the card program.
            #
            #   @return [Boolean, nil]
            optional :program_level, Lithic::Internal::Type::Boolean

            # @!attribute state
            #   The desired state of the Auth Rule.
            #
            #   Note that only deactivating an Auth Rule through this endpoint is supported at
            #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            #   should be used to promote a draft to the currently active version.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State, nil]
            optional :state, enum: -> { Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State }

            # @!method initialize(excluded_card_tokens: nil, name: nil, program_level: nil, state: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule} for more
            #   details.
            #
            #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.
            #
            #   @param name [String, nil] Auth Rule Name
            #
            #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
            #
            #   @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State] The desired state of the Auth Rule.

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            #
            # @see Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule#state
            module State
              extend Lithic::Internal::Type::Enum

              INACTIVE = :INACTIVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule)]
        end
      end
    end
  end
end
