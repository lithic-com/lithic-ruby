# typed: strong

module Lithic
  module Models
    class KYC < Lithic::BaseModel
      # Information on individual for whom the account is being opened and KYC is being
      #   run.
      sig { returns(Lithic::Models::KYC::Individual) }
      def individual
      end

      sig do
        params(_: T.any(Lithic::Models::KYC::Individual, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::KYC::Individual, Lithic::Util::AnyHash))
      end
      def individual=(_)
      end

      # An RFC 3339 timestamp indicating when the account holder accepted the applicable
      #   legal agreements (e.g., cardholder terms) as agreed upon during API customer's
      #   implementation with Lithic.
      sig { returns(String) }
      def tos_timestamp
      end

      sig { params(_: String).returns(String) }
      def tos_timestamp=(_)
      end

      # Specifies the type of KYC workflow to run.
      sig { returns(Lithic::Models::KYC::Workflow::OrSymbol) }
      def workflow
      end

      sig { params(_: Lithic::Models::KYC::Workflow::OrSymbol).returns(Lithic::Models::KYC::Workflow::OrSymbol) }
      def workflow=(_)
      end

      # A user provided id that can be used to link an account holder with an external
      #   system
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      #   individual with a pass result.
      #
      #   This field is required only if workflow type is `KYC_BYO`.
      sig { returns(T.nilable(String)) }
      def kyc_passed_timestamp
      end

      sig { params(_: String).returns(String) }
      def kyc_passed_timestamp=(_)
      end

      sig do
        params(
          individual: T.any(Lithic::Models::KYC::Individual, Lithic::Util::AnyHash),
          tos_timestamp: String,
          workflow: Lithic::Models::KYC::Workflow::OrSymbol,
          external_id: String,
          kyc_passed_timestamp: String
        )
          .returns(T.attached_class)
      end
      def self.new(individual:, tos_timestamp:, workflow:, external_id: nil, kyc_passed_timestamp: nil)
      end

      sig do
        override
          .returns(
            {
              individual: Lithic::Models::KYC::Individual,
              tos_timestamp: String,
              workflow: Lithic::Models::KYC::Workflow::OrSymbol,
              external_id: String,
              kyc_passed_timestamp: String
            }
          )
      end
      def to_hash
      end

      class Individual < Lithic::BaseModel
        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(Lithic::Models::Address) }
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
        end
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(String) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        def phone_number
        end

        sig { params(_: String).returns(String) }
        def phone_number=(_)
        end

        # Information on individual for whom the account is being opened and KYC is being
        #   run.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Util::AnyHash),
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number:)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
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
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::KYC::Workflow) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::KYC::Workflow::TaggedSymbol) }

        KYC_BASIC = T.let(:KYC_BASIC, Lithic::Models::KYC::Workflow::TaggedSymbol)
        KYC_BYO = T.let(:KYC_BYO, Lithic::Models::KYC::Workflow::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::KYC::Workflow::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
