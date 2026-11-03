# typed: strong

module Lithic
  module Models
    class TokenizationSelectTfaMethodParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::TokenizationSelectTfaMethodParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :tokenization_token

      # An available method from the tokenization's list of tfa_methods
      sig do
        returns(Lithic::TokenizationSelectTfaMethodParams::Method::OrSymbol)
      end
      attr_accessor :method_

      sig do
        params(
          tokenization_token: String,
          method_: Lithic::TokenizationSelectTfaMethodParams::Method::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        tokenization_token:,
        # An available method from the tokenization's list of tfa_methods
        method_:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            tokenization_token: String,
            method_:
              Lithic::TokenizationSelectTfaMethodParams::Method::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # An available method from the tokenization's list of tfa_methods
      module Method
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TokenizationSelectTfaMethodParams::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :SMS,
            Lithic::TokenizationSelectTfaMethodParams::Method::TaggedSymbol
          )
        EMAIL =
          T.let(
            :EMAIL,
            Lithic::TokenizationSelectTfaMethodParams::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationSelectTfaMethodParams::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
