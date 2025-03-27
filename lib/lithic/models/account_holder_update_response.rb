# frozen_string_literal: true

module Lithic
  module Models
    class AccountHolderUpdateResponse < Lithic::BaseModel
      # @!attribute [r] token
      #   The token for the account holder that was updated
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] business_account_token
      #   Only applicable for customers using the KYC-Exempt workflow to enroll businesses
      #     with authorized users. Pass the account_token of the enrolled business
      #     associated with the AUTHORIZED_USER in this field.
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :business_account_token

      # @!attribute [r] email
      #   The newly updated email for the account holder
      #
      #   @return [String, nil]
      optional :email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :email

      # @!attribute [r] phone_number
      #   The newly updated phone_number for the account holder
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :phone_number

      # @!parse
      #   # @param token [String]
      #   # @param business_account_token [String]
      #   # @param email [String]
      #   # @param phone_number [String]
      #   #
      #   def initialize(token: nil, business_account_token: nil, email: nil, phone_number: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
