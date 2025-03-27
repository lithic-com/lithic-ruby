# typed: strong

module Lithic
  module Models
    class AccountHolderUpdateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #   users of businesses. Pass the account_token of the enrolled business associated
      #   with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # Account holder's email address. The primary purpose of this field is for
      #   cardholder identification and verification during the digital wallet
      #   tokenization process.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Account holder's phone number, entered in E.164 format. The primary purpose of
      #   this field is for cardholder identification and verification during the digital
      #   wallet tokenization process.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig do
        params(
          business_account_token: String,
          email: String,
          phone_number: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(business_account_token: nil, email: nil, phone_number: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              business_account_token: String,
              email: String,
              phone_number: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
