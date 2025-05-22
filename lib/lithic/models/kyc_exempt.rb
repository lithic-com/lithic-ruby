# frozen_string_literal: true

module Lithic
  module Models
    class KYCExempt < Lithic::Internal::Type::BaseModel
      # @!attribute address
      #   KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
      #   acceptable; APO/FPO are acceptable.
      #
      #   @return [Lithic::Models::Address]
      required :address, -> { Lithic::Address }

      # @!attribute email
      #   The KYC Exempt user's email
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   The KYC Exempt user's first name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute kyc_exemption_type
      #   Specifies the type of KYC Exempt user
      #
      #   @return [Symbol, Lithic::Models::KYCExempt::KYCExemptionType]
      required :kyc_exemption_type, enum: -> { Lithic::KYCExempt::KYCExemptionType }

      # @!attribute last_name
      #   The KYC Exempt user's last name
      #
      #   @return [String]
      required :last_name, String

      # @!attribute phone_number
      #   The KYC Exempt user's phone number, entered in E.164 format.
      #
      #   @return [String]
      required :phone_number, String

      # @!attribute workflow
      #   Specifies the workflow type. This must be 'KYC_EXEMPT'
      #
      #   @return [Symbol, Lithic::Models::KYCExempt::Workflow]
      required :workflow, enum: -> { Lithic::KYCExempt::Workflow }

      # @!attribute business_account_token
      #   Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #   users of businesses. Pass the account_token of the enrolled business associated
      #   with the AUTHORIZED_USER in this field.
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!attribute external_id
      #   A user provided id that can be used to link an account holder with an external
      #   system
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!method initialize(address:, email:, first_name:, kyc_exemption_type:, last_name:, phone_number:, workflow:, business_account_token: nil, external_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::KYCExempt} for more details.
      #
      #   @param address [Lithic::Models::Address] KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
      #
      #   @param email [String] The KYC Exempt user's email
      #
      #   @param first_name [String] The KYC Exempt user's first name
      #
      #   @param kyc_exemption_type [Symbol, Lithic::Models::KYCExempt::KYCExemptionType] Specifies the type of KYC Exempt user
      #
      #   @param last_name [String] The KYC Exempt user's last name
      #
      #   @param phone_number [String] The KYC Exempt user's phone number, entered in E.164 format.
      #
      #   @param workflow [Symbol, Lithic::Models::KYCExempt::Workflow] Specifies the workflow type. This must be 'KYC_EXEMPT'
      #
      #   @param business_account_token [String] Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #
      #   @param external_id [String] A user provided id that can be used to link an account holder with an external s

      # Specifies the type of KYC Exempt user
      #
      # @see Lithic::Models::KYCExempt#kyc_exemption_type
      module KYCExemptionType
        extend Lithic::Internal::Type::Enum

        AUTHORIZED_USER = :AUTHORIZED_USER
        PREPAID_CARD_USER = :PREPAID_CARD_USER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      #
      # @see Lithic::Models::KYCExempt#workflow
      module Workflow
        extend Lithic::Internal::Type::Enum

        KYC_EXEMPT = :KYC_EXEMPT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
