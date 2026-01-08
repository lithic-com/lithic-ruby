# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#create
    class FinancialAccount < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the account
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #
      #   @return [String, nil]
      required :account_token, String, nil?: true

      # @!attribute created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute credit_configuration
      #
      #   @return [Lithic::Models::FinancialAccount::CreditConfiguration, nil]
      required :credit_configuration, -> { Lithic::FinancialAccount::CreditConfiguration }, nil?: true

      # @!attribute is_for_benefit_of
      #   Whether financial account is for the benefit of another entity
      #
      #   @return [Boolean]
      required :is_for_benefit_of, Lithic::Internal::Type::Boolean

      # @!attribute nickname
      #
      #   @return [String, nil]
      required :nickname, String, nil?: true

      # @!attribute status
      #   Status of the financial account
      #
      #   @return [Symbol, Lithic::Models::FinancialAccount::Status]
      required :status, enum: -> { Lithic::FinancialAccount::Status }

      # @!attribute substatus
      #   Substatus for the financial account
      #
      #   @return [Symbol, Lithic::Models::FinancialAccount::Substatus, nil]
      required :substatus, enum: -> { Lithic::FinancialAccount::Substatus }, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Lithic::Models::FinancialAccount::Type]
      required :type, enum: -> { Lithic::FinancialAccount::Type }

      # @!attribute updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute user_defined_status
      #   User-defined status for the financial account
      #
      #   @return [String, nil]
      required :user_defined_status, String, nil?: true

      # @!attribute account_number
      #
      #   @return [String, nil]
      optional :account_number, String, nil?: true

      # @!attribute routing_number
      #
      #   @return [String, nil]
      optional :routing_number, String, nil?: true

      # @!method initialize(token:, account_token:, created:, credit_configuration:, is_for_benefit_of:, nickname:, status:, substatus:, type:, updated:, user_defined_status:, account_number: nil, routing_number: nil)
      #   @param token [String] Globally unique identifier for the account
      #
      #   @param account_token [String, nil]
      #
      #   @param created [Time]
      #
      #   @param credit_configuration [Lithic::Models::FinancialAccount::CreditConfiguration, nil]
      #
      #   @param is_for_benefit_of [Boolean] Whether financial account is for the benefit of another entity
      #
      #   @param nickname [String, nil]
      #
      #   @param status [Symbol, Lithic::Models::FinancialAccount::Status] Status of the financial account
      #
      #   @param substatus [Symbol, Lithic::Models::FinancialAccount::Substatus, nil] Substatus for the financial account
      #
      #   @param type [Symbol, Lithic::Models::FinancialAccount::Type]
      #
      #   @param updated [Time]
      #
      #   @param user_defined_status [String, nil] User-defined status for the financial account
      #
      #   @param account_number [String, nil]
      #
      #   @param routing_number [String, nil]

      # @see Lithic::Models::FinancialAccount#credit_configuration
      class CreditConfiguration < Lithic::Internal::Type::BaseModel
        # @!attribute auto_collection_configuration
        #
        #   @return [Lithic::Models::FinancialAccount::CreditConfiguration::AutoCollectionConfiguration, nil]
        required :auto_collection_configuration,
                 -> { Lithic::FinancialAccount::CreditConfiguration::AutoCollectionConfiguration },
                 nil?: true

        # @!attribute credit_limit
        #
        #   @return [Integer, nil]
        required :credit_limit, Integer, nil?: true

        # @!attribute credit_product_token
        #   Globally unique identifier for the credit product
        #
        #   @return [String, nil]
        required :credit_product_token, String, nil?: true

        # @!attribute external_bank_account_token
        #
        #   @return [String, nil]
        required :external_bank_account_token, String, nil?: true

        # @!attribute tier
        #   Tier assigned to the financial account
        #
        #   @return [String, nil]
        required :tier, String, nil?: true

        # @!method initialize(auto_collection_configuration:, credit_limit:, credit_product_token:, external_bank_account_token:, tier:)
        #   @param auto_collection_configuration [Lithic::Models::FinancialAccount::CreditConfiguration::AutoCollectionConfiguration, nil]
        #
        #   @param credit_limit [Integer, nil]
        #
        #   @param credit_product_token [String, nil] Globally unique identifier for the credit product
        #
        #   @param external_bank_account_token [String, nil]
        #
        #   @param tier [String, nil] Tier assigned to the financial account

        # @see Lithic::Models::FinancialAccount::CreditConfiguration#auto_collection_configuration
        class AutoCollectionConfiguration < Lithic::Internal::Type::BaseModel
          # @!attribute auto_collection_enabled
          #   If auto collection is enabled for this account
          #
          #   @return [Boolean]
          required :auto_collection_enabled, Lithic::Internal::Type::Boolean

          # @!method initialize(auto_collection_enabled:)
          #   @param auto_collection_enabled [Boolean] If auto collection is enabled for this account
        end
      end

      # Status of the financial account
      #
      # @see Lithic::Models::FinancialAccount#status
      module Status
        extend Lithic::Internal::Type::Enum

        OPEN = :OPEN
        CLOSED = :CLOSED
        SUSPENDED = :SUSPENDED
        PENDING = :PENDING

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Substatus for the financial account
      #
      # @see Lithic::Models::FinancialAccount#substatus
      module Substatus
        extend Lithic::Internal::Type::Enum

        CHARGED_OFF_DELINQUENT = :CHARGED_OFF_DELINQUENT
        CHARGED_OFF_FRAUD = :CHARGED_OFF_FRAUD
        END_USER_REQUEST = :END_USER_REQUEST
        BANK_REQUEST = :BANK_REQUEST
        DELINQUENT = :DELINQUENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::FinancialAccount#type
      module Type
        extend Lithic::Internal::Type::Enum

        ISSUING = :ISSUING
        RESERVE = :RESERVE
        OPERATING = :OPERATING
        CHARGED_OFF_FEES = :CHARGED_OFF_FEES
        CHARGED_OFF_INTEREST = :CHARGED_OFF_INTEREST
        CHARGED_OFF_PRINCIPAL = :CHARGED_OFF_PRINCIPAL
        SECURITY = :SECURITY
        PROGRAM_RECEIVABLES = :PROGRAM_RECEIVABLES
        COLLECTION = :COLLECTION
        PROGRAM_BANK_ACCOUNTS_PAYABLE = :PROGRAM_BANK_ACCOUNTS_PAYABLE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
