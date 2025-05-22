# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#web_provision
    class CardWebProvisionParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute digital_wallet
      #   Name of digital wallet provider.
      #
      #   @return [Symbol, Lithic::Models::CardWebProvisionParams::DigitalWallet, nil]
      optional :digital_wallet, enum: -> { Lithic::CardWebProvisionParams::DigitalWallet }

      # @!method initialize(digital_wallet: nil, request_options: {})
      #   @param digital_wallet [Symbol, Lithic::Models::CardWebProvisionParams::DigitalWallet] Name of digital wallet provider.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Name of digital wallet provider.
      module DigitalWallet
        extend Lithic::Internal::Type::Enum

        APPLE_PAY = :APPLE_PAY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
