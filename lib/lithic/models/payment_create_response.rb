# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#create
    class PaymentCreateResponse < Lithic::Models::Payment
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

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
