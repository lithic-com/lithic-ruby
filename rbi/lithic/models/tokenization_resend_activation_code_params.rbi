# typed: strong

module Lithic
  module Models
    class TokenizationResendActivationCodeParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::TokenizationResendActivationCodeParams,
            Lithic::Internal::AnyHash
          )
        end

      # The communication method that the user has selected to use to receive the
      # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      # = "EMAIL_TO_CARDHOLDER_ADDRESS"
      sig do
        returns(
          T.nilable(
            Lithic::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol
          )
        )
      end
      attr_reader :activation_method_type

      sig do
        params(
          activation_method_type:
            Lithic::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol
        ).void
      end
      attr_writer :activation_method_type

      sig do
        params(
          activation_method_type:
            Lithic::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The communication method that the user has selected to use to receive the
        # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
        # = "EMAIL_TO_CARDHOLDER_ADDRESS"
        activation_method_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            activation_method_type:
              Lithic::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The communication method that the user has selected to use to receive the
      # authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      # = "EMAIL_TO_CARDHOLDER_ADDRESS"
      module ActivationMethodType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::TokenizationResendActivationCodeParams::ActivationMethodType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_TO_CARDHOLDER_ADDRESS =
          T.let(
            :EMAIL_TO_CARDHOLDER_ADDRESS,
            Lithic::TokenizationResendActivationCodeParams::ActivationMethodType::TaggedSymbol
          )
        TEXT_TO_CARDHOLDER_NUMBER =
          T.let(
            :TEXT_TO_CARDHOLDER_NUMBER,
            Lithic::TokenizationResendActivationCodeParams::ActivationMethodType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationResendActivationCodeParams::ActivationMethodType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
