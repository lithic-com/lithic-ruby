# typed: strong

module Lithic
  module Models
    module CreditProducts
      class PrimeRateRetrieveResponse < Lithic::BaseModel
        # List of prime rates
        sig { returns(T::Array[Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data]) }
        def data
        end

        sig do
          params(_: T::Array[Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data])
            .returns(T::Array[Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data])
        end
        def data=(_)
        end

        # Whether there are more prime rates
        sig { returns(T::Boolean) }
        def has_more
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def has_more=(_)
        end

        sig do
          params(
            data: T::Array[Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data],
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
          def effective_date
          end

          sig { params(_: Date).returns(Date) }
          def effective_date=(_)
          end

          # The rate in decimal format
          sig { returns(String) }
          def rate
          end

          sig { params(_: String).returns(String) }
          def rate=(_)
          end

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
