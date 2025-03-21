# typed: strong

module Lithic
  module Models
    class TokenizationSimulateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The three digit cvv for the card.
      sig { returns(String) }
      def cvv
      end

      sig { params(_: String).returns(String) }
      def cvv=(_)
      end

      # The expiration date of the card in 'MM/YY' format.
      sig { returns(String) }
      def expiration_date
      end

      sig { params(_: String).returns(String) }
      def expiration_date=(_)
      end

      # The sixteen digit card number.
      sig { returns(String) }
      def pan
      end

      sig { params(_: String).returns(String) }
      def pan=(_)
      end

      # The source of the tokenization request.
      sig { returns(Lithic::Models::TokenizationSimulateParams::TokenizationSource::OrSymbol) }
      def tokenization_source
      end

      sig do
        params(_: Lithic::Models::TokenizationSimulateParams::TokenizationSource::OrSymbol)
          .returns(Lithic::Models::TokenizationSimulateParams::TokenizationSource::OrSymbol)
      end
      def tokenization_source=(_)
      end

      # The account score (1-5) that represents how the Digital Wallet's view on how
      #   reputable an end user's account is.
      sig { returns(T.nilable(Integer)) }
      def account_score
      end

      sig { params(_: Integer).returns(Integer) }
      def account_score=(_)
      end

      # The device score (1-5) that represents how the Digital Wallet's view on how
      #   reputable an end user's device is.
      sig { returns(T.nilable(Integer)) }
      def device_score
      end

      sig { params(_: Integer).returns(Integer) }
      def device_score=(_)
      end

      # Optional field to specify the token requestor name for a merchant token
      #   simulation. Ignored when tokenization_source is not MERCHANT.
      sig { returns(T.nilable(String)) }
      def entity
      end

      sig { params(_: String).returns(String) }
      def entity=(_)
      end

      # The decision that the Digital Wallet's recommend
      sig { returns(T.nilable(Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::OrSymbol)) }
      def wallet_recommended_decision
      end

      sig do
        params(_: Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::OrSymbol)
          .returns(Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::OrSymbol)
      end
      def wallet_recommended_decision=(_)
      end

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
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        cvv:,
        expiration_date:,
        pan:,
        tokenization_source:,
        account_score: nil,
        device_score: nil,
        entity: nil,
        wallet_recommended_decision: nil,
        request_options: {}
      )
      end

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
      def to_hash
      end

      # The source of the tokenization request.
      module TokenizationSource
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol) }

        APPLE_PAY =
          T.let(:APPLE_PAY, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol)
        GOOGLE = T.let(:GOOGLE, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol)
        SAMSUNG_PAY =
          T.let(:SAMSUNG_PAY, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol)
        MERCHANT = T.let(:MERCHANT, Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::TokenizationSimulateParams::TokenizationSource::TaggedSymbol]) }
          def values
          end
        end
      end

      # The decision that the Digital Wallet's recommend
      module WalletRecommendedDecision
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol) }

        APPROVED =
          T.let(:APPROVED, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol)
        REQUIRE_ADDITIONAL_AUTHENTICATION =
          T.let(
            :REQUIRE_ADDITIONAL_AUTHENTICATION,
            Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(T::Array[Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
