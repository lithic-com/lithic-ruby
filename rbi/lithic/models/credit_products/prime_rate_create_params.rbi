# typed: strong

module Lithic
  module Models
    module CreditProducts
      class PrimeRateCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::CreditProducts::PrimeRateCreateParams,
              Lithic::Internal::AnyHash
            )
          end

        # Date the rate goes into effect
        sig { returns(Date) }
        attr_accessor :effective_date

        # The rate in decimal format
        sig { returns(String) }
        attr_accessor :rate

        sig do
          params(
            effective_date: Date,
            rate: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Date the rate goes into effect
          effective_date:,
          # The rate in decimal format
          rate:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              effective_date: Date,
              rate: String,
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
