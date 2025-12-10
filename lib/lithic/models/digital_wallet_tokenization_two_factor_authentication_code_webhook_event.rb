# frozen_string_literal: true

module Lithic
  module Models
    class DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute account_token
      #   Unique identifier for the user tokenizing a card
      #
      #   @return [String]
      required :account_token, String

      # @!attribute activation_method
      #
      #   @return [Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent::ActivationMethod]
      required :activation_method,
               -> { Lithic::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent::ActivationMethod }

      # @!attribute authentication_code
      #   Authentication code to provide to the user tokenizing a card.
      #
      #   @return [String]
      required :authentication_code, String

      # @!attribute card_token
      #   Unique identifier for the card being tokenized
      #
      #   @return [String]
      required :card_token, String

      # @!attribute created
      #   Indicate when the request was received from Mastercard or Visa
      #
      #   @return [Time]
      required :created, Time

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"digital_wallet.tokenization_two_factor_authentication_code"]
      required :event_type, const: :"digital_wallet.tokenization_two_factor_authentication_code"

      # @!attribute tokenization_token
      #   Unique identifier for the tokenization
      #
      #   @return [String]
      required :tokenization_token, String

      # @!method initialize(account_token:, activation_method:, authentication_code:, card_token:, created:, tokenization_token:, event_type: :"digital_wallet.tokenization_two_factor_authentication_code")
      #   @param account_token [String] Unique identifier for the user tokenizing a card
      #
      #   @param activation_method [Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent::ActivationMethod]
      #
      #   @param authentication_code [String] Authentication code to provide to the user tokenizing a card.
      #
      #   @param card_token [String] Unique identifier for the card being tokenized
      #
      #   @param created [Time] Indicate when the request was received from Mastercard or Visa
      #
      #   @param tokenization_token [String] Unique identifier for the tokenization
      #
      #   @param event_type [Symbol, :"digital_wallet.tokenization_two_factor_authentication_code"] The type of event that occurred.

      # @see Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent#activation_method
      class ActivationMethod < Lithic::Internal::Type::BaseModel
        # @!attribute type
        #   The communication method that the user has selected to use to receive the
        #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
        #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
        #
        #   @return [Symbol, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent::ActivationMethod::Type]
        required :type,
                 enum: -> { Lithic::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent::ActivationMethod::Type }

        # @!attribute value
        #   The location where the user wants to receive the authentication code. The format
        #   depends on the ActivationMethod.Type field. If Type is Email, the Value will be
        #   the email address. If the Type is Sms, the Value will be the phone number.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent::ActivationMethod}
        #   for more details.
        #
        #   @param type [Symbol, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent::ActivationMethod::Type] The communication method that the user has selected to use to receive the authen
        #
        #   @param value [String] The location where the user wants to receive the authentication code.

        # The communication method that the user has selected to use to receive the
        # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
        # = "EMAIL_TO_CARDHOLDER_ADDRESS"
        #
        # @see Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent::ActivationMethod#type
        module Type
          extend Lithic::Internal::Type::Enum

          EMAIL_TO_CARDHOLDER_ADDRESS = :EMAIL_TO_CARDHOLDER_ADDRESS
          TEXT_TO_CARDHOLDER_NUMBER = :TEXT_TO_CARDHOLDER_NUMBER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
