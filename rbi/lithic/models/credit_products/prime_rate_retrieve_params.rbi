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
            ending_before: Date,
            starting_after: Date,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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
