# typed: strong

module Lithic
  module Models
    module CreditProducts
      class PrimeRateCreateParams < Lithic::BaseModel
        extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

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
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(effective_date:, rate:, request_options: {})
        end

        sig do
          override.returns({effective_date: Date, rate: String, request_options: Lithic::RequestOptions})
        end
        def to_hash
        end
      end
    end
  end
end
