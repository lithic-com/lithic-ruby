# typed: strong

module Lithic
  module Models
    class KYC < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Lithic::KYC, Lithic::Internal::AnyHash) }

      # Information on individual for whom the account is being opened and KYC is being
      # run.
      sig { returns(Lithic::KYC::Individual) }
      attr_reader :individual

      sig { params(individual: Lithic::KYC::Individual::OrHash).void }
      attr_writer :individual

      # An RFC 3339 timestamp indicating when the account holder accepted the applicable
      # legal agreements (e.g., cardholder terms) as agreed upon during API customer's
      # implementation with Lithic.
      sig { returns(String) }
      attr_accessor :tos_timestamp

      # Specifies the type of KYC workflow to run.
      sig { returns(Lithic::KYC::Workflow::OrSymbol) }
      attr_accessor :workflow

      # A user provided id that can be used to link an account holder with an external
      # system
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      # individual with a pass result.
      #
      # This field is required only if workflow type is `KYC_BYO`.
      sig { returns(T.nilable(String)) }
      attr_reader :kyc_passed_timestamp

      sig { params(kyc_passed_timestamp: String).void }
      attr_writer :kyc_passed_timestamp

      sig do
        params(
          individual: Lithic::KYC::Individual::OrHash,
          tos_timestamp: String,
          workflow: Lithic::KYC::Workflow::OrSymbol,
          external_id: String,
          kyc_passed_timestamp: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Information on individual for whom the account is being opened and KYC is being
        # run.
        individual:,
        # An RFC 3339 timestamp indicating when the account holder accepted the applicable
        # legal agreements (e.g., cardholder terms) as agreed upon during API customer's
        # implementation with Lithic.
        tos_timestamp:,
        # Specifies the type of KYC workflow to run.
        workflow:,
        # A user provided id that can be used to link an account holder with an external
        # system
        external_id: nil,
        # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
        # individual with a pass result.
        #
        # This field is required only if workflow type is `KYC_BYO`.
        kyc_passed_timestamp: nil
      )
      end

      sig do
        override.returns(
          {
            individual: Lithic::KYC::Individual,
            tos_timestamp: String,
            workflow: Lithic::KYC::Workflow::OrSymbol,
            external_id: String,
            kyc_passed_timestamp: String
          }
        )
      end
      def to_hash
      end

      class Individual < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::KYC::Individual, Lithic::Internal::AnyHash)
          end

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(Lithic::Address) }
        attr_reader :address

        sig { params(address: Lithic::Address::OrHash).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        # customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        attr_accessor :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Government-issued identification number (required for identity verification and
        # compliance with banking regulations). Social Security Numbers (SSN) and
        # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        # entered as full nine-digits, with or without hyphens
        sig { returns(String) }
        attr_accessor :government_id

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        attr_accessor :phone_number

        # Information on individual for whom the account is being opened and KYC is being
        # run.
        sig do
          params(
            address: Lithic::Address::OrHash,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          address:,
          # Individual's date of birth, as an RFC 3339 date.
          dob:,
          # Individual's email address. If utilizing Lithic for chargeback processing, this
          # customer email address may be used to communicate dispute status and resolution.
          email:,
          # Individual's first name, as it appears on government-issued identity documents.
          first_name:,
          # Government-issued identification number (required for identity verification and
          # compliance with banking regulations). Social Security Numbers (SSN) and
          # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
          # entered as full nine-digits, with or without hyphens
          government_id:,
          # Individual's last name, as it appears on government-issued identity documents.
          last_name:,
          # Individual's phone number, entered in E.164 format.
          phone_number:
        )
        end

        sig do
          override.returns(
            {
              address: Lithic::Address,
              dob: String,
              email: String,
              first_name: String,
              government_id: String,
              last_name: String,
              phone_number: String
            }
          )
        end
        def to_hash
        end
      end

      # Specifies the type of KYC workflow to run.
      module Workflow
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::KYC::Workflow) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KYC_BASIC = T.let(:KYC_BASIC, Lithic::KYC::Workflow::TaggedSymbol)
        KYC_BYO = T.let(:KYC_BYO, Lithic::KYC::Workflow::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::KYC::Workflow::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
