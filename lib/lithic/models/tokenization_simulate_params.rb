# frozen_string_literal: true

module Lithic
  module Models
    class TokenizationSimulateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

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
      required :tokenization_source, enum: -> { Lithic::Models::TokenizationSimulateParams::TokenizationSource }

      # @!attribute [r] account_score
      #   The account score (1-5) that represents how the Digital Wallet's view on how
      #     reputable an end user's account is.
      #
      #   @return [Integer, nil]
      optional :account_score, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :account_score

      # @!attribute [r] device_score
      #   The device score (1-5) that represents how the Digital Wallet's view on how
      #     reputable an end user's device is.
      #
      #   @return [Integer, nil]
      optional :device_score, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :device_score

      # @!attribute [r] entity
      #   Optional field to specify the token requestor name for a merchant token
      #     simulation. Ignored when tokenization_source is not MERCHANT.
      #
      #   @return [String, nil]
      optional :entity, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity

      # @!attribute [r] wallet_recommended_decision
      #   The decision that the Digital Wallet's recommend
      #
      #   @return [Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision, nil]
      optional :wallet_recommended_decision,
               enum: -> { Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision }

      # @!parse
      #   # @return [Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision]
      #   attr_writer :wallet_recommended_decision

      # @!parse
      #   # @param cvv [String]
      #   # @param expiration_date [String]
      #   # @param pan [String]
      #   # @param tokenization_source [Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource]
      #   # @param account_score [Integer]
      #   # @param device_score [Integer]
      #   # @param entity [String]
      #   # @param wallet_recommended_decision [Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     cvv:,
      #     expiration_date:,
      #     pan:,
      #     tokenization_source:,
      #     account_score: nil,
      #     device_score: nil,
      #     entity: nil,
      #     wallet_recommended_decision: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # The source of the tokenization request.
      module TokenizationSource
        extend Lithic::Enum

        APPLE_PAY = :APPLE_PAY
        GOOGLE = :GOOGLE
        SAMSUNG_PAY = :SAMSUNG_PAY
        MERCHANT = :MERCHANT

        finalize!
      end

      # The decision that the Digital Wallet's recommend
      module WalletRecommendedDecision
        extend Lithic::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED
        REQUIRE_ADDITIONAL_AUTHENTICATION = :REQUIRE_ADDITIONAL_AUTHENTICATION

        finalize!
      end
    end
  end
end
