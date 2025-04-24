# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#resend_activation_code
    class TokenizationResendActivationCodeParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute activation_method_type
      #   The communication method that the user has selected to use to receive the
      #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
      #
      #   @return [Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType, nil]
      optional :activation_method_type,
               enum: -> { Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType }

      # @!method initialize(activation_method_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TokenizationResendActivationCodeParams} for more details.
      #
      #   @param activation_method_type [Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType] The communication method that the user has selected to use to receive the authen
      #   ...
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # The communication method that the user has selected to use to receive the
      # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      # = "EMAIL_TO_CARDHOLDER_ADDRESS"
      module ActivationMethodType
        extend Lithic::Internal::Type::Enum

        EMAIL_TO_CARDHOLDER_ADDRESS = :EMAIL_TO_CARDHOLDER_ADDRESS
        TEXT_TO_CARDHOLDER_NUMBER = :TEXT_TO_CARDHOLDER_NUMBER

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
