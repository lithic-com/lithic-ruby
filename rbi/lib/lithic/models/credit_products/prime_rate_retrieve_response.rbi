# typed: strong

module Lithic
  module Models
    module CreditProducts
      class PrimeRateRetrieveResponse < Lithic::BaseModel
        # List of prime rates
        sig { returns(T::Array[Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data]) }
        attr_accessor :data

        # Whether there are more prime rates
        sig { returns(T::Boolean) }
        attr_accessor :has_more

        sig do
          params(
            data: T::Array[T.any(Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data, Lithic::Util::AnyHash)],
            has_more: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(data:, has_more:)
        end

        sig do
          override
            .returns(
              {data: T::Array[Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data], has_more: T::Boolean}
            )
        end
        def to_hash
        end

        class Data < Lithic::BaseModel
          # Date the rate goes into effect
          sig { returns(Date) }
          attr_accessor :effective_date

          # The rate in decimal format
          sig { returns(String) }
          attr_accessor :rate

          sig { params(effective_date: Date, rate: String).returns(T.attached_class) }
          def self.new(effective_date:, rate:)
          end

          sig { override.returns({effective_date: Date, rate: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
