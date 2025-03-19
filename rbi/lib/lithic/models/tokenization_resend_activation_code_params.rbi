# typed: strong

module Lithic
  module Models
    class TokenizationResendActivationCodeParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The communication method that the user has selected to use to receive the
      #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
      sig { returns(T.nilable(Symbol)) }
      def activation_method_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def activation_method_type=(_)
      end

      sig do
        params(
          activation_method_type: Symbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(activation_method_type: nil, request_options: {})
      end

      sig { override.returns({activation_method_type: Symbol, request_options: Lithic::RequestOptions}) }
      def to_hash
      end

      # The communication method that the user has selected to use to receive the
      #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
      class ActivationMethodType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        EMAIL_TO_CARDHOLDER_ADDRESS = :EMAIL_TO_CARDHOLDER_ADDRESS
        TEXT_TO_CARDHOLDER_NUMBER = :TEXT_TO_CARDHOLDER_NUMBER
      end
    end
  end
end
