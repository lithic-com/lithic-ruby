# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#return_
    class PaymentReturnParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute financial_account_token
      #   Globally unique identifier for the financial account
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute return_reason_code
      #   ACH return reason code indicating the reason for returning the payment.
      #   Supported codes include R01-R53 and R80-R85. For a complete list of return codes
      #   and their meanings, see
      #   [ACH Return Reasons](https://docs.lithic.com/docs/ach-overview#ach-return-reasons)
      #
      #   @return [String]
      required :return_reason_code, String

      # @!attribute addenda
      #   Optional additional information about the return. Limited to 44 characters
      #
      #   @return [String, nil]
      optional :addenda, String, nil?: true

      # @!attribute date_of_death
      #   Date of death in YYYY-MM-DD format. Required when using return codes **R14**
      #   (representative payee deceased) or **R15** (beneficiary or account holder
      #   deceased)
      #
      #   @return [Date, nil]
      optional :date_of_death, Date, nil?: true

      # @!attribute memo
      #   Optional memo for the return. Limited to 10 characters
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!method initialize(financial_account_token:, return_reason_code:, addenda: nil, date_of_death: nil, memo: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::PaymentReturnParams} for more details.
      #
      #   @param financial_account_token [String] Globally unique identifier for the financial account
      #
      #   @param return_reason_code [String] ACH return reason code indicating the reason for returning the payment. Supporte
      #
      #   @param addenda [String, nil] Optional additional information about the return. Limited to 44 characters
      #
      #   @param date_of_death [Date, nil] Date of death in YYYY-MM-DD format. Required when using return codes **R14** (re
      #
      #   @param memo [String, nil] Optional memo for the return. Limited to 10 characters
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
