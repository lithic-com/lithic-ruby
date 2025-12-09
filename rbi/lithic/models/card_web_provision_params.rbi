# typed: strong

module Lithic
  module Models
    class CardWebProvisionParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::CardWebProvisionParams, Lithic::Internal::AnyHash)
        end

      # Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
      # Provisioning device identifier required for the tokenization flow
      sig { returns(T.nilable(String)) }
      attr_reader :client_device_id

      sig { params(client_device_id: String).void }
      attr_writer :client_device_id

      # Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
      # Provisioning wallet account identifier required for the tokenization flow
      sig { returns(T.nilable(String)) }
      attr_reader :client_wallet_account_id

      sig { params(client_wallet_account_id: String).void }
      attr_writer :client_wallet_account_id

      # Name of digital wallet provider.
      sig do
        returns(
          T.nilable(Lithic::CardWebProvisionParams::DigitalWallet::OrSymbol)
        )
      end
      attr_reader :digital_wallet

      sig do
        params(
          digital_wallet:
            Lithic::CardWebProvisionParams::DigitalWallet::OrSymbol
        ).void
      end
      attr_writer :digital_wallet

      # Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
      # Provisioning session identifier required for the FPAN flow.
      sig { returns(T.nilable(String)) }
      attr_reader :server_session_id

      sig { params(server_session_id: String).void }
      attr_writer :server_session_id

      sig do
        params(
          client_device_id: String,
          client_wallet_account_id: String,
          digital_wallet:
            Lithic::CardWebProvisionParams::DigitalWallet::OrSymbol,
          server_session_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
        # Provisioning device identifier required for the tokenization flow
        client_device_id: nil,
        # Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
        # Provisioning wallet account identifier required for the tokenization flow
        client_wallet_account_id: nil,
        # Name of digital wallet provider.
        digital_wallet: nil,
        # Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
        # Provisioning session identifier required for the FPAN flow.
        server_session_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            client_device_id: String,
            client_wallet_account_id: String,
            digital_wallet:
              Lithic::CardWebProvisionParams::DigitalWallet::OrSymbol,
            server_session_id: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Name of digital wallet provider.
      module DigitalWallet
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardWebProvisionParams::DigitalWallet)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPLE_PAY =
          T.let(
            :APPLE_PAY,
            Lithic::CardWebProvisionParams::DigitalWallet::TaggedSymbol
          )
        GOOGLE_PAY =
          T.let(
            :GOOGLE_PAY,
            Lithic::CardWebProvisionParams::DigitalWallet::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardWebProvisionParams::DigitalWallet::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
