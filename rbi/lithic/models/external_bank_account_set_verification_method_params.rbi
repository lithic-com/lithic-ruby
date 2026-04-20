# typed: strong

module Lithic
  module Models
    class ExternalBankAccountSetVerificationMethodParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::ExternalBankAccountSetVerificationMethodParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :external_bank_account_token

      # The verification method to set for the external bank account
      sig do
        returns(
          Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod::OrSymbol
        )
      end
      attr_accessor :verification_method

      # The financial account token of the operating account to fund the micro deposits.
      # Required when verification_method is MICRO_DEPOSIT or PRENOTE.
      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      sig do
        params(
          external_bank_account_token: String,
          verification_method:
            Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod::OrSymbol,
          financial_account_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        external_bank_account_token:,
        # The verification method to set for the external bank account
        verification_method:,
        # The financial account token of the operating account to fund the micro deposits.
        # Required when verification_method is MICRO_DEPOSIT or PRENOTE.
        financial_account_token: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            external_bank_account_token: String,
            verification_method:
              Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod::OrSymbol,
            financial_account_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The verification method to set for the external bank account
      module VerificationMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MICRO_DEPOSIT =
          T.let(
            :MICRO_DEPOSIT,
            Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod::TaggedSymbol
          )
        PRENOTE =
          T.let(
            :PRENOTE,
            Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod::TaggedSymbol
          )
        EXTERNALLY_VERIFIED =
          T.let(
            :EXTERNALLY_VERIFIED,
            Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
