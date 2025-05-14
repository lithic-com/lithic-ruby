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

      sig do
        params(
          digital_wallet:
            Lithic::CardWebProvisionParams::DigitalWallet::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of digital wallet provider.
        digital_wallet: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            digital_wallet:
              Lithic::CardWebProvisionParams::DigitalWallet::OrSymbol,
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
