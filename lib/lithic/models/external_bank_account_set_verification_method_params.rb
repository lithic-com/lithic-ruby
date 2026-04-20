# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#set_verification_method
    class ExternalBankAccountSetVerificationMethodParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute external_bank_account_token
      #
      #   @return [String]
      required :external_bank_account_token, String

      # @!attribute verification_method
      #   The verification method to set for the external bank account
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountSetVerificationMethodParams::VerificationMethod]
      required :verification_method,
               enum: -> { Lithic::ExternalBankAccountSetVerificationMethodParams::VerificationMethod }

      # @!attribute financial_account_token
      #   The financial account token of the operating account to fund the micro deposits.
      #   Required when verification_method is MICRO_DEPOSIT or PRENOTE.
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!method initialize(external_bank_account_token:, verification_method:, financial_account_token: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::ExternalBankAccountSetVerificationMethodParams} for more
      #   details.
      #
      #   @param external_bank_account_token [String]
      #
      #   @param verification_method [Symbol, Lithic::Models::ExternalBankAccountSetVerificationMethodParams::VerificationMethod] The verification method to set for the external bank account
      #
      #   @param financial_account_token [String] The financial account token of the operating account to fund the micro deposits.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # The verification method to set for the external bank account
      module VerificationMethod
        extend Lithic::Internal::Type::Enum

        MICRO_DEPOSIT = :MICRO_DEPOSIT
        PRENOTE = :PRENOTE
        EXTERNALLY_VERIFIED = :EXTERNALLY_VERIFIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
