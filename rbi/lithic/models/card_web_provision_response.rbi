# typed: strong

module Lithic
  module Models
    class CardWebProvisionResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::CardWebProvisionResponse,
            Lithic::Internal::AnyHash
          )
        end

      # JWS object required for handoff to Apple's script.
      sig { returns(T.nilable(Lithic::Models::CardWebProvisionResponse::Jws)) }
      attr_reader :jws

      sig do
        params(jws: Lithic::Models::CardWebProvisionResponse::Jws::OrHash).void
      end
      attr_writer :jws

      # A unique identifier for the JWS object.
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      sig do
        params(
          jws: Lithic::Models::CardWebProvisionResponse::Jws::OrHash,
          state: String
        ).returns(T.attached_class)
      end
      def self.new(
        # JWS object required for handoff to Apple's script.
        jws: nil,
        # A unique identifier for the JWS object.
        state: nil
      )
      end

      sig do
        override.returns(
          { jws: Lithic::Models::CardWebProvisionResponse::Jws, state: String }
        )
      end
      def to_hash
      end

      class Jws < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::CardWebProvisionResponse::Jws,
              Lithic::Internal::AnyHash
            )
          end

        # JWS unprotected headers containing header parameters that aren't
        # integrity-protected by the JWS signature.
        sig do
          returns(
            T.nilable(Lithic::Models::CardWebProvisionResponse::Jws::Header)
          )
        end
        attr_reader :header

        sig do
          params(
            header:
              Lithic::Models::CardWebProvisionResponse::Jws::Header::OrHash
          ).void
        end
        attr_writer :header

        # Base64url encoded JSON object containing the provisioning payload.
        sig { returns(T.nilable(String)) }
        attr_reader :payload

        sig { params(payload: String).void }
        attr_writer :payload

        # Base64url encoded JWS protected headers containing the header parameters that
        # are integrity-protected by the JWS signature.
        sig { returns(T.nilable(String)) }
        attr_reader :protected

        sig { params(protected: String).void }
        attr_writer :protected

        # Base64url encoded signature of the JWS object.
        sig { returns(T.nilable(String)) }
        attr_reader :signature

        sig { params(signature: String).void }
        attr_writer :signature

        # JWS object required for handoff to Apple's script.
        sig do
          params(
            header:
              Lithic::Models::CardWebProvisionResponse::Jws::Header::OrHash,
            payload: String,
            protected: String,
            signature: String
          ).returns(T.attached_class)
        end
        def self.new(
          # JWS unprotected headers containing header parameters that aren't
          # integrity-protected by the JWS signature.
          header: nil,
          # Base64url encoded JSON object containing the provisioning payload.
          payload: nil,
          # Base64url encoded JWS protected headers containing the header parameters that
          # are integrity-protected by the JWS signature.
          protected: nil,
          # Base64url encoded signature of the JWS object.
          signature: nil
        )
        end

        sig do
          override.returns(
            {
              header: Lithic::Models::CardWebProvisionResponse::Jws::Header,
              payload: String,
              protected: String,
              signature: String
            }
          )
        end
        def to_hash
        end

        class Header < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::CardWebProvisionResponse::Jws::Header,
                Lithic::Internal::AnyHash
              )
            end

          # The ID for the JWS Public Key of the key pair used to generate the signature.
          sig { returns(T.nilable(String)) }
          attr_reader :kid

          sig { params(kid: String).void }
          attr_writer :kid

          # JWS unprotected headers containing header parameters that aren't
          # integrity-protected by the JWS signature.
          sig { params(kid: String).returns(T.attached_class) }
          def self.new(
            # The ID for the JWS Public Key of the key pair used to generate the signature.
            kid: nil
          )
          end

          sig { override.returns({ kid: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
