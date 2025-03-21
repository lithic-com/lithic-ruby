# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateOtpEntryParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # A unique token returned as part of a /v1/three_ds_authentication/simulate call
        #   that resulted in PENDING_CHALLENGE authentication result.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # The OTP entered by the cardholder
        sig { returns(String) }
        def otp
        end

        sig { params(_: String).returns(String) }
        def otp=(_)
        end

        sig do
          params(
            token: String,
            otp: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(token:, otp:, request_options: {})
        end

        sig { override.returns({token: String, otp: String, request_options: Lithic::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
