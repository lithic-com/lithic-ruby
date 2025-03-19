# typed: strong

module Lithic
  module Models
    class KYCExempt < Lithic::BaseModel
      # KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
      #   acceptable; APO/FPO are acceptable.
      sig { returns(Lithic::Models::Address) }
      def address
      end

      sig { params(_: Lithic::Models::Address).returns(Lithic::Models::Address) }
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
      sig { returns(Symbol) }
      def kyc_exemption_type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(Symbol) }
      def workflow
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          kyc_exemption_type: Symbol,
          last_name: String,
          phone_number: String,
          workflow: Symbol,
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
              kyc_exemption_type: Symbol,
              last_name: String,
              phone_number: String,
              workflow: Symbol,
              business_account_token: String,
              external_id: String
            }
          )
      end
      def to_hash
      end

      # Specifies the type of KYC Exempt user
      class KYCExemptionType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        AUTHORIZED_USER = :AUTHORIZED_USER
        PREPAID_CARD_USER = :PREPAID_CARD_USER
      end

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      class Workflow < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        KYC_EXEMPT = :KYC_EXEMPT
      end
    end
  end
end
