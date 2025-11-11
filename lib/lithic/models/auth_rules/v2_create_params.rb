# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#create
      class V2CreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute parameters
        #   Parameters for the Auth Rule
        #
        #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters]
        required :parameters, union: -> { Lithic::AuthRules::V2CreateParams::Parameters }

        # @!attribute type
        #   The type of Auth Rule. For certain rule types, this determines the event stream
        #   during which it will be evaluated. For rules that can be applied to one of
        #   several event streams, the effective one is defined by the separate
        #   `event_stream` field.
        #
        #   - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        #   - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type]
        required :type, enum: -> { Lithic::AuthRules::V2CreateParams::Type }

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

        # @!attribute event_stream
        #   The event stream during which the rule will be evaluated.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::EventStream, nil]
        optional :event_stream, enum: -> { Lithic::AuthRules::V2CreateParams::EventStream }

        # @!attribute name
        #   Auth Rule Name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

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

        # @!method initialize(parameters:, type:, card_tokens:, program_level:, account_tokens: nil, business_account_tokens: nil, event_stream: nil, name: nil, excluded_card_tokens: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::V2CreateParams} for more details.
        #
        #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters] Parameters for the Auth Rule
        #
        #   @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type] The type of Auth Rule. For certain rule types, this determines the event stream
        #
        #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        #   @param business_account_tokens [Array<String>] Business Account tokens to which the Auth Rule applies.
        #
        #   @param event_stream [Symbol, Lithic::Models::AuthRules::V2CreateParams::EventStream] The event stream during which the rule will be evaluated.
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::AuthRules::VelocityLimitParams }

          variant -> { Lithic::AuthRules::MerchantLockParameters }

          variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

          variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters)]
        end

        # The type of Auth Rule. For certain rule types, this determines the event stream
        # during which it will be evaluated. For rules that can be applied to one of
        # several event streams, the effective one is defined by the separate
        # `event_stream` field.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
        module Type
          extend Lithic::Internal::Type::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT
          MERCHANT_LOCK = :MERCHANT_LOCK
          CONDITIONAL_ACTION = :CONDITIONAL_ACTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The event stream during which the rule will be evaluated.
        module EventStream
          extend Lithic::Internal::Type::Enum

          AUTHORIZATION = :AUTHORIZATION
          THREE_DS_AUTHENTICATION = :THREE_DS_AUTHENTICATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
