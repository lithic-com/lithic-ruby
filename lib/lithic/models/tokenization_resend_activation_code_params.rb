# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#resend_activation_code
    class TokenizationResendActivationCodeParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] activation_method_type
      #   The communication method that the user has selected to use to receive the
      #     authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      #     = "EMAIL_TO_CARDHOLDER_ADDRESS"
      #
      #   @return [Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType, nil]
      optional :activation_method_type,
               enum: -> { Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType }

      # @!parse
      #   # @return [Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType]
      #   attr_writer :activation_method_type

      # @!parse
      #   # @param activation_method_type [Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(activation_method_type: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # The communication method that the user has selected to use to receive the
      #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
      module ActivationMethodType
        extend Lithic::Enum

        EMAIL_TO_CARDHOLDER_ADDRESS = :EMAIL_TO_CARDHOLDER_ADDRESS
        TEXT_TO_CARDHOLDER_NUMBER = :TEXT_TO_CARDHOLDER_NUMBER

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
