# typed: strong

module Lithic
  module Models
    class TokenizationSimulateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # The three digit cvv for the card.
      sig { returns(String) }
      attr_accessor :cvv

      # The expiration date of the card in 'MM/YY' format.
      sig { returns(String) }
      attr_accessor :expiration_date

      # The sixteen digit card number.
      sig { returns(String) }
      attr_accessor :pan

      # The source of the tokenization request.
      sig { returns(Lithic::Models::TokenizationSimulateParams::TokenizationSource::OrSymbol) }
      attr_accessor :tokenization_source

      # The account score (1-5) that represents how the Digital Wallet's view on how
      # reputable an end user's account is.
      sig { returns(T.nilable(Integer)) }
      attr_reader :account_score

      sig { params(account_score: Integer).void }
      attr_writer :account_score

      # The device score (1-5) that represents how the Digital Wallet's view on how
      # reputable an end user's device is.
      sig { returns(T.nilable(Integer)) }
      attr_reader :device_score

      sig { params(device_score: Integer).void }
      attr_writer :device_score

      # Optional field to specify the token requestor name for a merchant token
      # simulation. Ignored when tokenization_source is not MERCHANT.
      sig { returns(T.nilable(String)) }
      attr_reader :entity

      sig { params(entity: String).void }
      attr_writer :entity

      # The decision that the Digital Wallet's recommend
      sig { returns(T.nilable(Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::OrSymbol)) }
      attr_reader :wallet_recommended_decision

      sig do
        params(
          wallet_recommended_decision: Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::OrSymbol
        )
          .void
      end
      attr_writer :wallet_recommended_decision

      sig do
        params(
          cvv: String,
          expiration_date: String,
          pan: String,
          tokenization_source: Lithic::Models::TokenizationSimulateParams::TokenizationSource::OrSymbol,
          account_score: Integer,
          device_score: Integer,
          entity: String,
          wallet_recommended_decision: Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The three digit cvv for the card.
        cvv:,
        # The expiration date of the card in 'MM/YY' format.
        expiration_date:,
        # The sixteen digit card number.
        pan:,
        # The source of the tokenization request.
        tokenization_source:,
        # The account score (1-5) that represents how the Digital Wallet's view on how
        # reputable an end user's account is.
        account_score: nil,
        # The device score (1-5) that represents how the Digital Wallet's view on how
        # reputable an end user's device is.
        device_score: nil,
        # Optional field to specify the token requestor name for a merchant token
        # simulation. Ignored when tokenization_source is not MERCHANT.
        entity: nil,
        # The decision that the Digital Wallet's recommend
        wallet_recommended_decision: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              cvv: String,
              expiration_date: String,
              pan: String,
              tokenization_source: Lithic::Models::TokenizationSimulateParams::TokenizationSource::OrSymbol,
              account_score: Integer,
              device_score: Integer,
              entity: String,
              wallet_recommended_decision: Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

      # The source of the tokenization request.
      module TokenizationSource
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPLE_PAY =
          T.let(:APPLE_PAY, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol)
        GOOGLE = T.let(:GOOGLE, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol)
        SAMSUNG_PAY =
          T.let(:SAMSUNG_PAY, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol)
        MERCHANT = T.let(:MERCHANT, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol]) }
        def self.values; end
      end

      # The decision that the Digital Wallet's recommend
      module WalletRecommendedDecision
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol)
        REQUIRE_ADDITIONAL_AUTHENTICATION =
          T.let(
            :REQUIRE_ADDITIONAL_AUTHENTICATION,
            Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol
          )

        sig do
          override
            .returns(T::Array[Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end
