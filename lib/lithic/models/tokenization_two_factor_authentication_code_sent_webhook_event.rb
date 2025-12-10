# frozen_string_literal: true

module Lithic
  module Models
    class TokenizationTwoFactorAuthenticationCodeSentWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute account_token
      #   Unique identifier for the user tokenizing a card
      #
      #   @return [String]
      required :account_token, String

      # @!attribute activation_method
      #
      #   @return [Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod]
      required :activation_method,
               -> { Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod }

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
      #   @return [Symbol, :"tokenization.two_factor_authentication_code_sent"]
      required :event_type, const: :"tokenization.two_factor_authentication_code_sent"

      # @!attribute tokenization_token
      #   Unique identifier for the tokenization
      #
      #   @return [String]
      required :tokenization_token, String

      # @!method initialize(account_token:, activation_method:, card_token:, created:, tokenization_token:, event_type: :"tokenization.two_factor_authentication_code_sent")
      #   @param account_token [String] Unique identifier for the user tokenizing a card
      #
      #   @param activation_method [Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod]
      #
      #   @param card_token [String] Unique identifier for the card being tokenized
      #
      #   @param created [Time] Indicate when the request was received from Mastercard or Visa
      #
      #   @param tokenization_token [String] Unique identifier for the tokenization
      #
      #   @param event_type [Symbol, :"tokenization.two_factor_authentication_code_sent"] The type of event that occurred.

      # @see Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent#activation_method
      class ActivationMethod < Lithic::Internal::Type::BaseModel
        # @!attribute type
        #   The communication method that the user has selected to use to receive the
        #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
        #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
        #
        #   @return [Symbol, Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type]
        required :type,
                 enum: -> { Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type }

        # @!attribute value
        #   The location to which the authentication code was sent. The format depends on
        #   the ActivationMethod.Type field. If Type is Email, the Value will be the email
        #   address. If the Type is Sms, the Value will be the phone number.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod}
        #   for more details.
        #
        #   @param type [Symbol, Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod::Type] The communication method that the user has selected to use to receive the authen
        #
        #   @param value [String] The location to which the authentication code was sent.

        # The communication method that the user has selected to use to receive the
        # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
        # = "EMAIL_TO_CARDHOLDER_ADDRESS"
        #
        # @see Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent::ActivationMethod#type
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
