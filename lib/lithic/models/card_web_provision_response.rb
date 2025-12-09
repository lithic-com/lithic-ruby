# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#web_provision
    module CardWebProvisionResponse
      extend Lithic::Internal::Type::Union

      variant -> { Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse }

      variant -> { Lithic::Models::CardWebProvisionResponse::GoogleWebPushProvisioningResponse }

      class AppleWebPushProvisioningResponse < Lithic::Internal::Type::BaseModel
        # @!attribute jws
        #   JWS object required for handoff to Apple's script.
        #
        #   @return [Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse::Jws, nil]
        optional :jws, -> { Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse::Jws }

        # @!attribute state
        #   A unique identifier for the JWS object.
        #
        #   @return [String, nil]
        optional :state, String

        # @!method initialize(jws: nil, state: nil)
        #   @param jws [Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse::Jws] JWS object required for handoff to Apple's script.
        #
        #   @param state [String] A unique identifier for the JWS object.

        # @see Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse#jws
        class Jws < Lithic::Internal::Type::BaseModel
          # @!attribute header
          #   JWS unprotected headers containing header parameters that aren't
          #   integrity-protected by the JWS signature.
          #
          #   @return [Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse::Jws::Header, nil]
          optional :header,
                   -> { Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse::Jws::Header }

          # @!attribute payload
          #   Base64url encoded JSON object containing the provisioning payload.
          #
          #   @return [String, nil]
          optional :payload, String

          # @!attribute protected
          #   Base64url encoded JWS protected headers containing the header parameters that
          #   are integrity-protected by the JWS signature.
          #
          #   @return [String, nil]
          optional :protected, String

          # @!attribute signature
          #   Base64url encoded signature of the JWS object.
          #
          #   @return [String, nil]
          optional :signature, String

          # @!method initialize(header: nil, payload: nil, protected: nil, signature: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse::Jws}
          #   for more details.
          #
          #   JWS object required for handoff to Apple's script.
          #
          #   @param header [Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse::Jws::Header] JWS unprotected headers containing header parameters that aren't integrity-prote
          #
          #   @param payload [String] Base64url encoded JSON object containing the provisioning payload.
          #
          #   @param protected [String] Base64url encoded JWS protected headers containing the header parameters that ar
          #
          #   @param signature [String] Base64url encoded signature of the JWS object.

          # @see Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse::Jws#header
          class Header < Lithic::Internal::Type::BaseModel
            # @!attribute kid
            #   The ID for the JWS Public Key of the key pair used to generate the signature.
            #
            #   @return [String, nil]
            optional :kid, String

            # @!method initialize(kid: nil)
            #   JWS unprotected headers containing header parameters that aren't
            #   integrity-protected by the JWS signature.
            #
            #   @param kid [String] The ID for the JWS Public Key of the key pair used to generate the signature.
          end
        end
      end

      class GoogleWebPushProvisioningResponse < Lithic::Internal::Type::BaseModel
        # @!attribute google_opc
        #   A base64 encoded and encrypted payload representing card data for the Google Pay
        #   UWPP FPAN flow.
        #
        #   @return [String, nil]
        optional :google_opc, String

        # @!attribute tsp_opc
        #   A base64 encoded and encrypted payload representing card data for the Google Pay
        #   UWPP tokenization flow.
        #
        #   @return [String, nil]
        optional :tsp_opc, String

        # @!method initialize(google_opc: nil, tsp_opc: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::CardWebProvisionResponse::GoogleWebPushProvisioningResponse}
        #   for more details.
        #
        #   @param google_opc [String] A base64 encoded and encrypted payload representing card data for the Google Pay
        #
        #   @param tsp_opc [String] A base64 encoded and encrypted payload representing card data for the Google Pay
      end

      # @!method self.variants
      #   @return [Array(Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse, Lithic::Models::CardWebProvisionResponse::GoogleWebPushProvisioningResponse)]
    end
  end
end
