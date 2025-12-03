# frozen_string_literal: true

module Lithic
  module Models
    class TokenInfo < Lithic::Internal::Type::BaseModel
      # @!attribute wallet_type
      #   The wallet_type field will indicate the source of the token. Possible token
      #   sources include digital wallets (Apple, Google, or Samsung Pay), merchant
      #   tokenization, and “other” sources like in-flight commerce. Masterpass is not
      #   currently supported and is included for future use.
      #
      #   @return [Symbol, Lithic::Models::TokenInfo::WalletType]
      required :wallet_type, enum: -> { Lithic::TokenInfo::WalletType }

      # @!method initialize(wallet_type:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TokenInfo} for more details.
      #
      #   @param wallet_type [Symbol, Lithic::Models::TokenInfo::WalletType] The wallet_type field will indicate the source of the token. Possible token sour

      # The wallet_type field will indicate the source of the token. Possible token
      # sources include digital wallets (Apple, Google, or Samsung Pay), merchant
      # tokenization, and “other” sources like in-flight commerce. Masterpass is not
      # currently supported and is included for future use.
      #
      # @see Lithic::Models::TokenInfo#wallet_type
      module WalletType
        extend Lithic::Internal::Type::Enum

        APPLE_PAY = :APPLE_PAY
        GOOGLE_PAY = :GOOGLE_PAY
        MASTERPASS = :MASTERPASS
        MERCHANT = :MERCHANT
        OTHER = :OTHER
        SAMSUNG_PAY = :SAMSUNG_PAY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
