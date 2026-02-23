# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class LoanTapeRebuildConfiguration < Lithic::Internal::Type::BaseModel
        # @!attribute rebuild_needed
        #   Whether the account's loan tapes need to be rebuilt or not
        #
        #   @return [Boolean]
        required :rebuild_needed, Lithic::Internal::Type::Boolean

        # @!attribute last_rebuild
        #   The date for which the account's loan tapes were last rebuilt
        #
        #   @return [Date, nil]
        optional :last_rebuild, Date

        # @!attribute rebuild_from
        #   Date from which to start rebuilding from if the account requires a rebuild
        #
        #   @return [Date, nil]
        optional :rebuild_from, Date

        # @!method initialize(rebuild_needed:, last_rebuild: nil, rebuild_from: nil)
        #   Configuration for building loan tapes
        #
        #   @param rebuild_needed [Boolean] Whether the account's loan tapes need to be rebuilt or not
        #
        #   @param last_rebuild [Date] The date for which the account's loan tapes were last rebuilt
        #
        #   @param rebuild_from [Date] Date from which to start rebuilding from if the account requires a rebuild
      end
    end
  end
end
