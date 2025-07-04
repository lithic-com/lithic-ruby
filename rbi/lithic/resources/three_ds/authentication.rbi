# typed: strong

module Lithic
  module Resources
    class ThreeDS
      class Authentication
        # Get 3DS Authentication by token
        sig do
          params(
            three_ds_authentication_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse)
        end
        def retrieve(
          # Globally unique identifier for the 3DS authentication.
          three_ds_authentication_token,
          request_options: {}
        )
        end

        # Simulates a 3DS authentication request from the payment network as if it came
        # from an ACS. If you're configured for 3DS Customer Decisioning, simulating
        # authentications requires your customer decisioning endpoint to be set up
        # properly (respond with a valid JSON). If the authentication decision is to
        # challenge, ensure that the account holder associated with the card transaction
        # has a valid phone number configured to receive the OTP code via SMS.
        sig do
          params(
            merchant:
              Lithic::ThreeDS::AuthenticationSimulateParams::Merchant::OrHash,
            pan: String,
            transaction:
              Lithic::ThreeDS::AuthenticationSimulateParams::Transaction::OrHash,
            card_expiry_check:
              Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::ThreeDS::AuthenticationSimulateResponse)
        end
        def simulate(
          # Merchant information for the simulated transaction
          merchant:,
          # Sixteen digit card number.
          pan:,
          # Transaction details for the simulation
          transaction:,
          # When set will use the following values as part of the Simulated Authentication.
          # When not set defaults to MATCH
          card_expiry_check: nil,
          request_options: {}
        )
        end

        # Endpoint for simulating entering OTP into 3DS Challenge UI. A call to
        # [/v1/three_ds_authentication/simulate](https://docs.lithic.com/reference/postsimulateauthentication)
        # that resulted in triggered SMS-OTP challenge must precede. Only a single attempt
        # is supported; upon entering OTP, the challenge is either approved or declined.
        sig do
          params(
            token: String,
            otp: String,
            request_options: Lithic::RequestOptions::OrHash
          ).void
        end
        def simulate_otp_entry(
          # A unique token returned as part of a /v1/three_ds_authentication/simulate call
          # that resulted in PENDING_CHALLENGE authentication result.
          token:,
          # The OTP entered by the cardholder
          otp:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
