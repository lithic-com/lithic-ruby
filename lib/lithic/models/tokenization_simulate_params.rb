# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#simulate
    class TokenizationSimulateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute cvv
      #   The three digit cvv for the card.
      #
      #   @return [String]
      required :cvv, String

      # @!attribute expiration_date
      #   The expiration date of the card in 'MM/YY' format.
      #
      #   @return [String]
      required :expiration_date, String

      # @!attribute pan
      #   The sixteen digit card number.
      #
      #   @return [String]
      required :pan, String

      # @!attribute tokenization_source
      #   The source of the tokenization request.
      #
      #   @return [Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource]
      required :tokenization_source, enum: -> { Lithic::TokenizationSimulateParams::TokenizationSource }

      # @!attribute account_score
      #   The account score (1-5) that represents how the Digital Wallet's view on how
      #   reputable an end user's account is.
      #
      #   @return [Integer, nil]
      optional :account_score, Integer

      # @!attribute device_score
      #   The device score (1-5) that represents how the Digital Wallet's view on how
      #   reputable an end user's device is.
      #
      #   @return [Integer, nil]
      optional :device_score, Integer

      # @!attribute entity
      #   Optional field to specify the token requestor name for a merchant token
      #   simulation. Ignored when tokenization_source is not MERCHANT.
      #
      #   @return [String, nil]
      optional :entity, String

      # @!attribute wallet_recommended_decision
      #   The decision that the Digital Wallet's recommend
      #
      #   @return [Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision, nil]
      optional :wallet_recommended_decision,
               enum: -> { Lithic::TokenizationSimulateParams::WalletRecommendedDecision }

      # @!method initialize(cvv:, expiration_date:, pan:, tokenization_source:, account_score: nil, device_score: nil, entity: nil, wallet_recommended_decision: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TokenizationSimulateParams} for more details.
      #
      #   @param cvv [String] The three digit cvv for the card.
      #
      #   @param expiration_date [String] The expiration date of the card in 'MM/YY' format.
      #
      #   @param pan [String] The sixteen digit card number.
      #
      #   @param tokenization_source [Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource] The source of the tokenization request.
      #
      #   @param account_score [Integer] The account score (1-5) that represents how the Digital Wallet's view on how rep
      #
      #   @param device_score [Integer] The device score (1-5) that represents how the Digital Wallet's view on how repu
      #
      #   @param entity [String] Optional field to specify the token requestor name for a merchant token simulati
      #
      #   @param wallet_recommended_decision [Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision] The decision that the Digital Wallet's recommend
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # The source of the tokenization request.
      module TokenizationSource
        extend Lithic::Internal::Type::Enum

        APPLE_PAY = :APPLE_PAY
        GOOGLE = :GOOGLE
        SAMSUNG_PAY = :SAMSUNG_PAY
        MERCHANT = :MERCHANT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The decision that the Digital Wallet's recommend
      module WalletRecommendedDecision
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED
        REQUIRE_ADDITIONAL_AUTHENTICATION = :REQUIRE_ADDITIONAL_AUTHENTICATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
