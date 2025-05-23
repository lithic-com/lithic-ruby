# frozen_string_literal: true

module Lithic
  module Models
    class KYC < Lithic::Internal::Type::BaseModel
      # @!attribute individual
      #   Information on individual for whom the account is being opened and KYC is being
      #   run.
      #
      #   @return [Lithic::Models::KYC::Individual]
      required :individual, -> { Lithic::KYC::Individual }

      # @!attribute tos_timestamp
      #   An RFC 3339 timestamp indicating when the account holder accepted the applicable
      #   legal agreements (e.g., cardholder terms) as agreed upon during API customer's
      #   implementation with Lithic.
      #
      #   @return [String]
      required :tos_timestamp, String

      # @!attribute workflow
      #   Specifies the type of KYC workflow to run.
      #
      #   @return [Symbol, Lithic::Models::KYC::Workflow]
      required :workflow, enum: -> { Lithic::KYC::Workflow }

      # @!attribute external_id
      #   A user provided id that can be used to link an account holder with an external
      #   system
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute kyc_passed_timestamp
      #   An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      #   individual with a pass result.
      #
      #   This field is required only if workflow type is `KYC_BYO`.
      #
      #   @return [String, nil]
      optional :kyc_passed_timestamp, String

      # @!method initialize(individual:, tos_timestamp:, workflow:, external_id: nil, kyc_passed_timestamp: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::KYC} for
      #   more details.
      #
      #   @param individual [Lithic::Models::KYC::Individual] Information on individual for whom the account is being opened and KYC is being
      #
      #   @param tos_timestamp [String] An RFC 3339 timestamp indicating when the account holder accepted the applicable
      #
      #   @param workflow [Symbol, Lithic::Models::KYC::Workflow] Specifies the type of KYC workflow to run.
      #
      #   @param external_id [String] A user provided id that can be used to link an account holder with an external s
      #
      #   @param kyc_passed_timestamp [String] An RFC 3339 timestamp indicating when precomputed KYC was completed on the indiv

      # @see Lithic::Models::KYC#individual
      class Individual < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Address }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String]
        required :dob, String

        # @!attribute email
        #   Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String]
        required :first_name, String

        # @!attribute government_id
        #   Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        #
        #   @return [String]
        required :government_id, String

        # @!attribute last_name
        #   Individual's last name, as it appears on government-issued identity documents.
        #
        #   @return [String]
        required :last_name, String

        # @!attribute phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::KYC::Individual} for more details.
        #
        #   Information on individual for whom the account is being opened and KYC is being
        #   run.
        #
        #   @param address [Lithic::Models::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
        #
        #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
        #
        #   @param email [String] Individual's email address.
        #
        #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
        #
        #   @param government_id [String] Government-issued identification number (required for identity verification and
        #
        #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
        #
        #   @param phone_number [String] Individual's phone number, entered in E.164 format.
      end

      # Specifies the type of KYC workflow to run.
      #
      # @see Lithic::Models::KYC#workflow
      module Workflow
        extend Lithic::Internal::Type::Enum

        KYC_BASIC = :KYC_BASIC
        KYC_BYO = :KYC_BYO

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
