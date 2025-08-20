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
      #   The entity that requested the tokenization. Represents a Digital Wallet or
      #   merchant.
      #
      #   @return [Symbol, Lithic::Models::Tokenization::TokenRequestorName]
      required :token_requestor_name, enum: -> { Lithic::Tokenization::TokenRequestorName }

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

      # @!attribute digital_card_art_token
      #   Specifies the digital card art displayed in the user’s digital wallet after
      #   tokenization. This will be null if the tokenization was created without an
      #   associated digital card art. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String

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

      # @!method initialize(token:, account_token:, card_token:, created_at:, dpan:, status:, token_requestor_name:, token_unique_reference:, tokenization_channel:, updated_at:, digital_card_art_token: nil, events: nil, payment_account_reference_id: nil)
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
      #   @param token_requestor_name [Symbol, Lithic::Models::Tokenization::TokenRequestorName] The entity that requested the tokenization. Represents a Digital Wallet or merch
      #
      #   @param token_unique_reference [String] The network's unique reference for the tokenization.
      #
      #   @param tokenization_channel [Symbol, Lithic::Models::Tokenization::TokenizationChannel] The channel through which the tokenization was made.
      #
      #   @param updated_at [Time] Latest date and time when the tokenization was updated. UTC time zone.
      #
      #   @param digital_card_art_token [String] Specifies the digital card art displayed in the user’s digital wallet after toke
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

      # The entity that requested the tokenization. Represents a Digital Wallet or
      # merchant.
      #
      # @see Lithic::Models::Tokenization#token_requestor_name
      module TokenRequestorName
        extend Lithic::Internal::Type::Enum

        AMAZON_ONE = :AMAZON_ONE
        ANDROID_PAY = :ANDROID_PAY
        APPLE_PAY = :APPLE_PAY
        FACEBOOK = :FACEBOOK
        FITBIT_PAY = :FITBIT_PAY
        GARMIN_PAY = :GARMIN_PAY
        MICROSOFT_PAY = :MICROSOFT_PAY
        NETFLIX = :NETFLIX
        SAMSUNG_PAY = :SAMSUNG_PAY
        UNKNOWN = :UNKNOWN
        VISA_CHECKOUT = :VISA_CHECKOUT

        # @!method self.values
        #   @return [Array<Symbol>]
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

        # @!attribute type
        #   Enum representing the type of tokenization event that occurred
        #
        #   @return [Symbol, Lithic::Models::Tokenization::Event::Type, nil]
        optional :type, enum: -> { Lithic::Tokenization::Event::Type }

        # @!method initialize(token: nil, created_at: nil, result: nil, type: nil)
        #   @param token [String] Globally unique identifier for a Tokenization Event
        #
        #   @param created_at [Time] Date and time when the tokenization event first occurred. UTC time zone.
        #
        #   @param result [Symbol, Lithic::Models::Tokenization::Event::Result] Enum representing the result of the tokenization event
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
          TOKEN_INACTIVE = :TOKEN_INACTIVE
          TOKEN_STATE_UNKNOWN = :TOKEN_STATE_UNKNOWN
          TOKEN_SUSPENDED = :TOKEN_SUSPENDED
          TOKEN_UPDATED = :TOKEN_UPDATED

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
