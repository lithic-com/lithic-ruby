# frozen_string_literal: true

module Lithic
  module Models
    class Carrier < Lithic::Internal::Type::BaseModel
      # @!attribute [r] qr_code_url
      #   QR code url to display on the card carrier
      #
      #   @return [String, nil]
      optional :qr_code_url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :qr_code_url

      # @!method initialize(qr_code_url: nil)
      #   @param qr_code_url [String]
    end
  end
end
