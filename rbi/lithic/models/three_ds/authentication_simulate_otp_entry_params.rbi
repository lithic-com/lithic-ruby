# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateOtpEntryParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        # A unique token returned as part of a /v1/three_ds_authentication/simulate call
        # that resulted in PENDING_CHALLENGE authentication result.
        sig { returns(String) }
        attr_accessor :token

        # The OTP entered by the cardholder
        sig { returns(String) }
        attr_accessor :otp

        sig do
          params(
            token: String,
            otp: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique token returned as part of a /v1/three_ds_authentication/simulate call
          # that resulted in PENDING_CHALLENGE authentication result.
          token:,
          # The OTP entered by the cardholder
          otp:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              token: String,
              otp: String,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
