# frozen_string_literal: true

module Lithic
  module Resources
    class ThreeDS
      class Authentication
        # Get 3DS Authentication by token
        #
        # @param three_ds_authentication_token [String] 3DS Authentication Token
        #
        # @param params [Lithic::Models::ThreeDS::AuthenticationRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse]
        def retrieve(three_ds_authentication_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/three_ds_authentication/%0s", three_ds_authentication_token],
            model: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Simulates a 3DS authentication request from the payment network as if it came
        #   from an ACS. If you're configured for 3DS Customer Decisioning, simulating
        #   authentications requires your customer decisioning endpoint to be set up
        #   properly (respond with a valid JSON).
        #
        # @param params [Lithic::Models::ThreeDS::AuthenticationSimulateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant] :merchant
        #
        #   @option params [String] :pan Sixteen digit card number.
        #
        #   @option params [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction] :transaction
        #
        #   @option params [Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck] :card_expiry_check When set will use the following values as part of the Simulated Authentication.
        #     When not set defaults to MATCH
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::ThreeDS::AuthenticationSimulateResponse]
        def simulate(params)
          parsed, options = Lithic::Models::ThreeDS::AuthenticationSimulateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/three_ds_authentication/simulate",
            body: parsed,
            model: Lithic::Models::ThreeDS::AuthenticationSimulateResponse,
            options: options
          )
        end

        # Endpoint for simulating entering OTP into 3DS Challenge UI. A call to
        #   /v1/three_ds_authentication/simulate that resulted in triggered SMS-OTP
        #   challenge must precede. Only a single attempt is supported; upon entering OTP,
        #   the challenge is either approved or declined.
        #
        # @param params [Lithic::Models::ThreeDS::AuthenticationSimulateOtpEntryParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :token A unique token returned as part of a /v1/three_ds_authentication/simulate call
        #     that resulted in PENDING_CHALLENGE authentication result.
        #
        #   @option params [String] :otp The OTP entered by the cardholder
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def simulate_otp_entry(params)
          parsed, options = Lithic::Models::ThreeDS::AuthenticationSimulateOtpEntryParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/three_ds_decisioning/simulate/enter_otp",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
