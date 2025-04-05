# typed: strong

module Lithic
  module Models
    class KYCExempt < Lithic::Internal::Type::BaseModel
      # KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
      # acceptable; APO/FPO are acceptable.
      sig { returns(Lithic::Models::Address) }
      attr_reader :address

      sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash)).void }
      attr_writer :address

      # The KYC Exempt user's email
      sig { returns(String) }
      attr_accessor :email

      # The KYC Exempt user's first name
      sig { returns(String) }
      attr_accessor :first_name

      # Specifies the type of KYC Exempt user
      sig { returns(Lithic::Models::KYCExempt::KYCExemptionType::OrSymbol) }
      attr_accessor :kyc_exemption_type

      # The KYC Exempt user's last name
      sig { returns(String) }
      attr_accessor :last_name

      # The KYC Exempt user's phone number, entered in E.164 format.
      sig { returns(String) }
      attr_accessor :phone_number

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      sig { returns(Lithic::Models::KYCExempt::Workflow::OrSymbol) }
      attr_accessor :workflow

      # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      # users of businesses. Pass the account_token of the enrolled business associated
      # with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # A user provided id that can be used to link an account holder with an external
      # system
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      sig do
        params(
          address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash),
          email: String,
          first_name: String,
          kyc_exemption_type: Lithic::Models::KYCExempt::KYCExemptionType::OrSymbol,
          last_name: String,
          phone_number: String,
          workflow: Lithic::Models::KYCExempt::Workflow::OrSymbol,
          business_account_token: String,
          external_id: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        address:,
        email:,
        first_name:,
        kyc_exemption_type:,
        last_name:,
        phone_number:,
        workflow:,
        business_account_token: nil,
        external_id: nil
      ); end
      sig do
        override
          .returns(
            {
              address: Lithic::Models::Address,
              email: String,
              first_name: String,
              kyc_exemption_type: Lithic::Models::KYCExempt::KYCExemptionType::OrSymbol,
              last_name: String,
              phone_number: String,
              workflow: Lithic::Models::KYCExempt::Workflow::OrSymbol,
              business_account_token: String,
              external_id: String
            }
          )
      end
      def to_hash; end

      # Specifies the type of KYC Exempt user
      module KYCExemptionType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::KYCExempt::KYCExemptionType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::KYCExempt::KYCExemptionType::TaggedSymbol) }

        AUTHORIZED_USER = T.let(:AUTHORIZED_USER, Lithic::Models::KYCExempt::KYCExemptionType::TaggedSymbol)
        PREPAID_CARD_USER = T.let(:PREPAID_CARD_USER, Lithic::Models::KYCExempt::KYCExemptionType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::KYCExempt::KYCExemptionType::TaggedSymbol]) }
        def self.values; end
      end

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      module Workflow
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::KYCExempt::Workflow) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Lithic::Models::KYCExempt::Workflow::TaggedSymbol) }

        KYC_EXEMPT = T.let(:KYC_EXEMPT, Lithic::Models::KYCExempt::Workflow::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::KYCExempt::Workflow::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
