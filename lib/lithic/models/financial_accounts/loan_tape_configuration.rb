# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::LoanTapeConfiguration#retrieve
      class FinancialAccountsLoanTapeConfiguration < Lithic::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute financial_account_token
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute instance_token
        #
        #   @return [String]
        required :instance_token, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute credit_product_token
        #
        #   @return [String, nil]
        optional :credit_product_token, String

        # @!attribute loan_tape_rebuild_configuration
        #   Configuration for building loan tapes
        #
        #   @return [Lithic::Models::FinancialAccounts::LoanTapeRebuildConfiguration, nil]
        optional :loan_tape_rebuild_configuration, -> { Lithic::FinancialAccounts::LoanTapeRebuildConfiguration }

        # @!attribute tier_schedule_changed_at
        #
        #   @return [Time, nil]
        optional :tier_schedule_changed_at, Time

        # @!method initialize(created_at:, financial_account_token:, instance_token:, updated_at:, credit_product_token: nil, loan_tape_rebuild_configuration: nil, tier_schedule_changed_at: nil)
        #   Configuration for loan tapes
        #
        #   @param created_at [Time]
        #
        #   @param financial_account_token [String]
        #
        #   @param instance_token [String]
        #
        #   @param updated_at [Time]
        #
        #   @param credit_product_token [String]
        #
        #   @param loan_tape_rebuild_configuration [Lithic::Models::FinancialAccounts::LoanTapeRebuildConfiguration] Configuration for building loan tapes
        #
        #   @param tier_schedule_changed_at [Time]
      end
    end
  end
end
