# typed: strong

module Lithic
  module Models
    class Tokenization < Lithic::Internal::Type::BaseModel
      # Globally unique identifier for a Tokenization
      sig { returns(String) }
      attr_accessor :token

      # The account token associated with the card being tokenized.
      sig { returns(String) }
      attr_accessor :account_token

      # The card token associated with the card being tokenized.
      sig { returns(String) }
      attr_accessor :card_token

      # Date and time when the tokenization first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created_at

      # The dynamic pan assigned to the token by the network.
      sig { returns(T.nilable(String)) }
      attr_accessor :dpan

      # The status of the tokenization request
      sig { returns(Lithic::Models::Tokenization::Status::TaggedSymbol) }
      attr_accessor :status

      # The entity that requested the tokenization. Represents a Digital Wallet or
      #   merchant.
      sig { returns(Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol) }
      attr_accessor :token_requestor_name

      # The network's unique reference for the tokenization.
      sig { returns(String) }
      attr_accessor :token_unique_reference

      # The channel through which the tokenization was made.
      sig { returns(Lithic::Models::Tokenization::TokenizationChannel::TaggedSymbol) }
      attr_accessor :tokenization_channel

      # Latest date and time when the tokenization was updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Specifies the digital card art displayed in the user’s digital wallet after
      #   tokenization. This will be null if the tokenization was created without an
      #   associated digital card art. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      sig { returns(T.nilable(String)) }
      attr_reader :digital_card_art_token

      sig { params(digital_card_art_token: String).void }
      attr_writer :digital_card_art_token

      # A list of events related to the tokenization.
      sig { returns(T.nilable(T::Array[Lithic::Models::Tokenization::Event])) }
      attr_reader :events

      sig { params(events: T::Array[T.any(Lithic::Models::Tokenization::Event, Lithic::Internal::AnyHash)]).void }
      attr_writer :events

      # The network's unique reference for the card that is tokenized.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_account_reference_id

      sig do
        params(
          token: String,
          account_token: String,
          card_token: String,
          created_at: Time,
          dpan: T.nilable(String),
          status: Lithic::Models::Tokenization::Status::OrSymbol,
          token_requestor_name: Lithic::Models::Tokenization::TokenRequestorName::OrSymbol,
          token_unique_reference: String,
          tokenization_channel: Lithic::Models::Tokenization::TokenizationChannel::OrSymbol,
          updated_at: Time,
          digital_card_art_token: String,
          events: T::Array[T.any(Lithic::Models::Tokenization::Event, Lithic::Internal::AnyHash)],
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
      ); end
      sig do
        override
          .returns(
            {
              token: String,
              account_token: String,
              card_token: String,
              created_at: Time,
              dpan: T.nilable(String),
              status: Lithic::Models::Tokenization::Status::TaggedSymbol,
              token_requestor_name: Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol,
              token_unique_reference: String,
              tokenization_channel: Lithic::Models::Tokenization::TokenizationChannel::TaggedSymbol,
              updated_at: Time,
              digital_card_art_token: String,
              events: T::Array[Lithic::Models::Tokenization::Event],
              payment_account_reference_id: T.nilable(String)
            }
          )
      end
      def to_hash; end

      # The status of the tokenization request
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Tokenization::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Lithic::Models::Tokenization::Status::TaggedSymbol) }

        ACTIVE = T.let(:ACTIVE, Lithic::Models::Tokenization::Status::TaggedSymbol)
        DEACTIVATED = T.let(:DEACTIVATED, Lithic::Models::Tokenization::Status::TaggedSymbol)
        INACTIVE = T.let(:INACTIVE, Lithic::Models::Tokenization::Status::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::Tokenization::Status::TaggedSymbol)
        PENDING_2_FA = T.let(:PENDING_2FA, Lithic::Models::Tokenization::Status::TaggedSymbol)
        PENDING_ACTIVATION = T.let(:PENDING_ACTIVATION, Lithic::Models::Tokenization::Status::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Tokenization::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Tokenization::Status::TaggedSymbol]) }
        def self.values; end
      end

      # The entity that requested the tokenization. Represents a Digital Wallet or
      #   merchant.
      module TokenRequestorName
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Tokenization::TokenRequestorName) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol) }

        AMAZON_ONE = T.let(:AMAZON_ONE, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        ANDROID_PAY = T.let(:ANDROID_PAY, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        APPLE_PAY = T.let(:APPLE_PAY, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        FACEBOOK = T.let(:FACEBOOK, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        FITBIT_PAY = T.let(:FITBIT_PAY, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        GARMIN_PAY = T.let(:GARMIN_PAY, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        MICROSOFT_PAY = T.let(:MICROSOFT_PAY, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        NETFLIX = T.let(:NETFLIX, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        SAMSUNG_PAY = T.let(:SAMSUNG_PAY, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)
        VISA_CHECKOUT = T.let(:VISA_CHECKOUT, Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Tokenization::TokenRequestorName::TaggedSymbol]) }
        def self.values; end
      end

      # The channel through which the tokenization was made.
      module TokenizationChannel
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Tokenization::TokenizationChannel) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::Tokenization::TokenizationChannel::TaggedSymbol) }

        DIGITAL_WALLET = T.let(:DIGITAL_WALLET, Lithic::Models::Tokenization::TokenizationChannel::TaggedSymbol)
        MERCHANT = T.let(:MERCHANT, Lithic::Models::Tokenization::TokenizationChannel::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Tokenization::TokenizationChannel::TaggedSymbol]) }
        def self.values; end
      end

      class Event < Lithic::Internal::Type::BaseModel
        # Globally unique identifier for a Tokenization Event
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        # Date and time when the tokenization event first occurred. UTC time zone.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Enum representing the result of the tokenization event
        sig { returns(T.nilable(Lithic::Models::Tokenization::Event::Result::TaggedSymbol)) }
        attr_reader :result

        sig { params(result: Lithic::Models::Tokenization::Event::Result::OrSymbol).void }
        attr_writer :result

        # Enum representing the type of tokenization event that occurred
        sig { returns(T.nilable(Lithic::Models::Tokenization::Event::Type::TaggedSymbol)) }
        attr_reader :type

        sig { params(type: Lithic::Models::Tokenization::Event::Type::OrSymbol).void }
        attr_writer :type

        sig do
          params(
            token: String,
            created_at: Time,
            result: Lithic::Models::Tokenization::Event::Result::OrSymbol,
            type: Lithic::Models::Tokenization::Event::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(token: nil, created_at: nil, result: nil, type: nil); end

        sig do
          override
            .returns(
              {
                token: String,
                created_at: Time,
                result: Lithic::Models::Tokenization::Event::Result::TaggedSymbol,
                type: Lithic::Models::Tokenization::Event::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # Enum representing the result of the tokenization event
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Tokenization::Event::Result) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::Tokenization::Event::Result::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          NOTIFICATION_DELIVERED =
            T.let(:NOTIFICATION_DELIVERED, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          REQUIRE_ADDITIONAL_AUTHENTICATION =
            T.let(:REQUIRE_ADDITIONAL_AUTHENTICATION, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          TOKEN_ACTIVATED = T.let(:TOKEN_ACTIVATED, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          TOKEN_CREATED = T.let(:TOKEN_CREATED, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          TOKEN_DEACTIVATED = T.let(:TOKEN_DEACTIVATED, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          TOKEN_INACTIVE = T.let(:TOKEN_INACTIVE, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          TOKEN_STATE_UNKNOWN =
            T.let(:TOKEN_STATE_UNKNOWN, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          TOKEN_SUSPENDED = T.let(:TOKEN_SUSPENDED, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)
          TOKEN_UPDATED = T.let(:TOKEN_UPDATED, Lithic::Models::Tokenization::Event::Result::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Tokenization::Event::Result::TaggedSymbol]) }
          def self.values; end
        end

        # Enum representing the type of tokenization event that occurred
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Tokenization::Event::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::Tokenization::Event::Type::TaggedSymbol) }

          TOKENIZATION_2_FA = T.let(:TOKENIZATION_2FA, Lithic::Models::Tokenization::Event::Type::TaggedSymbol)
          TOKENIZATION_AUTHORIZATION =
            T.let(:TOKENIZATION_AUTHORIZATION, Lithic::Models::Tokenization::Event::Type::TaggedSymbol)
          TOKENIZATION_DECISIONING =
            T.let(:TOKENIZATION_DECISIONING, Lithic::Models::Tokenization::Event::Type::TaggedSymbol)
          TOKENIZATION_ELIGIBILITY_CHECK =
            T.let(:TOKENIZATION_ELIGIBILITY_CHECK, Lithic::Models::Tokenization::Event::Type::TaggedSymbol)
          TOKENIZATION_UPDATED =
            T.let(:TOKENIZATION_UPDATED, Lithic::Models::Tokenization::Event::Type::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Tokenization::Event::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
