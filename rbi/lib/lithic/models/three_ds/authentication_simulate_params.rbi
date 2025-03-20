# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        sig { returns(Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant) }
        def merchant
        end

        sig do
          params(_: T.any(Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant, Lithic::Util::AnyHash))
        end
        def merchant=(_)
        end

        # Sixteen digit card number.
        sig { returns(String) }
        def pan
        end

        sig { params(_: String).returns(String) }
        def pan=(_)
        end

        sig { returns(Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction) }
        def transaction
        end

        sig do
          params(
            _: T.any(Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction, Lithic::Util::AnyHash)
          )
            .returns(T.any(Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction, Lithic::Util::AnyHash))
        end
        def transaction=(_)
        end

        # When set will use the following values as part of the Simulated Authentication.
        #   When not set defaults to MATCH
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol)) }
        def card_expiry_check
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol)
            .returns(Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol)
        end
        def card_expiry_check=(_)
        end

        sig do
          params(
            merchant: Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant,
            pan: String,
            transaction: Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction,
            card_expiry_check: Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol,
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(merchant:, pan:, transaction:, card_expiry_check: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                merchant: Lithic::Models::ThreeDS::AuthenticationSimulateParams::Merchant,
                pan: String,
                transaction: Lithic::Models::ThreeDS::AuthenticationSimulateParams::Transaction,
                card_expiry_check: Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol,
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Merchant < Lithic::BaseModel
          # Unique identifier to identify the payment card acceptor. Corresponds to
          #   `merchant_acceptor_id` in authorization.
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
          #   (e.g. USA)
          sig { returns(String) }
          def country
          end

          sig { params(_: String).returns(String) }
          def country=(_)
          end

          # Merchant category code for the transaction to be simulated. A four-digit number
          #   listed in ISO 18245. Supported merchant category codes can be found
          #   [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
          sig { returns(String) }
          def mcc
          end

          sig { params(_: String).returns(String) }
          def mcc=(_)
          end

          # Merchant descriptor, corresponds to `descriptor` in authorization. If CHALLENGE
          #   keyword is included, Lithic will trigger a challenge.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, country: String, mcc: String, name: String).returns(T.attached_class) }
          def self.new(id:, country:, mcc:, name:)
          end

          sig { override.returns({id: String, country: String, mcc: String, name: String}) }
          def to_hash
          end
        end

        class Transaction < Lithic::BaseModel
          # Amount (in cents) to authenticate.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # 3-character alphabetic ISO 4217 currency code.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(amount: Integer, currency: String).returns(T.attached_class) }
          def self.new(amount:, currency:)
          end

          sig { override.returns({amount: Integer, currency: String}) }
          def to_hash
          end
        end

        # When set will use the following values as part of the Simulated Authentication.
        #   When not set defaults to MATCH
        module CardExpiryCheck
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::TaggedSymbol) }

          MATCH = T.let(:MATCH, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol)
          MISMATCH =
            T.let(:MISMATCH, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol)
          NOT_PRESENT =
            T.let(:NOT_PRESENT, Lithic::Models::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol)
        end
      end
    end
  end
end
