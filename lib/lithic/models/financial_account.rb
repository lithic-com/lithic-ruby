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
      required :credit_configuration, -> { Lithic::Models::FinancialAccount::CreditConfiguration }, nil?: true

      # @!attribute is_for_benefit_of
      #   Whether financial account is for the benefit of another entity
      #
      #   @return [Boolean]
      required :is_for_benefit_of, Lithic::Internal::Type::BooleanModel

      # @!attribute nickname
      #
      #   @return [String, nil]
      required :nickname, String, nil?: true

      # @!attribute status
      #   Status of the financial account
      #
      #   @return [Symbol, Lithic::Models::FinancialAccount::Status]
      required :status, enum: -> { Lithic::Models::FinancialAccount::Status }

      # @!attribute type
      #
      #   @return [Symbol, Lithic::Models::FinancialAccount::Type]
      required :type, enum: -> { Lithic::Models::FinancialAccount::Type }

      # @!attribute updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute account_number
      #
      #   @return [String, nil]
      optional :account_number, String, nil?: true

      # @!attribute routing_number
      #
      #   @return [String, nil]
      optional :routing_number, String, nil?: true

      # @!attribute status_change_reason
      #   Reason for the financial account status change
      #
      #   @return [Symbol, Lithic::Models::FinancialAccount::StatusChangeReason, nil]
      optional :status_change_reason,
               enum: -> { Lithic::Models::FinancialAccount::StatusChangeReason },
               nil?: true

      # @!parse
      #   # @param token [String]
      #   # @param account_token [String, nil]
      #   # @param created [Time]
      #   # @param credit_configuration [Lithic::Models::FinancialAccount::CreditConfiguration, nil]
      #   # @param is_for_benefit_of [Boolean]
      #   # @param nickname [String, nil]
      #   # @param status [Symbol, Lithic::Models::FinancialAccount::Status]
      #   # @param type [Symbol, Lithic::Models::FinancialAccount::Type]
      #   # @param updated [Time]
      #   # @param account_number [String, nil]
      #   # @param routing_number [String, nil]
      #   # @param status_change_reason [Symbol, Lithic::Models::FinancialAccount::StatusChangeReason, nil]
      #   #
      #   def initialize(
      #     token:,
      #     account_token:,
      #     created:,
      #     credit_configuration:,
      #     is_for_benefit_of:,
      #     nickname:,
      #     status:,
      #     type:,
      #     updated:,
      #     account_number: nil,
      #     routing_number: nil,
      #     status_change_reason: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # @see Lithic::Models::FinancialAccount#credit_configuration
      class CreditConfiguration < Lithic::Internal::Type::BaseModel
        # @!attribute charged_off_reason
        #   Reason for the financial account being marked as Charged Off
        #
        #   @return [Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason, nil]
        required :charged_off_reason,
                 enum: -> { Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason },
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

        # @!attribute financial_account_state
        #   State of the financial account
        #
        #   @return [Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState, nil]
        required :financial_account_state,
                 enum: -> { Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState },
                 nil?: true

        # @!attribute is_spend_blocked
        #
        #   @return [Boolean]
        required :is_spend_blocked, Lithic::Internal::Type::BooleanModel

        # @!attribute tier
        #   Tier assigned to the financial account
        #
        #   @return [String, nil]
        required :tier, String, nil?: true

        # @!parse
        #   # @param charged_off_reason [Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason, nil]
        #   # @param credit_limit [Integer, nil]
        #   # @param credit_product_token [String, nil]
        #   # @param external_bank_account_token [String, nil]
        #   # @param financial_account_state [Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState, nil]
        #   # @param is_spend_blocked [Boolean]
        #   # @param tier [String, nil]
        #   #
        #   def initialize(
        #     charged_off_reason:,
        #     credit_limit:,
        #     credit_product_token:,
        #     external_bank_account_token:,
        #     financial_account_state:,
        #     is_spend_blocked:,
        #     tier:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        # Reason for the financial account being marked as Charged Off
        #
        # @see Lithic::Models::FinancialAccount::CreditConfiguration#charged_off_reason
        module ChargedOffReason
          extend Lithic::Internal::Type::Enum

          DELINQUENT = :DELINQUENT
          FRAUD = :FRAUD

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # State of the financial account
        #
        # @see Lithic::Models::FinancialAccount::CreditConfiguration#financial_account_state
        module FinancialAccountState
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          CURRENT = :CURRENT
          DELINQUENT = :DELINQUENT
          CHARGED_OFF = :CHARGED_OFF

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Reason for the financial account status change
      #
      # @see Lithic::Models::FinancialAccount#status_change_reason
      module StatusChangeReason
        extend Lithic::Internal::Type::Enum

        CHARGED_OFF_DELINQUENT = :CHARGED_OFF_DELINQUENT
        CHARGED_OFF_FRAUD = :CHARGED_OFF_FRAUD
        END_USER_REQUEST = :END_USER_REQUEST
        BANK_REQUEST = :BANK_REQUEST
        DELINQUENT = :DELINQUENT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
