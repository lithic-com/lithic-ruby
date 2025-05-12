# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#retrieve
      class V2RetrieveResponse < Lithic::Internal::Type::BaseModel
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
        #   @return [Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion, nil]
        required :current_version,
                 -> { Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion },
                 nil?: true

        # @!attribute draft_version
        #
        #   @return [Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion, nil]
        required :draft_version, -> { Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion }, nil?: true

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
        #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveResponse::State]
        required :state, enum: -> { Lithic::Models::AuthRules::V2RetrieveResponse::State }

        # @!attribute type
        #   The type of Auth Rule
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveResponse::Type]
        required :type, enum: -> { Lithic::Models::AuthRules::V2RetrieveResponse::Type }

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
        #   @param current_version [Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion, nil]
        #
        #   @param draft_version [Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion, nil]
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::V2RetrieveResponse::State] The state of the Auth Rule
        #
        #   @param type [Symbol, Lithic::Models::AuthRules::V2RetrieveResponse::Type] The type of Auth Rule
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.

        # @see Lithic::Models::AuthRules::V2RetrieveResponse#current_version
        class CurrentVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters]
          required :parameters,
                   union: -> { Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters }

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
          #   {Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion} for more
          #   details.
          #
          #   @param parameters [Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters }

            class MerchantLockParameters < Lithic::Internal::Type::BaseModel
              # @!attribute merchants
              #   A list of merchant locks defining specific merchants or groups of merchants
              #   (based on descriptors or IDs) that the lock applies to.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant>]
              required :merchants,
                       -> do
                         Lithic::Internal::Type::ArrayOf[
                           Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant
                         ]
                       end

              # @!method initialize(merchants:)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters}
              #   for more details.
              #
              #   @param merchants [Array<Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant>] A list of merchant locks defining specific merchants or groups of merchants (bas

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
                #   {Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant}
                #   for more details.
                #
                #   Represents a specific merchant lock based on their ID or descriptor. Each
                #   merchant object allows transaction rules to work at a granular level and
                #   requires at least one of merchant_id or descriptor.
                #
                #   @param comment [String] A comment or explanation about the merchant, used internally for rule management
                #
                #   @param descriptor [String] Short description of the merchant, often used to provide more human-readable con
                #
                #   @param merchant_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant). This at
              end
            end

            # @!method self.variants
            #   @return [Array(Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters)]

            define_sorbet_constant!(:Variants) do
              T.type_alias do
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion::Parameters::MerchantLockParameters
                )
              end
            end
          end
        end

        # @see Lithic::Models::AuthRules::V2RetrieveResponse#draft_version
        class DraftVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters]
          required :parameters,
                   union: -> { Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters }

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
          #   {Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion} for more details.
          #
          #   @param parameters [Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters }

            class MerchantLockParameters < Lithic::Internal::Type::BaseModel
              # @!attribute merchants
              #   A list of merchant locks defining specific merchants or groups of merchants
              #   (based on descriptors or IDs) that the lock applies to.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant>]
              required :merchants,
                       -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant] }

              # @!method initialize(merchants:)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters}
              #   for more details.
              #
              #   @param merchants [Array<Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant>] A list of merchant locks defining specific merchants or groups of merchants (bas

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
                #   {Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant}
                #   for more details.
                #
                #   Represents a specific merchant lock based on their ID or descriptor. Each
                #   merchant object allows transaction rules to work at a granular level and
                #   requires at least one of merchant_id or descriptor.
                #
                #   @param comment [String] A comment or explanation about the merchant, used internally for rule management
                #
                #   @param descriptor [String] Short description of the merchant, often used to provide more human-readable con
                #
                #   @param merchant_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant). This at
              end
            end

            # @!method self.variants
            #   @return [Array(Lithic::AuthRules::ConditionalBlockParameters, Lithic::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters)]

            define_sorbet_constant!(:Variants) do
              T.type_alias do
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion::Parameters::MerchantLockParameters
                )
              end
            end
          end
        end

        # The state of the Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2RetrieveResponse#state
        module State
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2RetrieveResponse#type
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
