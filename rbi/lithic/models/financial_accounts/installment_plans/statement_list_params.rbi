# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      module InstallmentPlans
        class StatementListParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::InstallmentPlans::StatementListParams,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier for financial account.
          sig { returns(String) }
          attr_accessor :financial_account_token

          # Globally unique identifier for installment plan.
          sig { returns(String) }
          attr_accessor :installment_plan_token

          # Date string in RFC 3339 format. Only entries created after the specified date
          # will be included.
          sig { returns(T.nilable(Date)) }
          attr_reader :begin_

          sig { params(begin_: Date).void }
          attr_writer :begin_

          # Date string in RFC 3339 format. Only entries created before the specified date
          # will be included.
          sig { returns(T.nilable(Date)) }
          attr_reader :end_

          sig { params(end_: Date).void }
          attr_writer :end_

          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          sig { returns(T.nilable(String)) }
          attr_reader :ending_before

          sig { params(ending_before: String).void }
          attr_writer :ending_before

          # Page size (for pagination).
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          sig { returns(T.nilable(String)) }
          attr_reader :starting_after

          sig { params(starting_after: String).void }
          attr_writer :starting_after

          # Only snapshots in which the plan was in this state will be included.
          sig do
            returns(
              T.nilable(
                Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::OrSymbol
              )
            )
          end
          attr_accessor :state

          sig do
            params(
              financial_account_token: String,
              installment_plan_token: String,
              begin_: Date,
              end_: Date,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              state:
                T.nilable(
                  Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::OrSymbol
                ),
              request_options: Lithic::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier for financial account.
            financial_account_token:,
            # Globally unique identifier for installment plan.
            installment_plan_token:,
            # Date string in RFC 3339 format. Only entries created after the specified date
            # will be included.
            begin_: nil,
            # Date string in RFC 3339 format. Only entries created before the specified date
            # will be included.
            end_: nil,
            # A cursor representing an item's token before which a page of results should end.
            # Used to retrieve the previous page of results before this item.
            ending_before: nil,
            # Page size (for pagination).
            page_size: nil,
            # A cursor representing an item's token after which a page of results should
            # begin. Used to retrieve the next page of results after this item.
            starting_after: nil,
            # Only snapshots in which the plan was in this state will be included.
            state: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                financial_account_token: String,
                installment_plan_token: String,
                begin_: Date,
                end_: Date,
                ending_before: String,
                page_size: Integer,
                starting_after: String,
                state:
                  T.nilable(
                    Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::OrSymbol
                  ),
                request_options: Lithic::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Only snapshots in which the plan was in this state will be included.
          module State
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :PENDING,
                Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :ACTIVE,
                Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::TaggedSymbol
              )
            REBUILD_IN_PROGRESS =
              T.let(
                :REBUILD_IN_PROGRESS,
                Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::TaggedSymbol
              )
            FULLY_PAID =
              T.let(
                :FULLY_PAID,
                Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :CANCELLED,
                Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
