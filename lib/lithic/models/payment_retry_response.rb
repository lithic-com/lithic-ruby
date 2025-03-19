# frozen_string_literal: true

module Lithic
  module Models
    class PaymentRetryResponse < Lithic::Models::Payment
      # @!attribute [r] balance
      #   Balance
      #
      #   @return [Lithic::Models::Balance, nil]
      optional :balance, -> { Lithic::Models::Balance }

      # @!parse
      #   # @return [Lithic::Models::Balance]
      #   attr_writer :balance

      # @!parse
      #   # @param balance [Lithic::Models::Balance]
      #   #
      #   def initialize(balance: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
