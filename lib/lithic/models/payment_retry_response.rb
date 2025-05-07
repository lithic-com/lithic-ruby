# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#retry_
    class PaymentRetryResponse < Lithic::Models::Payment
      # @!attribute balance
      #   Balance
      #
      #   @return [Lithic::Balance, nil]
      optional :balance, -> { Lithic::Balance }

      # @!method initialize(balance: nil)
      #   @param balance [Lithic::Balance] Balance
    end
  end
end
