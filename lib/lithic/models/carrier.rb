# frozen_string_literal: true

module Lithic
  module Models
    class Carrier < Lithic::BaseModel
      # @!attribute [r] qr_code_url
      #   QR code url to display on the card carrier
      #
      #   @return [String, nil]
      optional :qr_code_url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :qr_code_url

      # @!parse
      #   # @param qr_code_url [String]
      #   #
      #   def initialize(qr_code_url: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
