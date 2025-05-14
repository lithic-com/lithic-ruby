# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#web_provision
    class CardWebProvisionResponse < Lithic::Internal::Type::BaseModel
      # @!attribute jws
      #   JWS object required for handoff to Apple's script.
      #
      #   @return [Lithic::Models::CardWebProvisionResponse::Jws, nil]
      optional :jws, -> { Lithic::Models::CardWebProvisionResponse::Jws }

      # @!attribute state
      #   A unique identifier for the JWS object.
      #
      #   @return [String, nil]
      optional :state, String

      # @!method initialize(jws: nil, state: nil)
      #   @param jws [Lithic::Models::CardWebProvisionResponse::Jws] JWS object required for handoff to Apple's script.
      #
      #   @param state [String] A unique identifier for the JWS object.

      # @see Lithic::Models::CardWebProvisionResponse#jws
      class Jws < Lithic::Internal::Type::BaseModel
        # @!attribute header
        #   JWS unprotected headers containing header parameters that aren't
        #   integrity-protected by the JWS signature.
        #
        #   @return [Lithic::Models::CardWebProvisionResponse::Jws::Header, nil]
        optional :header, -> { Lithic::Models::CardWebProvisionResponse::Jws::Header }

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
        #   {Lithic::Models::CardWebProvisionResponse::Jws} for more details.
        #
        #   JWS object required for handoff to Apple's script.
        #
        #   @param header [Lithic::Models::CardWebProvisionResponse::Jws::Header] JWS unprotected headers containing header parameters that aren't integrity-prote
        #
        #   @param payload [String] Base64url encoded JSON object containing the provisioning payload.
        #
        #   @param protected [String] Base64url encoded JWS protected headers containing the header parameters that ar
        #
        #   @param signature [String] Base64url encoded signature of the JWS object.

        # @see Lithic::Models::CardWebProvisionResponse::Jws#header
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
  end
end
