# typed: strong

module Lithic
  module Models
    class ExternalBankAccountAddress < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::ExternalBankAccountAddress, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address1

      sig { returns(String) }
      attr_accessor :city

      sig { returns(String) }
      attr_accessor :country

      sig { returns(String) }
      attr_accessor :postal_code

      sig { returns(String) }
      attr_accessor :state

      sig { returns(T.nilable(String)) }
      attr_reader :address2

      sig { params(address2: String).void }
      attr_writer :address2

      sig do
        params(
          address1: String,
          city: String,
          country: String,
          postal_code: String,
          state: String,
          address2: String
        ).returns(T.attached_class)
      end
      def self.new(
        address1:,
        city:,
        country:,
        postal_code:,
        state:,
        address2: nil
      )
      end

      sig do
        override.returns(
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
