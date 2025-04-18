# frozen_string_literal: true

module Lithic
  module Models
    module VerificationMethod
      extend Lithic::Internal::Type::Enum

      MANUAL = :MANUAL
      MICRO_DEPOSIT = :MICRO_DEPOSIT
      PLAID = :PLAID
      PRENOTE = :PRENOTE
      EXTERNALLY_VERIFIED = :EXTERNALLY_VERIFIED

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
