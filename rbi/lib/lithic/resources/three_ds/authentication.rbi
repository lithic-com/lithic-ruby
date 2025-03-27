# typed: strong

module Lithic
  module Resources
    class ThreeDS
      class Authentication
        # Get 3DS Authentication by token
        sig do
          params(
            three_ds_authentication_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
          )
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse)
        end
        def retrieve(
          # 3DS Authentication Token
          three_ds_authentication_token,
          request_options: {}
        )
        end

        # Simulates a 3DS authentication request from the payment network as if it came
        #   from an ACS. If you're configured for 3DS Customer Decisioning, simulating
        #   authentications requires your customer decisioning endpoint to be set up
        #   properly (respond with a valid JSON).
        sig do
          params(
            merchant: T.any(Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant, Lithic::Util::AnyHash),
            pan: String,
            transaction: T.any(Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction, Lithic::Util::AnyHash),
            card_expiry_check: Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol,
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
          )
            .returns(Lithic::Models::ThreeDS::AuthenticationSimulateResponse)
        end
        def simulate(
          merchant:,
          # Sixteen digit card number.
          pan:,
          transaction:,
          # When set will use the following values as part of the Simulated Authentication.
          #   When not set defaults to MATCH
          card_expiry_check: nil,
          request_options: {}
        )
        end

        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
