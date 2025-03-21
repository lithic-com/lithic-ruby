# typed: strong

module Lithic
  module Models
    class Carrier < Lithic::BaseModel
      # QR code url to display on the card carrier
      sig { returns(T.nilable(String)) }
      attr_reader :qr_code_url

      sig { params(qr_code_url: String).void }
      attr_writer :qr_code_url

      sig { params(qr_code_url: String).returns(T.attached_class) }
      def self.new(qr_code_url: nil)
      end

      sig { override.returns({qr_code_url: String}) }
      def to_hash
      end
    end
  end
end
