# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#create
    class Card < Lithic::Models::NonPCICard
      # @!attribute cvv
      #   Three or four digit CVV printed on the card. Amex cards use four digit CVVs
      #
      #   @return [String, nil]
      optional :cvv, String

      # @!attribute pan
      #   Primary Account Number (PAN) (i.e. the card number). Customers must be PCI
      #   compliant to have PAN returned as a field in production. Please contact
      #   https://support.lithic.com/ for questions.
      #
      #   @return [String, nil]
      optional :pan, String

      # @!method initialize(cvv: nil, pan: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Card} for
      #   more details.
      #
      #   Card details with potentially PCI sensitive information for Enterprise customers
      #
      #   @param cvv [String] Three or four digit CVV printed on the card. Amex cards use four digit CVVs
      #
      #   @param pan [String] Primary Account Number (PAN) (i.e. the card number). Customers must be PCI compl
    end
  end
end
