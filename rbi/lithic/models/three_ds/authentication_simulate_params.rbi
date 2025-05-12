# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::ThreeDS::AuthenticationSimulateParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(Lithic::ThreeDS::AuthenticationSimulateParams::Merchant) }
        attr_reader :merchant

        sig do
          params(
            merchant:
              Lithic::ThreeDS::AuthenticationSimulateParams::Merchant::OrHash
          ).void
        end
        attr_writer :merchant

        # Sixteen digit card number.
        sig { returns(String) }
        attr_accessor :pan

        sig do
          returns(Lithic::ThreeDS::AuthenticationSimulateParams::Transaction)
        end
        attr_reader :transaction

        sig do
          params(
            transaction:
              Lithic::ThreeDS::AuthenticationSimulateParams::Transaction::OrHash
          ).void
        end
        attr_writer :transaction

        # When set will use the following values as part of the Simulated Authentication.
        # When not set defaults to MATCH
        sig do
          returns(
            T.nilable(
              Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol
            )
          )
        end
        attr_reader :card_expiry_check

        sig do
          params(
            card_expiry_check:
              Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol
          ).void
        end
        attr_writer :card_expiry_check

        sig do
          params(
            merchant:
              Lithic::ThreeDS::AuthenticationSimulateParams::Merchant::OrHash,
            pan: String,
            transaction:
              Lithic::ThreeDS::AuthenticationSimulateParams::Transaction::OrHash,
            card_expiry_check:
              Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          merchant:,
          # Sixteen digit card number.
          pan:,
          transaction:,
          # When set will use the following values as part of the Simulated Authentication.
          # When not set defaults to MATCH
          card_expiry_check: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              merchant: Lithic::ThreeDS::AuthenticationSimulateParams::Merchant,
              pan: String,
              transaction:
                Lithic::ThreeDS::AuthenticationSimulateParams::Transaction,
              card_expiry_check:
                Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Merchant < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::ThreeDS::AuthenticationSimulateParams::Merchant,
                Lithic::Internal::AnyHash
              )
            end

          # Unique identifier to identify the payment card acceptor. Corresponds to
          # `merchant_acceptor_id` in authorization.
          sig { returns(String) }
          attr_accessor :id

          # Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
          # (e.g. USA)
          sig { returns(String) }
          attr_accessor :country

          # Merchant category code for the transaction to be simulated. A four-digit number
          # listed in ISO 18245. Supported merchant category codes can be found
          # [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
          sig { returns(String) }
          attr_accessor :mcc

          # Merchant descriptor, corresponds to `descriptor` in authorization. If CHALLENGE
          # keyword is included, Lithic will trigger a challenge.
          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              id: String,
              country: String,
              mcc: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier to identify the payment card acceptor. Corresponds to
            # `merchant_acceptor_id` in authorization.
            id:,
            # Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
            # (e.g. USA)
            country:,
            # Merchant category code for the transaction to be simulated. A four-digit number
            # listed in ISO 18245. Supported merchant category codes can be found
            # [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
            mcc:,
            # Merchant descriptor, corresponds to `descriptor` in authorization. If CHALLENGE
            # keyword is included, Lithic will trigger a challenge.
            name:
          )
          end

          sig do
            override.returns(
              { id: String, country: String, mcc: String, name: String }
            )
          end
          def to_hash
          end
        end

        class Transaction < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::ThreeDS::AuthenticationSimulateParams::Transaction,
                Lithic::Internal::AnyHash
              )
            end

          # Amount (in cents) to authenticate.
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency code.
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(amount: Integer, currency: String).returns(T.attached_class)
          end
          def self.new(
            # Amount (in cents) to authenticate.
            amount:,
            # 3-character alphabetic ISO 4217 currency code.
            currency:
          )
          end

          sig { override.returns({ amount: Integer, currency: String }) }
          def to_hash
          end
        end

        # When set will use the following values as part of the Simulated Authentication.
        # When not set defaults to MATCH
        module CardExpiryCheck
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MATCH =
            T.let(
              :MATCH,
              Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::TaggedSymbol
            )
          MISMATCH =
            T.let(
              :MISMATCH,
              Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::TaggedSymbol
            )
          NOT_PRESENT =
            T.let(
              :NOT_PRESENT,
              Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::ThreeDS::AuthenticationSimulateParams::CardExpiryCheck::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
