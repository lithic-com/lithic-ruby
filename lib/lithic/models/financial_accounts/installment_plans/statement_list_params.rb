# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      module InstallmentPlans
        # @see Lithic::Resources::FinancialAccounts::InstallmentPlans::Statements#list
        class StatementListParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute financial_account_token
          #   Globally unique identifier for financial account.
          #
          #   @return [String]
          required :financial_account_token, String

          # @!attribute installment_plan_token
          #   Globally unique identifier for installment plan.
          #
          #   @return [String]
          required :installment_plan_token, String

          # @!attribute begin_
          #   Date string in RFC 3339 format. Only entries created after the specified date
          #   will be included.
          #
          #   @return [Date, nil]
          optional :begin_, Date

          # @!attribute end_
          #   Date string in RFC 3339 format. Only entries created before the specified date
          #   will be included.
          #
          #   @return [Date, nil]
          optional :end_, Date

          # @!attribute ending_before
          #   A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          #
          #   @return [String, nil]
          optional :ending_before, String

          # @!attribute page_size
          #   Page size (for pagination).
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute starting_after
          #   A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          #
          #   @return [String, nil]
          optional :starting_after, String

          # @!attribute state
          #   Only snapshots in which the plan was in this state will be included.
          #
          #   @return [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlans::StatementListParams::State, nil]
          optional :state,
                   enum: -> { Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State },
                   nil?: true

          # @!method initialize(financial_account_token:, installment_plan_token:, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, state: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::InstallmentPlans::StatementListParams} for
          #   more details.
          #
          #   @param financial_account_token [String] Globally unique identifier for financial account.
          #
          #   @param installment_plan_token [String] Globally unique identifier for installment plan.
          #
          #   @param begin_ [Date] Date string in RFC 3339 format. Only entries created after the specified date wi
          #
          #   @param end_ [Date] Date string in RFC 3339 format. Only entries created before the specified date w
          #
          #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
          #
          #   @param page_size [Integer] Page size (for pagination).
          #
          #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
          #
          #   @param state [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlans::StatementListParams::State, nil] Only snapshots in which the plan was in this state will be included.
          #
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

          # Only snapshots in which the plan was in this state will be included.
          module State
            extend Lithic::Internal::Type::Enum

            PENDING = :PENDING
            ACTIVE = :ACTIVE
            REBUILD_IN_PROGRESS = :REBUILD_IN_PROGRESS
            FULLY_PAID = :FULLY_PAID
            CANCELLED = :CANCELLED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
