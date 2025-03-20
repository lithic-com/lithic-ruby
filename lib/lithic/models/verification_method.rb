# frozen_string_literal: true

module Lithic
  module Models
    module VerificationMethod
      extend Lithic::Enum

      MANUAL = :MANUAL
      MICRO_DEPOSIT = :MICRO_DEPOSIT
      PLAID = :PLAID
      PRENOTE = :PRENOTE
      EXTERNALLY_VERIFIED = :EXTERNALLY_VERIFIED

      finalize!
    end
  end
end
