# frozen_string_literal: true

module Lithic
  module Models
    # Type of account financial account
    module AccountFinancialAccountType
      extend Lithic::Enum

      ISSUING = :ISSUING
      OPERATING = :OPERATING

      finalize!
    end
  end
end
