# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#create
    class PaymentCreateResponse < Lithic::Models::Payment
      # @!attribute balance
      #   Balance
      #
      #   @return [Lithic::Models::Balance, nil]
      optional :balance, -> { Lithic::Balance }

      # @!method initialize(balance: nil)
      #   Payment transaction
      #
      #   @param balance [Lithic::Models::Balance] Balance
    end
  end
end
