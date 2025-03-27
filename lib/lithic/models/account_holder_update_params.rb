# frozen_string_literal: true

module Lithic
  module Models
    class AccountHolderUpdateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] business_account_token
      #   Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #     users of businesses. Pass the account_token of the enrolled business associated
      #     with the AUTHORIZED_USER in this field.
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :business_account_token

      # @!attribute [r] email
      #   Account holder's email address. The primary purpose of this field is for
      #     cardholder identification and verification during the digital wallet
      #     tokenization process.
      #
      #   @return [String, nil]
      optional :email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :email

      # @!attribute [r] phone_number
      #   Account holder's phone number, entered in E.164 format. The primary purpose of
      #     this field is for cardholder identification and verification during the digital
      #     wallet tokenization process.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :phone_number

      # @!parse
      #   # @param business_account_token [String]
      #   # @param email [String]
      #   # @param phone_number [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(business_account_token: nil, email: nil, phone_number: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
