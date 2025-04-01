# frozen_string_literal: true

module Lithic
  module Resources
    class ThreeDS
      class Authentication
        # Get 3DS Authentication by token
        #
        # @overload retrieve(three_ds_authentication_token, request_options: {})
        #
        # @param three_ds_authentication_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse]
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveParams
        def retrieve(three_ds_authentication_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/three_ds_authentication/%1$s", three_ds_authentication_token],
            model: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Simulates a 3DS authentication request from the payment network as if it came
        #   from an ACS. If you're configured for 3DS Customer Decisioning, simulating
        #   authentications requires your customer decisioning endpoint to be set up
        #   properly (respond with a valid JSON).
        #
        # @overload simulate(merchant:, pan:, transaction:, card_expiry_check: nil, request_options: {})
        #
        # @param merchant [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant]
        # @param pan [String]
        # @param transaction [Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction]
        # @param card_expiry_check [Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::ThreeDS::AuthenticationSimulateResponse]
        #
        # @see Lithic::Models::ThreeDS::AuthenticationSimulateParams
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
        # @overload simulate_otp_entry(token:, otp:, request_options: {})
        #
        # @param token [String]
        # @param otp [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::ThreeDS::AuthenticationSimulateOtpEntryParams
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

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
