# typed: strong

module Lithic
  module Models
    class NetworkProgramRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::NetworkProgramRetrieveParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :network_program_token

      sig do
        params(
          network_program_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(network_program_token:, request_options: {})
      end

      sig do
        override.returns(
          {
            network_program_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
