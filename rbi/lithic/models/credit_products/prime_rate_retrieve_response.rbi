# typed: strong

module Lithic
  module Models
    module CreditProducts
      class PrimeRateRetrieveResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::CreditProducts::PrimeRateRetrieveResponse,
              Lithic::Internal::AnyHash
            )
          end

        # List of prime rates
        sig do
          returns(
            T::Array[
              Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data
            ]
          )
        end
        attr_accessor :data

        # Whether there are more prime rates
        sig { returns(T::Boolean) }
        attr_accessor :has_more

        sig do
          params(
            data:
              T::Array[
                Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data::OrHash
              ],
            has_more: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # List of prime rates
          data:,
          # Whether there are more prime rates
          has_more:
        )
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data
                ],
              has_more: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Data < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data,
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
            params(effective_date: Date, rate: String).returns(T.attached_class)
          end
          def self.new(
            # Date the rate goes into effect
            effective_date:,
            # The rate in decimal format
            rate:
          )
          end

          sig { override.returns({ effective_date: Date, rate: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
