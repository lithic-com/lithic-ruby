# frozen_string_literal: true

module Lithic
  module Models
    module VerificationMethod
      extend Lithic::Internal::Type::Enum

      MANUAL = :MANUAL
      MICRO_DEPOSIT = :MICRO_DEPOSIT
      PRENOTE = :PRENOTE
      EXTERNALLY_VERIFIED = :EXTERNALLY_VERIFIED
      UNVERIFIED = :UNVERIFIED

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
