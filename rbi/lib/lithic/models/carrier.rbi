# typed: strong

module Lithic
  module Models
    class Carrier < Lithic::BaseModel
      # QR code url to display on the card carrier
      sig { returns(T.nilable(String)) }
      def qr_code_url
      end

      sig { params(_: String).returns(String) }
      def qr_code_url=(_)
      end

      sig { params(qr_code_url: String).returns(T.attached_class) }
      def self.new(qr_code_url: nil)
      end

      sig { override.returns({qr_code_url: String}) }
      def to_hash
      end
    end
  end
end
