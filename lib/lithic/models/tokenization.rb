# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#retrieve
    class Tokenization < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for a Tokenization
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #   The account token associated with the card being tokenized.
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_token
      #   The card token associated with the card being tokenized.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute created_at
      #   Date and time when the tokenization first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute dpan
      #   The dynamic pan assigned to the token by the network.
      #
      #   @return [String, nil]
      required :dpan, String, nil?: true

      # @!attribute status
      #   The status of the tokenization request
      #
      #   @return [Symbol, Lithic::Models::Tokenization::Status]
      required :status, enum: -> { Lithic::Tokenization::Status }

      # @!attribute token_requestor_name
      #   The entity that requested the tokenization. For digital wallets, this will be
      #   one of the defined wallet types. For merchant tokenizations, this will be a
      #   free-form merchant name string.
      #
      #   @return [Symbol, String, Lithic::Models::Tokenization::TokenRequestorName]
      required :token_requestor_name, union: -> { Lithic::Tokenization::TokenRequestorName }

      # @!attribute token_unique_reference
      #   The network's unique reference for the tokenization.
      #
      #   @return [String]
      required :token_unique_reference, String

      # @!attribute tokenization_channel
      #   The channel through which the tokenization was made.
      #
      #   @return [Symbol, Lithic::Models::Tokenization::TokenizationChannel]
      required :tokenization_channel, enum: -> { Lithic::Tokenization::TokenizationChannel }

      # @!attribute updated_at
      #   Latest date and time when the tokenization was updated. UTC time zone.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute device_id
      #   The device identifier associated with the tokenization.
      #
      #   @return [String, nil]
      optional :device_id, String, nil?: true

      # @!attribute digital_card_art_token
      #   Specifies the digital card art displayed in the user's digital wallet after
      #   tokenization. This will be null if the tokenization was created without an
      #   associated digital card art. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String, nil?: true

      # @!attribute events
      #   A list of events related to the tokenization.
      #
      #   @return [Array<Lithic::Models::Tokenization::Event>, nil]
      optional :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::Event] }

      # @!attribute payment_account_reference_id
      #   The network's unique reference for the card that is tokenized.
      #
      #   @return [String, nil]
      optional :payment_account_reference_id, String, nil?: true

      # @!method initialize(token:, account_token:, card_token:, created_at:, dpan:, status:, token_requestor_name:, token_unique_reference:, tokenization_channel:, updated_at:, device_id: nil, digital_card_art_token: nil, events: nil, payment_account_reference_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::Tokenization} for more details.
      #
      #   @param token [String] Globally unique identifier for a Tokenization
      #
      #   @param account_token [String] The account token associated with the card being tokenized.
      #
      #   @param card_token [String] The card token associated with the card being tokenized.
      #
      #   @param created_at [Time] Date and time when the tokenization first occurred. UTC time zone.
      #
      #   @param dpan [String, nil] The dynamic pan assigned to the token by the network.
      #
      #   @param status [Symbol, Lithic::Models::Tokenization::Status] The status of the tokenization request
      #
      #   @param token_requestor_name [Symbol, String, Lithic::Models::Tokenization::TokenRequestorName] The entity that requested the tokenization. For digital wallets, this will be on
      #
      #   @param token_unique_reference [String] The network's unique reference for the tokenization.
      #
      #   @param tokenization_channel [Symbol, Lithic::Models::Tokenization::TokenizationChannel] The channel through which the tokenization was made.
      #
      #   @param updated_at [Time] Latest date and time when the tokenization was updated. UTC time zone.
      #
      #   @param device_id [String, nil] The device identifier associated with the tokenization.
      #
      #   @param digital_card_art_token [String, nil] Specifies the digital card art displayed in the user's digital wallet after toke
      #
      #   @param events [Array<Lithic::Models::Tokenization::Event>] A list of events related to the tokenization.
      #
      #   @param payment_account_reference_id [String, nil] The network's unique reference for the card that is tokenized.

      # The status of the tokenization request
      #
      # @see Lithic::Models::Tokenization#status
      module Status
        extend Lithic::Internal::Type::Enum

        ACTIVE = :ACTIVE
        DEACTIVATED = :DEACTIVATED
        INACTIVE = :INACTIVE
        PAUSED = :PAUSED
        PENDING_2_FA = :PENDING_2FA
        PENDING_ACTIVATION = :PENDING_ACTIVATION
        UNKNOWN = :UNKNOWN

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The entity that requested the tokenization. For digital wallets, this will be
      # one of the defined wallet types. For merchant tokenizations, this will be a
      # free-form merchant name string.
      #
      # @see Lithic::Models::Tokenization#token_requestor_name
      module TokenRequestorName
        extend Lithic::Internal::Type::Union

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::AMAZON_ONE }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::ANDROID_PAY }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::APPLE_PAY }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::FACEBOOK }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::FITBIT_PAY }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::GARMIN_PAY }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::GOOGLE_PAY }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::MICROSOFT_PAY }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::NETFLIX }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::SAMSUNG_PAY }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::UNKNOWN }

        variant const: -> { Lithic::Models::Tokenization::TokenRequestorName::VISA_CHECKOUT }

        # Merchant name for merchant tokenizations
        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Lithic::Tokenization::TokenRequestorName::TaggedSymbol, String) }
        end

        # @!group

        AMAZON_ONE = :AMAZON_ONE
        ANDROID_PAY = :ANDROID_PAY
        APPLE_PAY = :APPLE_PAY
        FACEBOOK = :FACEBOOK
        FITBIT_PAY = :FITBIT_PAY
        GARMIN_PAY = :GARMIN_PAY
        GOOGLE_PAY = :GOOGLE_PAY
        MICROSOFT_PAY = :MICROSOFT_PAY
        NETFLIX = :NETFLIX
        SAMSUNG_PAY = :SAMSUNG_PAY
        UNKNOWN = :UNKNOWN
        VISA_CHECKOUT = :VISA_CHECKOUT

        # @!endgroup
      end

      # The channel through which the tokenization was made.
      #
      # @see Lithic::Models::Tokenization#tokenization_channel
      module TokenizationChannel
        extend Lithic::Internal::Type::Enum

        DIGITAL_WALLET = :DIGITAL_WALLET
        MERCHANT = :MERCHANT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Event < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for a Tokenization Event
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute created_at
        #   Date and time when the tokenization event first occurred. UTC time zone.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute result
        #   Enum representing the result of the tokenization event
        #
        #   @return [Symbol, Lithic::Models::Tokenization::Event::Result, nil]
        optional :result, enum: -> { Lithic::Tokenization::Event::Result }

        # @!attribute rule_results
        #   Results from rules that were evaluated for this tokenization
        #
        #   @return [Array<Lithic::Models::Tokenization::Event::RuleResult>, nil]
        optional :rule_results, -> { Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::Event::RuleResult] }

        # @!attribute tokenization_decline_reasons
        #   List of reasons why the tokenization was declined
        #
        #   @return [Array<Symbol, Lithic::Models::Tokenization::Event::TokenizationDeclineReason>, nil]
        optional :tokenization_decline_reasons,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Tokenization::Event::TokenizationDeclineReason] }

        # @!attribute tokenization_tfa_reasons
        #   List of reasons why two-factor authentication was required
        #
        #   @return [Array<Symbol, Lithic::Models::Tokenization::Event::TokenizationTfaReason>, nil]
        optional :tokenization_tfa_reasons,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Tokenization::Event::TokenizationTfaReason] }

        # @!attribute type
        #   Enum representing the type of tokenization event that occurred
        #
        #   @return [Symbol, Lithic::Models::Tokenization::Event::Type, nil]
        optional :type, enum: -> { Lithic::Tokenization::Event::Type }

        # @!method initialize(token: nil, created_at: nil, result: nil, rule_results: nil, tokenization_decline_reasons: nil, tokenization_tfa_reasons: nil, type: nil)
        #   @param token [String] Globally unique identifier for a Tokenization Event
        #
        #   @param created_at [Time] Date and time when the tokenization event first occurred. UTC time zone.
        #
        #   @param result [Symbol, Lithic::Models::Tokenization::Event::Result] Enum representing the result of the tokenization event
        #
        #   @param rule_results [Array<Lithic::Models::Tokenization::Event::RuleResult>] Results from rules that were evaluated for this tokenization
        #
        #   @param tokenization_decline_reasons [Array<Symbol, Lithic::Models::Tokenization::Event::TokenizationDeclineReason>] List of reasons why the tokenization was declined
        #
        #   @param tokenization_tfa_reasons [Array<Symbol, Lithic::Models::Tokenization::Event::TokenizationTfaReason>] List of reasons why two-factor authentication was required
        #
        #   @param type [Symbol, Lithic::Models::Tokenization::Event::Type] Enum representing the type of tokenization event that occurred

        # Enum representing the result of the tokenization event
        #
        # @see Lithic::Models::Tokenization::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED
          NOTIFICATION_DELIVERED = :NOTIFICATION_DELIVERED
          REQUIRE_ADDITIONAL_AUTHENTICATION = :REQUIRE_ADDITIONAL_AUTHENTICATION
          TOKEN_ACTIVATED = :TOKEN_ACTIVATED
          TOKEN_CREATED = :TOKEN_CREATED
          TOKEN_DEACTIVATED = :TOKEN_DEACTIVATED
          TOKEN_DELETED_FROM_CONSUMER_APP = :TOKEN_DELETED_FROM_CONSUMER_APP
          TOKEN_INACTIVE = :TOKEN_INACTIVE
          TOKEN_STATE_UNKNOWN = :TOKEN_STATE_UNKNOWN
          TOKEN_SUSPENDED = :TOKEN_SUSPENDED
          TOKEN_UPDATED = :TOKEN_UPDATED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class RuleResult < Lithic::Internal::Type::BaseModel
          # @!attribute auth_rule_token
          #   The Auth Rule Token associated with the rule. If this is set to null, then the
          #   result was not associated with a customer-configured rule. This may happen in
          #   cases where a tokenization is declined or requires TFA due to a
          #   Lithic-configured security or compliance rule, for example.
          #
          #   @return [String, nil]
          required :auth_rule_token, String, nil?: true

          # @!attribute explanation
          #   A human-readable explanation outlining the motivation for the rule's result
          #
          #   @return [String, nil]
          required :explanation, String, nil?: true

          # @!attribute name
          #   The name for the rule, if any was configured
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute result
          #   The result associated with this rule
          #
          #   @return [Symbol, Lithic::Models::Tokenization::Event::RuleResult::Result]
          required :result, enum: -> { Lithic::Tokenization::Event::RuleResult::Result }

          # @!method initialize(auth_rule_token:, explanation:, name:, result:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::Tokenization::Event::RuleResult} for more details.
          #
          #   @param auth_rule_token [String, nil] The Auth Rule Token associated with the rule. If this is set to null, then the r
          #
          #   @param explanation [String, nil] A human-readable explanation outlining the motivation for the rule's result
          #
          #   @param name [String, nil] The name for the rule, if any was configured
          #
          #   @param result [Symbol, Lithic::Models::Tokenization::Event::RuleResult::Result] The result associated with this rule

          # The result associated with this rule
          #
          # @see Lithic::Models::Tokenization::Event::RuleResult#result
          module Result
            extend Lithic::Internal::Type::Enum

            APPROVED = :APPROVED
            DECLINED = :DECLINED
            REQUIRE_TFA = :REQUIRE_TFA
            ERROR = :ERROR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Reason code for why a tokenization was declined
        module TokenizationDeclineReason
          extend Lithic::Internal::Type::Enum

          ACCOUNT_SCORE_1 = :ACCOUNT_SCORE_1
          DEVICE_SCORE_1 = :DEVICE_SCORE_1
          ALL_WALLET_DECLINE_REASONS_PRESENT = :ALL_WALLET_DECLINE_REASONS_PRESENT
          WALLET_RECOMMENDED_DECISION_RED = :WALLET_RECOMMENDED_DECISION_RED
          CVC_MISMATCH = :CVC_MISMATCH
          CARD_EXPIRY_MONTH_MISMATCH = :CARD_EXPIRY_MONTH_MISMATCH
          CARD_EXPIRY_YEAR_MISMATCH = :CARD_EXPIRY_YEAR_MISMATCH
          CARD_INVALID_STATE = :CARD_INVALID_STATE
          CUSTOMER_RED_PATH = :CUSTOMER_RED_PATH
          INVALID_CUSTOMER_RESPONSE = :INVALID_CUSTOMER_RESPONSE
          NETWORK_FAILURE = :NETWORK_FAILURE
          GENERIC_DECLINE = :GENERIC_DECLINE
          DIGITAL_CARD_ART_REQUIRED = :DIGITAL_CARD_ART_REQUIRED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Reason code for why a tokenization required two-factor authentication
        module TokenizationTfaReason
          extend Lithic::Internal::Type::Enum

          WALLET_RECOMMENDED_TFA = :WALLET_RECOMMENDED_TFA
          SUSPICIOUS_ACTIVITY = :SUSPICIOUS_ACTIVITY
          DEVICE_RECENTLY_LOST = :DEVICE_RECENTLY_LOST
          TOO_MANY_RECENT_ATTEMPTS = :TOO_MANY_RECENT_ATTEMPTS
          TOO_MANY_RECENT_TOKENS = :TOO_MANY_RECENT_TOKENS
          TOO_MANY_DIFFERENT_CARDHOLDERS = :TOO_MANY_DIFFERENT_CARDHOLDERS
          OUTSIDE_HOME_TERRITORY = :OUTSIDE_HOME_TERRITORY
          HAS_SUSPENDED_TOKENS = :HAS_SUSPENDED_TOKENS
          HIGH_RISK = :HIGH_RISK
          ACCOUNT_SCORE_LOW = :ACCOUNT_SCORE_LOW
          DEVICE_SCORE_LOW = :DEVICE_SCORE_LOW
          CARD_STATE_TFA = :CARD_STATE_TFA
          HARDCODED_TFA = :HARDCODED_TFA
          CUSTOMER_RULE_TFA = :CUSTOMER_RULE_TFA
          DEVICE_HOST_CARD_EMULATION = :DEVICE_HOST_CARD_EMULATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Enum representing the type of tokenization event that occurred
        #
        # @see Lithic::Models::Tokenization::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          TOKENIZATION_2_FA = :TOKENIZATION_2FA
          TOKENIZATION_AUTHORIZATION = :TOKENIZATION_AUTHORIZATION
          TOKENIZATION_DECISIONING = :TOKENIZATION_DECISIONING
          TOKENIZATION_ELIGIBILITY_CHECK = :TOKENIZATION_ELIGIBILITY_CHECK
          TOKENIZATION_UPDATED = :TOKENIZATION_UPDATED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
