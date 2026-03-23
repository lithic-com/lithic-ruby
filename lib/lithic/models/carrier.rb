# frozen_string_literal: true

module Lithic
  module Models
    class Carrier < Lithic::Internal::Type::BaseModel
      # @!attribute qr_code_url
      #   QR code URL to display on the card carrier. The `qr_code_url` field requires
      #   your domain to be allowlisted by Lithic before use. Contact Support to configure
      #   your QR code domain
      #
      #   @return [String, nil]
      optional :qr_code_url, String

      # @!method initialize(qr_code_url: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Carrier}
      #   for more details.
      #
      #   @param qr_code_url [String] QR code URL to display on the card carrier. The `qr_code_url` field requires you
    end
  end
end
