# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#create
    class Card < Lithic::Models::NonPCICard
      # @!attribute cvv
      #   Three digit cvv printed on the back of the card.
      #
      #   @return [String, nil]
      optional :cvv, String

      # @!attribute pan
      #   Primary Account Number (PAN) (i.e. the card number). Customers must be PCI
      #   compliant to have PAN returned as a field in production. Please contact
      #   support@lithic.com for questions.
      #
      #   @return [String, nil]
      optional :pan, String

      # @!method initialize(cvv: nil, pan: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Card} for more
      #   details.
      #
      #   Card details with potentially PCI sensitive information for Enterprise customers
      #
      #   @param cvv [String] Three digit cvv printed on the back of the card.
      #
      #   @param pan [String] Primary Account Number (PAN) (i.e. the card number). Customers must be PCI compl
    end
  end
end
