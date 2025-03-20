# typed: strong

module Lithic
  module Models
    class TokenizationResendActivationCodeParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The communication method that the user has selected to use to receive the
      #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
      sig { returns(T.nilable(Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol)) }
      def activation_method_type
      end

      sig do
        params(_: Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol)
          .returns(Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol)
      end
      def activation_method_type=(_)
      end

      sig do
        params(
          activation_method_type: Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(activation_method_type: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              activation_method_type: Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The communication method that the user has selected to use to receive the
      #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
      module ActivationMethodType
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::TaggedSymbol) }

        EMAIL_TO_CARDHOLDER_ADDRESS =
          T.let(
            :EMAIL_TO_CARDHOLDER_ADDRESS,
            Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::TaggedSymbol
          )
        TEXT_TO_CARDHOLDER_NUMBER =
          T.let(
            :TEXT_TO_CARDHOLDER_NUMBER,
            Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(
                T::Array[Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::TaggedSymbol]
              )
          end
          def values
          end
        end
      end
    end
  end
end
