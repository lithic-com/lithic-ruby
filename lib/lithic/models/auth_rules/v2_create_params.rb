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
        #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters, nil]
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
        #   @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters] Parameters for the Auth Rule
        #
        #   @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type] The type of Auth Rule
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

          variant -> { Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters }

          class MerchantLockParameters < Lithic::Internal::Type::BaseModel
            # @!attribute merchants
            #   A list of merchant locks defining specific merchants or groups of merchants
            #   (based on descriptors or IDs) that the lock applies to.
            #
            #   @return [Array<Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant>]
            required :merchants,
                     -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant] }

            # @!method initialize(merchants:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters}
            #   for more details.
            #
            #   @param merchants [Array<Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant>] A list of merchant locks defining specific merchants or groups of merchants (bas
            #   ...

            class Merchant < Lithic::Internal::Type::BaseModel
              # @!attribute comment
              #   A comment or explanation about the merchant, used internally for rule management
              #   purposes.
              #
              #   @return [String, nil]
              optional :comment, String

              # @!attribute descriptor
              #   Short description of the merchant, often used to provide more human-readable
              #   context about the transaction merchant. This is typically the name or label
              #   shown on transaction summaries.
              #
              #   @return [String, nil]
              optional :descriptor, String

              # @!attribute merchant_id
              #   Unique alphanumeric identifier for the payment card acceptor (merchant). This
              #   attribute specifies the merchant entity that will be locked or referenced for
              #   authorization rules.
              #
              #   @return [String, nil]
              optional :merchant_id, String

              # @!method initialize(comment: nil, descriptor: nil, merchant_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant}
              #   for more details.
              #
              #   Represents a specific merchant lock based on their ID or descriptor. Each
              #   merchant object allows transaction rules to work at a granular level and
              #   requires at least one of merchant_id or descriptor.
              #
              #   @param comment [String] A comment or explanation about the merchant, used internally for rule management
              #   ...
              #
              #   @param descriptor [String] Short description of the merchant, often used to provide more human-readable con
              #   ...
              #
              #   @param merchant_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant). This at
              #   ...
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2CreateParams::Parameters::MerchantLockParameters)]
        end

        # The type of Auth Rule
        module Type
          extend Lithic::Internal::Type::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT
          MERCHANT_LOCK = :MERCHANT_LOCK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
