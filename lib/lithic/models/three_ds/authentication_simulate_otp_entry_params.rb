# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Authentication#simulate_otp_entry
      class AuthenticationSimulateOtpEntryParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

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

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
