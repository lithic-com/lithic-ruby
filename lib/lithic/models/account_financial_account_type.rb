# frozen_string_literal: true

module Lithic
  module Models
    # @abstract
    #
    # Type of account financial account
    class AccountFinancialAccountType < Lithic::Enum
      ISSUING = :ISSUING
      OPERATING = :OPERATING

      finalize!
    end
  end
end
