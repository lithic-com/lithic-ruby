# typed: strong

module Lithic
  module Models
    class AccountHolderUpdateResponse < Lithic::BaseModel
      # The token for the account holder that was updated
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Only applicable for customers using the KYC-Exempt workflow to enroll businesses
      #   with authorized users. Pass the account_token of the enrolled business
      #   associated with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # The newly updated email for the account holder
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # The newly updated phone_number for the account holder
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig do
        params(token: String, business_account_token: String, email: String, phone_number: String)
          .returns(T.attached_class)
      end
      def self.new(token: nil, business_account_token: nil, email: nil, phone_number: nil)
      end

      sig do
        override.returns({token: String, business_account_token: String, email: String, phone_number: String})
      end
      def to_hash
      end
    end
  end
end
