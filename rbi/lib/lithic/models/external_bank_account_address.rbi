# typed: strong

module Lithic
  module Models
    class ExternalBankAccountAddress < Lithic::BaseModel
      sig { returns(String) }
      def address1
      end

      sig { params(_: String).returns(String) }
      def address1=(_)
      end

      sig { returns(String) }
      def city
      end

      sig { params(_: String).returns(String) }
      def city=(_)
      end

      sig { returns(String) }
      def country
      end

      sig { params(_: String).returns(String) }
      def country=(_)
      end

      sig { returns(String) }
      def postal_code
      end

      sig { params(_: String).returns(String) }
      def postal_code=(_)
      end

      sig { returns(String) }
      def state
      end

      sig { params(_: String).returns(String) }
      def state=(_)
      end

      sig { returns(T.nilable(String)) }
      def address2
      end

      sig { params(_: String).returns(String) }
      def address2=(_)
      end

      sig do
        params(
          address1: String,
          city: String,
          country: String,
          postal_code: String,
          state: String,
          address2: String
        )
          .returns(T.attached_class)
      end
      def self.new(address1:, city:, country:, postal_code:, state:, address2: nil)
      end

      sig do
        override
          .returns(
            {
              address1: String,
              city: String,
              country: String,
              postal_code: String,
              state: String,
              address2: String
            }
          )
      end
      def to_hash
      end
    end
  end
end
