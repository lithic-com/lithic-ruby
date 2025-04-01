# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#list
    class Tokenization < Lithic::BaseModel
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
      required :status, enum: -> { Lithic::Models::Tokenization::Status }

      # @!attribute token_requestor_name
      #   The entity that requested the tokenization. Represents a Digital Wallet or
      #     merchant.
      #
      #   @return [Symbol, Lithic::Models::Tokenization::TokenRequestorName]
      required :token_requestor_name, enum: -> { Lithic::Models::Tokenization::TokenRequestorName }

      # @!attribute token_unique_reference
      #   The network's unique reference for the tokenization.
      #
      #   @return [String]
      required :token_unique_reference, String

      # @!attribute tokenization_channel
      #   The channel through which the tokenization was made.
      #
      #   @return [Symbol, Lithic::Models::Tokenization::TokenizationChannel]
      required :tokenization_channel, enum: -> { Lithic::Models::Tokenization::TokenizationChannel }

      # @!attribute updated_at
      #   Latest date and time when the tokenization was updated. UTC time zone.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [r] digital_card_art_token
      #   Specifies the digital card art displayed in the user’s digital wallet after
      #     tokenization. This will be null if the tokenization was created without an
      #     associated digital card art. See
      #     [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :digital_card_art_token

      # @!attribute [r] events
      #   A list of events related to the tokenization.
      #
      #   @return [Array<Lithic::Models::Tokenization::Event>, nil]
      optional :events, -> { Lithic::ArrayOf[Lithic::Models::Tokenization::Event] }

      # @!parse
      #   # @return [Array<Lithic::Models::Tokenization::Event>]
      #   attr_writer :events

      # @!attribute payment_account_reference_id
      #   The network's unique reference for the card that is tokenized.
      #
      #   @return [String, nil]
      optional :payment_account_reference_id, String, nil?: true

      # @!parse
      #   # @param token [String]
      #   # @param account_token [String]
      #   # @param card_token [String]
      #   # @param created_at [Time]
      #   # @param dpan [String, nil]
      #   # @param status [Symbol, Lithic::Models::Tokenization::Status]
      #   # @param token_requestor_name [Symbol, Lithic::Models::Tokenization::TokenRequestorName]
      #   # @param token_unique_reference [String]
      #   # @param tokenization_channel [Symbol, Lithic::Models::Tokenization::TokenizationChannel]
      #   # @param updated_at [Time]
      #   # @param digital_card_art_token [String]
      #   # @param events [Array<Lithic::Models::Tokenization::Event>]
      #   # @param payment_account_reference_id [String, nil]
      #   #
      #   def initialize(
      #     token:,
      #     account_token:,
      #     card_token:,
      #     created_at:,
      #     dpan:,
      #     status:,
      #     token_requestor_name:,
      #     token_unique_reference:,
      #     tokenization_channel:,
      #     updated_at:,
      #     digital_card_art_token: nil,
      #     events: nil,
      #     payment_account_reference_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # The status of the tokenization request
      #
      # @see Lithic::Models::Tokenization#status
      module Status
        extend Lithic::Enum

        ACTIVE = :ACTIVE
        DEACTIVATED = :DEACTIVATED
        INACTIVE = :INACTIVE
        PAUSED = :PAUSED
        PENDING_2_FA = :PENDING_2FA
        PENDING_ACTIVATION = :PENDING_ACTIVATION
        UNKNOWN = :UNKNOWN

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # The entity that requested the tokenization. Represents a Digital Wallet or
      #   merchant.
      #
      # @see Lithic::Models::Tokenization#token_requestor_name
      module TokenRequestorName
        extend Lithic::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # The channel through which the tokenization was made.
      #
      # @see Lithic::Models::Tokenization#tokenization_channel
      module TokenizationChannel
        extend Lithic::Enum

        DIGITAL_WALLET = :DIGITAL_WALLET
        MERCHANT = :MERCHANT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class Event < Lithic::BaseModel
        # @!attribute [r] token
        #   Globally unique identifier for a Tokenization Event
        #
        #   @return [String, nil]
        optional :token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :token

        # @!attribute [r] created_at
        #   Date and time when the tokenization event first occurred. UTC time zone.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :created_at

        # @!attribute [r] result
        #   Enum representing the result of the tokenization event
        #
        #   @return [Symbol, Lithic::Models::Tokenization::Event::Result, nil]
        optional :result, enum: -> { Lithic::Models::Tokenization::Event::Result }

        # @!parse
        #   # @return [Symbol, Lithic::Models::Tokenization::Event::Result]
        #   attr_writer :result

        # @!attribute [r] type
        #   Enum representing the type of tokenization event that occurred
        #
        #   @return [Symbol, Lithic::Models::Tokenization::Event::Type, nil]
        optional :type, enum: -> { Lithic::Models::Tokenization::Event::Type }

        # @!parse
        #   # @return [Symbol, Lithic::Models::Tokenization::Event::Type]
        #   attr_writer :type

        # @!parse
        #   # @param token [String]
        #   # @param created_at [Time]
        #   # @param result [Symbol, Lithic::Models::Tokenization::Event::Result]
        #   # @param type [Symbol, Lithic::Models::Tokenization::Event::Type]
        #   #
        #   def initialize(token: nil, created_at: nil, result: nil, type: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # Enum representing the result of the tokenization event
        #
        # @see Lithic::Models::Tokenization::Event#result
        module Result
          extend Lithic::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Enum representing the type of tokenization event that occurred
        #
        # @see Lithic::Models::Tokenization::Event#type
        module Type
          extend Lithic::Enum

          TOKENIZATION_2_FA = :TOKENIZATION_2FA
          TOKENIZATION_AUTHORIZATION = :TOKENIZATION_AUTHORIZATION
          TOKENIZATION_DECISIONING = :TOKENIZATION_DECISIONING
          TOKENIZATION_ELIGIBILITY_CHECK = :TOKENIZATION_ELIGIBILITY_CHECK
          TOKENIZATION_UPDATED = :TOKENIZATION_UPDATED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
