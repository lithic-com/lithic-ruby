# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountsLoanTapeConfiguration < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::FinancialAccountsLoanTapeConfiguration,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :financial_account_token

        sig { returns(String) }
        attr_accessor :instance_token

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :credit_product_token

        sig { params(credit_product_token: String).void }
        attr_writer :credit_product_token

        # Configuration for building loan tapes
        sig do
          returns(
            T.nilable(Lithic::FinancialAccounts::LoanTapeRebuildConfiguration)
          )
        end
        attr_reader :loan_tape_rebuild_configuration

        sig do
          params(
            loan_tape_rebuild_configuration:
              Lithic::FinancialAccounts::LoanTapeRebuildConfiguration::OrHash
          ).void
        end
        attr_writer :loan_tape_rebuild_configuration

        sig { returns(T.nilable(Time)) }
        attr_reader :tier_schedule_changed_at

        sig { params(tier_schedule_changed_at: Time).void }
        attr_writer :tier_schedule_changed_at

        # Configuration for loan tapes
        sig do
          params(
            created_at: Time,
            financial_account_token: String,
            instance_token: String,
            updated_at: Time,
            credit_product_token: String,
            loan_tape_rebuild_configuration:
              Lithic::FinancialAccounts::LoanTapeRebuildConfiguration::OrHash,
            tier_schedule_changed_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          financial_account_token:,
          instance_token:,
          updated_at:,
          credit_product_token: nil,
          # Configuration for building loan tapes
          loan_tape_rebuild_configuration: nil,
          tier_schedule_changed_at: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              financial_account_token: String,
              instance_token: String,
              updated_at: Time,
              credit_product_token: String,
              loan_tape_rebuild_configuration:
                Lithic::FinancialAccounts::LoanTapeRebuildConfiguration,
              tier_schedule_changed_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
