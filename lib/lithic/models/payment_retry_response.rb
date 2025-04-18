# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#retry_
    class PaymentRetryResponse < Lithic::Models::Payment
      # @!attribute balance
      #   Balance
      #
      #   @return [Lithic::Models::Balance, nil]
      optional :balance, -> { Lithic::Models::Balance }

      # @!method initialize(balance: nil)
      #   @param balance [Lithic::Models::Balance]
    end
  end
end
