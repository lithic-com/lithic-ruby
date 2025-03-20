# typed: strong

module Lithic
  module Models
    class ExternalBankAccountUpdateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Address
      sig { returns(T.nilable(Lithic::Models::ExternalBankAccountAddress)) }
      def address
      end

      sig { params(_: Lithic::Models::ExternalBankAccountAddress).returns(Lithic::Models::ExternalBankAccountAddress) }
      def address=(_)
      end

      # Optional field that helps identify bank accounts in receipts
      sig { returns(T.nilable(String)) }
      def company_id
      end

      sig { params(_: String).returns(String) }
      def company_id=(_)
      end

      # Date of Birth of the Individual that owns the external bank account
      sig { returns(T.nilable(Date)) }
      def dob
      end

      sig { params(_: Date).returns(Date) }
      def dob=(_)
      end

      # Doing Business As
      sig { returns(T.nilable(String)) }
      def doing_business_as
      end

      sig { params(_: String).returns(String) }
      def doing_business_as=(_)
      end

      # The nickname for this External Bank Account
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # Legal Name of the business or individual who owns the external account. This
      #   will appear in statements
      sig { returns(T.nilable(String)) }
      def owner
      end

      sig { params(_: String).returns(String) }
      def owner=(_)
      end

      # Owner Type
      sig { returns(T.nilable(Lithic::Models::OwnerType::OrSymbol)) }
      def owner_type
      end

      sig { params(_: Lithic::Models::OwnerType::OrSymbol).returns(Lithic::Models::OwnerType::OrSymbol) }
      def owner_type=(_)
      end

      sig { returns(T.nilable(Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol)) }
      def type
      end

      sig do
        params(_: Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol)
          .returns(Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol)
      end
      def type=(_)
      end

      # User Defined ID
      sig { returns(T.nilable(String)) }
      def user_defined_id
      end

      sig { params(_: String).returns(String) }
      def user_defined_id=(_)
      end

      sig do
        params(
          address: Lithic::Models::ExternalBankAccountAddress,
          company_id: String,
          dob: Date,
          doing_business_as: String,
          name: String,
          owner: String,
          owner_type: Lithic::Models::OwnerType::OrSymbol,
          type: Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol,
          user_defined_id: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        address: nil,
        company_id: nil,
        dob: nil,
        doing_business_as: nil,
        name: nil,
        owner: nil,
        owner_type: nil,
        type: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              address: Lithic::Models::ExternalBankAccountAddress,
              company_id: String,
              dob: Date,
              doing_business_as: String,
              name: String,
              owner: String,
              owner_type: Lithic::Models::OwnerType::OrSymbol,
              type: Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol,
              user_defined_id: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type::TaggedSymbol) }

        CHECKING = T.let(:CHECKING, Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol)
        SAVINGS = T.let(:SAVINGS, Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol)
      end
    end
  end
end
