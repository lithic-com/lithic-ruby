# typed: strong

module Lithic
  module Models
    class TokenInfo < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::TokenInfo, Lithic::Internal::AnyHash) }

      # The wallet_type field will indicate the source of the token. Possible token
      # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
      # tokenization, and “other” sources like in-flight commerce. Masterpass is not
      # currently supported and is included for future use.
      sig { returns(Lithic::TokenInfo::WalletType::TaggedSymbol) }
      attr_accessor :wallet_type

      sig do
        params(wallet_type: Lithic::TokenInfo::WalletType::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # The wallet_type field will indicate the source of the token. Possible token
        # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
        # tokenization, and “other” sources like in-flight commerce. Masterpass is not
        # currently supported and is included for future use.
        wallet_type:
      )
      end

      sig do
        override.returns(
          { wallet_type: Lithic::TokenInfo::WalletType::TaggedSymbol }
        )
      end
      def to_hash
      end

      # The wallet_type field will indicate the source of the token. Possible token
      # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
      # tokenization, and “other” sources like in-flight commerce. Masterpass is not
      # currently supported and is included for future use.
      module WalletType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::TokenInfo::WalletType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPLE_PAY =
          T.let(:APPLE_PAY, Lithic::TokenInfo::WalletType::TaggedSymbol)
        GOOGLE_PAY =
          T.let(:GOOGLE_PAY, Lithic::TokenInfo::WalletType::TaggedSymbol)
        MASTERPASS =
          T.let(:MASTERPASS, Lithic::TokenInfo::WalletType::TaggedSymbol)
        MERCHANT = T.let(:MERCHANT, Lithic::TokenInfo::WalletType::TaggedSymbol)
        OTHER = T.let(:OTHER, Lithic::TokenInfo::WalletType::TaggedSymbol)
        SAMSUNG_PAY =
          T.let(:SAMSUNG_PAY, Lithic::TokenInfo::WalletType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::TokenInfo::WalletType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
