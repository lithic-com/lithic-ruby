# typed: strong

module Lithic
  module Models
    class CardAuthorizationChallengeResponseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::CardAuthorizationChallengeResponseParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :event_token

      # Whether the cardholder has approved or declined the issued challenge
      sig do
        returns(
          Lithic::CardAuthorizationChallengeResponseParams::Response::OrSymbol
        )
      end
      attr_accessor :response

      sig do
        params(
          event_token: String,
          response:
            Lithic::CardAuthorizationChallengeResponseParams::Response::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        event_token:,
        # Whether the cardholder has approved or declined the issued challenge
        response:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            event_token: String,
            response:
              Lithic::CardAuthorizationChallengeResponseParams::Response::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Whether the cardholder has approved or declined the issued challenge
      module Response
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::CardAuthorizationChallengeResponseParams::Response
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVE =
          T.let(
            :APPROVE,
            Lithic::CardAuthorizationChallengeResponseParams::Response::TaggedSymbol
          )
        DECLINE =
          T.let(
            :DECLINE,
            Lithic::CardAuthorizationChallengeResponseParams::Response::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardAuthorizationChallengeResponseParams::Response::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
