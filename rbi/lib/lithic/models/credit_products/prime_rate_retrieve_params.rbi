# typed: strong

module Lithic
  module Models
    module CreditProducts
      class PrimeRateRetrieveParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # The effective date that the prime rates ends before
        sig { returns(T.nilable(Date)) }
        def ending_before
        end

        sig { params(_: Date).returns(Date) }
        def ending_before=(_)
        end

        # The effective date that the prime rate starts after
        sig { returns(T.nilable(Date)) }
        def starting_after
        end

        sig { params(_: Date).returns(Date) }
        def starting_after=(_)
        end

        sig do
          params(
            ending_before: Date,
            starting_after: Date,
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(ending_before: nil, starting_after: nil, request_options: {})
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
