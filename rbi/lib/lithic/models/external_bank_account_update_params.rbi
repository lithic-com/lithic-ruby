# typed: strong

module Lithic
  module Models
    class ExternalBankAccountUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Address
      sig { returns(T.nilable(Lithic::Models::ExternalBankAccountAddress)) }
      attr_reader :address

      sig { params(address: T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Internal::AnyHash)).void }
      attr_writer :address

      # Optional field that helps identify bank accounts in receipts
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Date of Birth of the Individual that owns the external bank account
      sig { returns(T.nilable(Date)) }
      attr_reader :dob

      sig { params(dob: Date).void }
      attr_writer :dob

      # Doing Business As
      sig { returns(T.nilable(String)) }
      attr_reader :doing_business_as

      sig { params(doing_business_as: String).void }
      attr_writer :doing_business_as

      # The nickname for this External Bank Account
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Legal Name of the business or individual who owns the external account. This
      # will appear in statements
      sig { returns(T.nilable(String)) }
      attr_reader :owner

      sig { params(owner: String).void }
      attr_writer :owner

      # Owner Type
      sig { returns(T.nilable(Lithic::Models::OwnerType::OrSymbol)) }
      attr_reader :owner_type

      sig { params(owner_type: Lithic::Models::OwnerType::OrSymbol).void }
      attr_writer :owner_type

      sig { returns(T.nilable(Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol).void }
      attr_writer :type

      # User Defined ID
      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig do
        params(
          address: T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Internal::AnyHash),
          company_id: String,
          dob: Date,
          doing_business_as: String,
          name: String,
          owner: String,
          owner_type: Lithic::Models::OwnerType::OrSymbol,
          type: Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol,
          user_defined_id: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Address
        address: nil,
        # Optional field that helps identify bank accounts in receipts
        company_id: nil,
        # Date of Birth of the Individual that owns the external bank account
        dob: nil,
        # Doing Business As
        doing_business_as: nil,
        # The nickname for this External Bank Account
        name: nil,
        # Legal Name of the business or individual who owns the external account. This
        # will appear in statements
        owner: nil,
        # Owner Type
        owner_type: nil,
        type: nil,
        # User Defined ID
        user_defined_id: nil,
        request_options: {}
      ); end
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
      def to_hash; end

      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHECKING = T.let(:CHECKING, Lithic::Models::ExternalBankAccountUpdateParams::Type::TaggedSymbol)
        SAVINGS = T.let(:SAVINGS, Lithic::Models::ExternalBankAccountUpdateParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountUpdateParams::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
