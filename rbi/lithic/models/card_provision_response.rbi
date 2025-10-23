# typed: strong

module Lithic
  module Models
    class CardProvisionResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::CardProvisionResponse,
            Lithic::Internal::AnyHash
          )
        end

      # Base64 encoded JSON payload representing a payment card that can be passed to a
      # device's digital wallet. Applies to Google and Samsung Pay wallets.
      sig do
        returns(
          T.nilable(
            Lithic::Models::CardProvisionResponse::ProvisioningPayload::Variants
          )
        )
      end
      attr_reader :provisioning_payload

      sig do
        params(
          provisioning_payload: T.any(String, Lithic::ProvisionResponse::OrHash)
        ).void
      end
      attr_writer :provisioning_payload

      sig do
        params(
          provisioning_payload: T.any(String, Lithic::ProvisionResponse::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Base64 encoded JSON payload representing a payment card that can be passed to a
        # device's digital wallet. Applies to Google and Samsung Pay wallets.
        provisioning_payload: nil
      )
      end

      sig do
        override.returns(
          {
            provisioning_payload:
              Lithic::Models::CardProvisionResponse::ProvisioningPayload::Variants
          }
        )
      end
      def to_hash
      end

      # Base64 encoded JSON payload representing a payment card that can be passed to a
      # device's digital wallet. Applies to Google and Samsung Pay wallets.
      module ProvisioningPayload
        extend Lithic::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Lithic::ProvisionResponse) }

        sig do
          override.returns(
            T::Array[
              Lithic::Models::CardProvisionResponse::ProvisioningPayload::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
