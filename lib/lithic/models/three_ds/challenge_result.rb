# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # Whether the Cardholder has Approved or Declined the issued Challenge
      module ChallengeResult
        extend Lithic::Enum

        APPROVE = :APPROVE
        DECLINE_BY_CUSTOMER = :DECLINE_BY_CUSTOMER

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
