# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::ThreeDS::AuthenticationSimulateResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the 3DS authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        sig { params(token: String).returns(T.attached_class) }
        def self.new(
          # Globally unique identifier for the 3DS authentication.
          token: nil
        )
        end

        sig { override.returns({ token: String }) }
        def to_hash
        end
      end
    end
  end
end
