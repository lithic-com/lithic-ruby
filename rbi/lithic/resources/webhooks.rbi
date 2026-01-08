# typed: strong

module Lithic
  module Resources
    class Webhooks
      sig do
        params(
          payload: String,
          headers: T::Hash[String, String],
          secret: T.nilable(String)
        ).returns(Lithic::ParsedWebhookEvent::Variants)
      end
      def parse(payload, headers:, secret: nil)
      end

      sig { params(payload: String).returns(Lithic::ParsedWebhookEvent::Variants) }
      def parse_unsafe(payload)
      end

      sig do
        params(
          payload: String,
          headers: T::Hash[String, String],
          secret: T.nilable(String)
        ).returns(T::Hash[Symbol, T.untyped])
      end
      def verify_signature(payload:, headers:, secret: nil)
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
