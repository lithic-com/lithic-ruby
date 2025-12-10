# typed: strong

module Lithic
  module Models
    class TokenizationTwoFactorAuthenticationCodeSentWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # Unique identifier for the user tokenizing a card
      sig { returns(String) }
      attr_accessor :account_token

      sig do
        returns(
          Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod
        )
      end
      attr_reader :activation_method

      sig do
        params(
          activation_method:
            Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::OrHash
        ).void
      end
      attr_writer :activation_method

      # Unique identifier for the card being tokenized
      sig { returns(String) }
      attr_accessor :card_token

      # Indicate when the request was received from Mastercard or Visa
      sig { returns(Time) }
      attr_accessor :created

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # Unique identifier for the tokenization
      sig { returns(String) }
      attr_accessor :tokenization_token

      sig do
        params(
          account_token: String,
          activation_method:
            Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::OrHash,
          card_token: String,
          created: Time,
          tokenization_token: String,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the user tokenizing a card
        account_token:,
        activation_method:,
        # Unique identifier for the card being tokenized
        card_token:,
        # Indicate when the request was received from Mastercard or Visa
        created:,
        # Unique identifier for the tokenization
        tokenization_token:,
        # The type of event that occurred.
        event_type: :"tokenization.two_factor_authentication_code_sent"
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            activation_method:
              Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod,
            card_token: String,
            created: Time,
            event_type: Symbol,
            tokenization_token: String
          }
        )
      end
      def to_hash
      end

      class ActivationMethod < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod,
              Lithic::Internal::AnyHash
            )
          end

        # The communication method that the user has selected to use to receive the
        # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
        # = "EMAIL_TO_CARDHOLDER_ADDRESS"
        sig do
          returns(
            Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The location to which the authentication code was sent. The format depends on
        # the ActivationMethod.Type field. If Type is Email, the Value will be the email
        # address. If the Type is Sms, the Value will be the phone number.
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(
            type:
              Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The communication method that the user has selected to use to receive the
          # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
          # = "EMAIL_TO_CARDHOLDER_ADDRESS"
          type:,
          # The location to which the authentication code was sent. The format depends on
          # the ActivationMethod.Type field. If Type is Email, the Value will be the email
          # address. If the Type is Sms, the Value will be the phone number.
          value:
        )
        end

        sig do
          override.returns(
            {
              type:
                Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type::TaggedSymbol,
              value: String
            }
          )
        end
        def to_hash
        end

        # The communication method that the user has selected to use to receive the
        # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
        # = "EMAIL_TO_CARDHOLDER_ADDRESS"
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_TO_CARDHOLDER_ADDRESS =
            T.let(
              :EMAIL_TO_CARDHOLDER_ADDRESS,
              Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type::TaggedSymbol
            )
          TEXT_TO_CARDHOLDER_NUMBER =
            T.let(
              :TEXT_TO_CARDHOLDER_NUMBER,
              Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
