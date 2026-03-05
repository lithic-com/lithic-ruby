# typed: strong

module Lithic
  module Models
    module CreditProducts
      class PrimeRateRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::CreditProducts::PrimeRateRetrieveParams,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for credit products.
        sig { returns(String) }
        attr_accessor :credit_product_token

        # The effective date that the prime rates ends before
        sig { returns(T.nilable(Date)) }
        attr_reader :ending_before

        sig { params(ending_before: Date).void }
        attr_writer :ending_before

        # The effective date that the prime rate starts after
        sig { returns(T.nilable(Date)) }
        attr_reader :starting_after

        sig { params(starting_after: Date).void }
        attr_writer :starting_after

        sig do
          params(
            credit_product_token: String,
            ending_before: Date,
            starting_after: Date,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for credit products.
          credit_product_token:,
          # The effective date that the prime rates ends before
          ending_before: nil,
          # The effective date that the prime rate starts after
          starting_after: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              credit_product_token: String,
              ending_before: Date,
              starting_after: Date,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
