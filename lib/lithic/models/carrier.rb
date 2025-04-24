# frozen_string_literal: true

module Lithic
  module Models
    class Carrier < Lithic::Internal::Type::BaseModel
      # @!attribute qr_code_url
      #   QR code url to display on the card carrier
      #
      #   @return [String, nil]
      optional :qr_code_url, String

      # @!method initialize(qr_code_url: nil)
      #   @param qr_code_url [String] QR code url to display on the card carrier
    end
  end
end
