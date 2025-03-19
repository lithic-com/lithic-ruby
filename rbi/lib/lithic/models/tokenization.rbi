# typed: strong

module Lithic
  module Models
    class Tokenization < Lithic::BaseModel
      # Globally unique identifier for a Tokenization
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # The account token associated with the card being tokenized.
      sig { returns(String) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # The card token associated with the card being tokenized.
      sig { returns(String) }
      def card_token
      end

      sig { params(_: String).returns(String) }
      def card_token=(_)
      end

      # Date and time when the tokenization first occurred. UTC time zone.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The dynamic pan assigned to the token by the network.
      sig { returns(T.nilable(String)) }
      def dpan
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def dpan=(_)
      end

      # The status of the tokenization request
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The entity that requested the tokenization. Represents a Digital Wallet or
      #   merchant.
      sig { returns(Symbol) }
      def token_requestor_name
      end

      sig { params(_: Symbol).returns(Symbol) }
      def token_requestor_name=(_)
      end

      # The network's unique reference for the tokenization.
      sig { returns(String) }
      def token_unique_reference
      end

      sig { params(_: String).returns(String) }
      def token_unique_reference=(_)
      end

      # The channel through which the tokenization was made.
      sig { returns(Symbol) }
      def tokenization_channel
      end

      sig { params(_: Symbol).returns(Symbol) }
      def tokenization_channel=(_)
      end

      # Latest date and time when the tokenization was updated. UTC time zone.
      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # Specifies the digital card art displayed in the user’s digital wallet after
      #   tokenization. This will be null if the tokenization was created without an
      #   associated digital card art. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      sig { returns(T.nilable(String)) }
      def digital_card_art_token
      end

      sig { params(_: String).returns(String) }
      def digital_card_art_token=(_)
      end

      # A list of events related to the tokenization.
      sig { returns(T.nilable(T::Array[Lithic::Models::Tokenization::Event])) }
      def events
      end

      sig do
        params(_: T::Array[Lithic::Models::Tokenization::Event])
          .returns(T::Array[Lithic::Models::Tokenization::Event])
      end
      def events=(_)
      end

      # The network's unique reference for the card that is tokenized.
      sig { returns(T.nilable(String)) }
      def payment_account_reference_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_account_reference_id=(_)
      end

      sig do
        params(
          token: String,
          account_token: String,
          card_token: String,
          created_at: Time,
          dpan: T.nilable(String),
          status: Symbol,
          token_requestor_name: Symbol,
          token_unique_reference: String,
          tokenization_channel: Symbol,
          updated_at: Time,
          digital_card_art_token: String,
          events: T::Array[Lithic::Models::Tokenization::Event],
          payment_account_reference_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        account_token:,
        card_token:,
        created_at:,
        dpan:,
        status:,
        token_requestor_name:,
        token_unique_reference:,
        tokenization_channel:,
        updated_at:,
        digital_card_art_token: nil,
        events: nil,
        payment_account_reference_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              account_token: String,
              card_token: String,
              created_at: Time,
              dpan: T.nilable(String),
              status: Symbol,
              token_requestor_name: Symbol,
              token_unique_reference: String,
              tokenization_channel: Symbol,
              updated_at: Time,
              digital_card_art_token: String,
              events: T::Array[Lithic::Models::Tokenization::Event],
              payment_account_reference_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      # The status of the tokenization request
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACTIVE = :ACTIVE
        DEACTIVATED = :DEACTIVATED
        INACTIVE = :INACTIVE
        PAUSED = :PAUSED
        PENDING_2_FA = :PENDING_2FA
        PENDING_ACTIVATION = :PENDING_ACTIVATION
        UNKNOWN = :UNKNOWN
      end

      # The entity that requested the tokenization. Represents a Digital Wallet or
      #   merchant.
      class TokenRequestorName < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      # The channel through which the tokenization was made.
      class TokenizationChannel < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DIGITAL_WALLET = :DIGITAL_WALLET
        MERCHANT = :MERCHANT
      end

      class Event < Lithic::BaseModel
        # Globally unique identifier for a Tokenization Event
        sig { returns(T.nilable(String)) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Date and time when the tokenization event first occurred. UTC time zone.
        sig { returns(T.nilable(Time)) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # Enum representing the result of the tokenization event
        sig { returns(T.nilable(Symbol)) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        # Enum representing the type of tokenization event that occurred
        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(token: String, created_at: Time, result: Symbol, type: Symbol).returns(T.attached_class)
        end
        def self.new(token: nil, created_at: nil, result: nil, type: nil)
        end

        sig { override.returns({token: String, created_at: Time, result: Symbol, type: Symbol}) }
        def to_hash
        end

        # Enum representing the result of the tokenization event
        class Result < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end

        # Enum representing the type of tokenization event that occurred
        class Type < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          TOKENIZATION_2_FA = :TOKENIZATION_2FA
          TOKENIZATION_AUTHORIZATION = :TOKENIZATION_AUTHORIZATION
          TOKENIZATION_DECISIONING = :TOKENIZATION_DECISIONING
          TOKENIZATION_ELIGIBILITY_CHECK = :TOKENIZATION_ELIGIBILITY_CHECK
          TOKENIZATION_UPDATED = :TOKENIZATION_UPDATED
        end
      end
    end
  end
end
