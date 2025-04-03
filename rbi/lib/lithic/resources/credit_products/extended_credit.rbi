# typed: strong

module Lithic
  module Resources
    class CreditProducts
      class ExtendedCredit
        # Get the extended credit for a given credit product under a program
        sig do
          params(
            credit_product_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
          )
            .returns(Lithic::Models::CreditProducts::CreditProductsExtendedCredit)
        end
        def retrieve(
          # Credit Product Token
          credit_product_token,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
