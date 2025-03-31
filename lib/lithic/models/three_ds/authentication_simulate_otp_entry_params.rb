# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateOtpEntryParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute token
        #   A unique token returned as part of a /v1/three_ds_authentication/simulate call
        #     that resulted in PENDING_CHALLENGE authentication result.
        #
        #   @return [String]
        required :token, String

        # @!attribute otp
        #   The OTP entered by the cardholder
        #
        #   @return [String]
        required :otp, String

        # @!parse
        #   # @param token [String]
        #   # @param otp [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(token:, otp:, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
