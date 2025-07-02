# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#create
      class V2CreateResponse < Lithic::Internal::Type::BaseModel
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
        #   @return [Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion, nil]
        required :current_version, -> { Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion }, nil?: true

        # @!attribute draft_version
        #
        #   @return [Lithic::Models::AuthRules::V2CreateResponse::DraftVersion, nil]
        required :draft_version, -> { Lithic::Models::AuthRules::V2CreateResponse::DraftVersion }, nil?: true

        # @!attribute event_stream
        #   The type of event stream the Auth rule applies to.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2CreateResponse::EventStream]
        required :event_stream, enum: -> { Lithic::Models::AuthRules::V2CreateResponse::EventStream }

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
        #   @return [Symbol, Lithic::Models::AuthRules::V2CreateResponse::State]
        required :state, enum: -> { Lithic::Models::AuthRules::V2CreateResponse::State }

        # @!attribute type
        #   The type of Auth Rule. Effectively determines the event stream during which it
        #   will be evaluated.
        #
        #   - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        #   - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2CreateResponse::Type]
        required :type, enum: -> { Lithic::Models::AuthRules::V2CreateResponse::Type }

        # @!attribute excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!method initialize(token:, account_tokens:, card_tokens:, current_version:, draft_version:, event_stream:, name:, program_level:, state:, type:, excluded_card_tokens: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::V2CreateResponse} for more details.
        #
        #   @param token [String] Auth Rule Token
        #
        #   @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        #   @param current_version [Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion, nil]
        #
        #   @param draft_version [Lithic::Models::AuthRules::V2CreateResponse::DraftVersion, nil]
        #
        #   @param event_stream [Symbol, Lithic::Models::AuthRules::V2CreateResponse::EventStream] The type of event stream the Auth rule applies to.
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::V2CreateResponse::State] The state of the Auth Rule
        #
        #   @param type [Symbol, Lithic::Models::AuthRules::V2CreateResponse::Type] The type of Auth Rule. Effectively determines the event stream during which it w
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.

        # @see Lithic::Models::AuthRules::V2CreateResponse#current_version
        class CurrentVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters]
          required :parameters,
                   union: -> { Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion::Parameters }

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
          #   {Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::AuthRules::MerchantLockParameters }

            variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters)]
          end
        end

        # @see Lithic::Models::AuthRules::V2CreateResponse#draft_version
        class DraftVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters]
          required :parameters, union: -> { Lithic::Models::AuthRules::V2CreateResponse::DraftVersion::Parameters }

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
          #   {Lithic::Models::AuthRules::V2CreateResponse::DraftVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2CreateResponse::DraftVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::AuthRules::MerchantLockParameters }

            variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters)]
          end
        end

        # The type of event stream the Auth rule applies to.
        #
        # @see Lithic::Models::AuthRules::V2CreateResponse#event_stream
        module EventStream
          extend Lithic::Internal::Type::Enum

          AUTHORIZATION = :AUTHORIZATION
          THREE_DS_AUTHENTICATION = :THREE_DS_AUTHENTICATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The state of the Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2CreateResponse#state
        module State
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of Auth Rule. Effectively determines the event stream during which it
        # will be evaluated.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
        #
        # @see Lithic::Models::AuthRules::V2CreateResponse#type
        module Type
          extend Lithic::Internal::Type::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT
          MERCHANT_LOCK = :MERCHANT_LOCK
          CONDITIONAL_3DS_ACTION = :CONDITIONAL_3DS_ACTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
