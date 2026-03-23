# typed: strong

module Lithic
  module Models
    class Carrier < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Carrier, Lithic::Internal::AnyHash) }

      # QR code URL to display on the card carrier. The `qr_code_url` field requires
      # your domain to be allowlisted by Lithic before use. Contact Support to configure
      # your QR code domain
      sig { returns(T.nilable(String)) }
      attr_reader :qr_code_url

      sig { params(qr_code_url: String).void }
      attr_writer :qr_code_url

      sig { params(qr_code_url: String).returns(T.attached_class) }
      def self.new(
        # QR code URL to display on the card carrier. The `qr_code_url` field requires
        # your domain to be allowlisted by Lithic before use. Contact Support to configure
        # your QR code domain
        qr_code_url: nil
      )
      end

      sig { override.returns({ qr_code_url: String }) }
      def to_hash
      end
    end
  end
end
