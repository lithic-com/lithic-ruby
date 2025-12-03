# typed: strong

module Lithic
  module Models
    class Tokenization < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Tokenization, Lithic::Internal::AnyHash) }

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
      sig { returns(Lithic::Tokenization::Status::TaggedSymbol) }
      attr_accessor :status

      # The entity that requested the tokenization. For digital wallets, this will be
      # one of the defined wallet types. For merchant tokenizations, this will be a
      # free-form merchant name string.
      sig { returns(Lithic::Tokenization::TokenRequestorName::Variants) }
      attr_accessor :token_requestor_name

      # The network's unique reference for the tokenization.
      sig { returns(String) }
      attr_accessor :token_unique_reference

      # The channel through which the tokenization was made.
      sig { returns(Lithic::Tokenization::TokenizationChannel::TaggedSymbol) }
      attr_accessor :tokenization_channel

      # Latest date and time when the tokenization was updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The device identifier associated with the tokenization.
      sig { returns(T.nilable(String)) }
      attr_accessor :device_id

      # Specifies the digital card art displayed in the user's digital wallet after
      # tokenization. This will be null if the tokenization was created without an
      # associated digital card art. See
      # [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      sig { returns(T.nilable(String)) }
      attr_accessor :digital_card_art_token

      # A list of events related to the tokenization.
      sig { returns(T.nilable(T::Array[Lithic::Tokenization::Event])) }
      attr_reader :events

      sig { params(events: T::Array[Lithic::Tokenization::Event::OrHash]).void }
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
          status: Lithic::Tokenization::Status::OrSymbol,
          token_requestor_name:
            T.any(Lithic::Tokenization::TokenRequestorName::OrSymbol, String),
          token_unique_reference: String,
          tokenization_channel:
            Lithic::Tokenization::TokenizationChannel::OrSymbol,
          updated_at: Time,
          device_id: T.nilable(String),
          digital_card_art_token: T.nilable(String),
          events: T::Array[Lithic::Tokenization::Event::OrHash],
          payment_account_reference_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier for a Tokenization
        token:,
        # The account token associated with the card being tokenized.
        account_token:,
        # The card token associated with the card being tokenized.
        card_token:,
        # Date and time when the tokenization first occurred. UTC time zone.
        created_at:,
        # The dynamic pan assigned to the token by the network.
        dpan:,
        # The status of the tokenization request
        status:,
        # The entity that requested the tokenization. For digital wallets, this will be
        # one of the defined wallet types. For merchant tokenizations, this will be a
        # free-form merchant name string.
        token_requestor_name:,
        # The network's unique reference for the tokenization.
        token_unique_reference:,
        # The channel through which the tokenization was made.
        tokenization_channel:,
        # Latest date and time when the tokenization was updated. UTC time zone.
        updated_at:,
        # The device identifier associated with the tokenization.
        device_id: nil,
        # Specifies the digital card art displayed in the user's digital wallet after
        # tokenization. This will be null if the tokenization was created without an
        # associated digital card art. See
        # [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
        digital_card_art_token: nil,
        # A list of events related to the tokenization.
        events: nil,
        # The network's unique reference for the card that is tokenized.
        payment_account_reference_id: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            account_token: String,
            card_token: String,
            created_at: Time,
            dpan: T.nilable(String),
            status: Lithic::Tokenization::Status::TaggedSymbol,
            token_requestor_name:
              Lithic::Tokenization::TokenRequestorName::Variants,
            token_unique_reference: String,
            tokenization_channel:
              Lithic::Tokenization::TokenizationChannel::TaggedSymbol,
            updated_at: Time,
            device_id: T.nilable(String),
            digital_card_art_token: T.nilable(String),
            events: T::Array[Lithic::Tokenization::Event],
            payment_account_reference_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The status of the tokenization request
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Tokenization::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:ACTIVE, Lithic::Tokenization::Status::TaggedSymbol)
        DEACTIVATED =
          T.let(:DEACTIVATED, Lithic::Tokenization::Status::TaggedSymbol)
        INACTIVE = T.let(:INACTIVE, Lithic::Tokenization::Status::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Tokenization::Status::TaggedSymbol)
        PENDING_2_FA =
          T.let(:PENDING_2FA, Lithic::Tokenization::Status::TaggedSymbol)
        PENDING_ACTIVATION =
          T.let(:PENDING_ACTIVATION, Lithic::Tokenization::Status::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, Lithic::Tokenization::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Tokenization::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # The entity that requested the tokenization. For digital wallets, this will be
      # one of the defined wallet types. For merchant tokenizations, this will be a
      # free-form merchant name string.
      module TokenRequestorName
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::Tokenization::TokenRequestorName::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[Lithic::Tokenization::TokenRequestorName::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::Tokenization::TokenRequestorName)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMAZON_ONE =
          T.let(
            :AMAZON_ONE,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        ANDROID_PAY =
          T.let(
            :ANDROID_PAY,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        APPLE_PAY =
          T.let(
            :APPLE_PAY,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        FACEBOOK =
          T.let(
            :FACEBOOK,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        FITBIT_PAY =
          T.let(
            :FITBIT_PAY,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        GARMIN_PAY =
          T.let(
            :GARMIN_PAY,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        GOOGLE_PAY =
          T.let(
            :GOOGLE_PAY,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        MICROSOFT_PAY =
          T.let(
            :MICROSOFT_PAY,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        NETFLIX =
          T.let(
            :NETFLIX,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        SAMSUNG_PAY =
          T.let(
            :SAMSUNG_PAY,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
        VISA_CHECKOUT =
          T.let(
            :VISA_CHECKOUT,
            Lithic::Tokenization::TokenRequestorName::TaggedSymbol
          )
      end

      # The channel through which the tokenization was made.
      module TokenizationChannel
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::Tokenization::TokenizationChannel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIGITAL_WALLET =
          T.let(
            :DIGITAL_WALLET,
            Lithic::Tokenization::TokenizationChannel::TaggedSymbol
          )
        MERCHANT =
          T.let(
            :MERCHANT,
            Lithic::Tokenization::TokenizationChannel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::Tokenization::TokenizationChannel::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Tokenization::Event, Lithic::Internal::AnyHash)
          end

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
        sig do
          returns(T.nilable(Lithic::Tokenization::Event::Result::TaggedSymbol))
        end
        attr_reader :result

        sig do
          params(result: Lithic::Tokenization::Event::Result::OrSymbol).void
        end
        attr_writer :result

        # Results from rules that were evaluated for this tokenization
        sig { returns(T.nilable(T::Array[Lithic::TokenizationRuleResult])) }
        attr_reader :rule_results

        sig do
          params(
            rule_results: T::Array[Lithic::TokenizationRuleResult::OrHash]
          ).void
        end
        attr_writer :rule_results

        # List of reasons why the tokenization was declined
        sig do
          returns(
            T.nilable(T::Array[Lithic::TokenizationDeclineReason::TaggedSymbol])
          )
        end
        attr_reader :tokenization_decline_reasons

        sig do
          params(
            tokenization_decline_reasons:
              T::Array[Lithic::TokenizationDeclineReason::OrSymbol]
          ).void
        end
        attr_writer :tokenization_decline_reasons

        # List of reasons why two-factor authentication was required
        sig do
          returns(
            T.nilable(T::Array[Lithic::TokenizationTfaReason::TaggedSymbol])
          )
        end
        attr_reader :tokenization_tfa_reasons

        sig do
          params(
            tokenization_tfa_reasons:
              T::Array[Lithic::TokenizationTfaReason::OrSymbol]
          ).void
        end
        attr_writer :tokenization_tfa_reasons

        # Enum representing the type of tokenization event that occurred
        sig do
          returns(T.nilable(Lithic::Tokenization::Event::Type::TaggedSymbol))
        end
        attr_reader :type

        sig { params(type: Lithic::Tokenization::Event::Type::OrSymbol).void }
        attr_writer :type

        sig do
          params(
            token: String,
            created_at: Time,
            result: Lithic::Tokenization::Event::Result::OrSymbol,
            rule_results: T::Array[Lithic::TokenizationRuleResult::OrHash],
            tokenization_decline_reasons:
              T::Array[Lithic::TokenizationDeclineReason::OrSymbol],
            tokenization_tfa_reasons:
              T::Array[Lithic::TokenizationTfaReason::OrSymbol],
            type: Lithic::Tokenization::Event::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for a Tokenization Event
          token: nil,
          # Date and time when the tokenization event first occurred. UTC time zone.
          created_at: nil,
          # Enum representing the result of the tokenization event
          result: nil,
          # Results from rules that were evaluated for this tokenization
          rule_results: nil,
          # List of reasons why the tokenization was declined
          tokenization_decline_reasons: nil,
          # List of reasons why two-factor authentication was required
          tokenization_tfa_reasons: nil,
          # Enum representing the type of tokenization event that occurred
          type: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              created_at: Time,
              result: Lithic::Tokenization::Event::Result::TaggedSymbol,
              rule_results: T::Array[Lithic::TokenizationRuleResult],
              tokenization_decline_reasons:
                T::Array[Lithic::TokenizationDeclineReason::TaggedSymbol],
              tokenization_tfa_reasons:
                T::Array[Lithic::TokenizationTfaReason::TaggedSymbol],
              type: Lithic::Tokenization::Event::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Enum representing the result of the tokenization event
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Tokenization::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(:APPROVED, Lithic::Tokenization::Event::Result::TaggedSymbol)
          DECLINED =
            T.let(:DECLINED, Lithic::Tokenization::Event::Result::TaggedSymbol)
          NOTIFICATION_DELIVERED =
            T.let(
              :NOTIFICATION_DELIVERED,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          REQUIRE_ADDITIONAL_AUTHENTICATION =
            T.let(
              :REQUIRE_ADDITIONAL_AUTHENTICATION,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          TOKEN_ACTIVATED =
            T.let(
              :TOKEN_ACTIVATED,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          TOKEN_CREATED =
            T.let(
              :TOKEN_CREATED,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          TOKEN_DEACTIVATED =
            T.let(
              :TOKEN_DEACTIVATED,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          TOKEN_DELETED_FROM_CONSUMER_APP =
            T.let(
              :TOKEN_DELETED_FROM_CONSUMER_APP,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          TOKEN_INACTIVE =
            T.let(
              :TOKEN_INACTIVE,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          TOKEN_STATE_UNKNOWN =
            T.let(
              :TOKEN_STATE_UNKNOWN,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          TOKEN_SUSPENDED =
            T.let(
              :TOKEN_SUSPENDED,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )
          TOKEN_UPDATED =
            T.let(
              :TOKEN_UPDATED,
              Lithic::Tokenization::Event::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Tokenization::Event::Result::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Enum representing the type of tokenization event that occurred
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Tokenization::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOKENIZATION_2_FA =
            T.let(
              :TOKENIZATION_2FA,
              Lithic::Tokenization::Event::Type::TaggedSymbol
            )
          TOKENIZATION_AUTHORIZATION =
            T.let(
              :TOKENIZATION_AUTHORIZATION,
              Lithic::Tokenization::Event::Type::TaggedSymbol
            )
          TOKENIZATION_DECISIONING =
            T.let(
              :TOKENIZATION_DECISIONING,
              Lithic::Tokenization::Event::Type::TaggedSymbol
            )
          TOKENIZATION_ELIGIBILITY_CHECK =
            T.let(
              :TOKENIZATION_ELIGIBILITY_CHECK,
              Lithic::Tokenization::Event::Type::TaggedSymbol
            )
          TOKENIZATION_UPDATED =
            T.let(
              :TOKENIZATION_UPDATED,
              Lithic::Tokenization::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Tokenization::Event::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
