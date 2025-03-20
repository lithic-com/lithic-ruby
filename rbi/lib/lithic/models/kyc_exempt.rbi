# typed: strong

module Lithic
  module Models
    class KYCExempt < Lithic::BaseModel
      # KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
      #   acceptable; APO/FPO are acceptable.
      sig { returns(Lithic::Models::Address) }
      def address
      end

      sig do
        params(_: T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
      end
      def address=(_)
      end

      # The KYC Exempt user's email
      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      # The KYC Exempt user's first name
      sig { returns(String) }
      def first_name
      end

      sig { params(_: String).returns(String) }
      def first_name=(_)
      end

      # Specifies the type of KYC Exempt user
      sig { returns(Lithic::Models::KYCExempt::KYCExemptionType::OrSymbol) }
      def kyc_exemption_type
      end

      sig do
        params(_: Lithic::Models::KYCExempt::KYCExemptionType::OrSymbol)
          .returns(Lithic::Models::KYCExempt::KYCExemptionType::OrSymbol)
      end
      def kyc_exemption_type=(_)
      end

      # The KYC Exempt user's last name
      sig { returns(String) }
      def last_name
      end

      sig { params(_: String).returns(String) }
      def last_name=(_)
      end

      # The KYC Exempt user's phone number, entered in E.164 format.
      sig { returns(String) }
      def phone_number
      end

      sig { params(_: String).returns(String) }
      def phone_number=(_)
      end

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      sig { returns(Lithic::Models::KYCExempt::Workflow::OrSymbol) }
      def workflow
      end

      sig do
        params(_: Lithic::Models::KYCExempt::Workflow::OrSymbol)
          .returns(Lithic::Models::KYCExempt::Workflow::OrSymbol)
      end
      def workflow=(_)
      end

      # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #   users of businesses. Pass the account_token of the enrolled business associated
      #   with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      # A user provided id that can be used to link an account holder with an external
      #   system
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      sig do
        params(
          address: Lithic::Models::Address,
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
      )
      end

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
      def to_hash
      end

      # Specifies the type of KYC Exempt user
      module KYCExemptionType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::KYCExempt::KYCExemptionType) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::KYCExempt::KYCExemptionType::TaggedSymbol) }

        AUTHORIZED_USER = T.let(:AUTHORIZED_USER, Lithic::Models::KYCExempt::KYCExemptionType::TaggedSymbol)
        PREPAID_CARD_USER = T.let(:PREPAID_CARD_USER, Lithic::Models::KYCExempt::KYCExemptionType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::KYCExempt::KYCExemptionType::TaggedSymbol]) }
          def values
          end
        end
      end

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      module Workflow
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::KYCExempt::Workflow) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::KYCExempt::Workflow::TaggedSymbol) }

        KYC_EXEMPT = T.let(:KYC_EXEMPT, Lithic::Models::KYCExempt::Workflow::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::KYCExempt::Workflow::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
