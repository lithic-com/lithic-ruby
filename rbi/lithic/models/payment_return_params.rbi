# typed: strong

module Lithic
  module Models
    class PaymentReturnParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::PaymentReturnParams, Lithic::Internal::AnyHash)
        end

      # Globally unique identifier for the financial account
      sig { returns(String) }
      attr_accessor :financial_account_token

      # ACH return reason code indicating the reason for returning the payment.
      # Supported codes include R01-R53 and R80-R85. For a complete list of return codes
      # and their meanings, see
      # [ACH Return Reasons](https://docs.lithic.com/docs/ach-overview#ach-return-reasons)
      sig { returns(String) }
      attr_accessor :return_reason_code

      # Optional additional information about the return. Limited to 44 characters
      sig { returns(T.nilable(String)) }
      attr_accessor :addenda

      # Date of death in YYYY-MM-DD format. Required when using return codes **R14**
      # (representative payee deceased) or **R15** (beneficiary or account holder
      # deceased)
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_death

      # Optional memo for the return. Limited to 10 characters
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      sig do
        params(
          financial_account_token: String,
          return_reason_code: String,
          addenda: T.nilable(String),
          date_of_death: T.nilable(Date),
          memo: T.nilable(String),
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier for the financial account
        financial_account_token:,
        # ACH return reason code indicating the reason for returning the payment.
        # Supported codes include R01-R53 and R80-R85. For a complete list of return codes
        # and their meanings, see
        # [ACH Return Reasons](https://docs.lithic.com/docs/ach-overview#ach-return-reasons)
        return_reason_code:,
        # Optional additional information about the return. Limited to 44 characters
        addenda: nil,
        # Date of death in YYYY-MM-DD format. Required when using return codes **R14**
        # (representative payee deceased) or **R15** (beneficiary or account holder
        # deceased)
        date_of_death: nil,
        # Optional memo for the return. Limited to 10 characters
        memo: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            financial_account_token: String,
            return_reason_code: String,
            addenda: T.nilable(String),
            date_of_death: T.nilable(Date),
            memo: T.nilable(String),
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
