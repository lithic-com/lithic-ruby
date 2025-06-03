# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::V2ListParams, Lithic::Internal::AnyHash)
          end

        # Only return Auth Rules that are bound to the provided account token.
        sig { returns(T.nilable(String)) }
        attr_reader :account_token

        sig { params(account_token: String).void }
        attr_writer :account_token

        # Only return Auth Rules that are bound to the provided card token.
        sig { returns(T.nilable(String)) }
        attr_reader :card_token

        sig { params(card_token: String).void }
        attr_writer :card_token

        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        sig { returns(T.nilable(String)) }
        attr_reader :ending_before

        sig { params(ending_before: String).void }
        attr_writer :ending_before

        # Only return Auth rules that are executed during the provided event stream.
        sig do
          returns(
            T.nilable(Lithic::AuthRules::V2ListParams::EventStream::OrSymbol)
          )
        end
        attr_reader :event_stream

        sig do
          params(
            event_stream: Lithic::AuthRules::V2ListParams::EventStream::OrSymbol
          ).void
        end
        attr_writer :event_stream

        # Page size (for pagination).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Only return Auth Rules that are bound to the provided scope.
        sig do
          returns(T.nilable(Lithic::AuthRules::V2ListParams::Scope::OrSymbol))
        end
        attr_reader :scope

        sig do
          params(scope: Lithic::AuthRules::V2ListParams::Scope::OrSymbol).void
        end
        attr_writer :scope

        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        sig do
          params(
            account_token: String,
            card_token: String,
            ending_before: String,
            event_stream:
              Lithic::AuthRules::V2ListParams::EventStream::OrSymbol,
            page_size: Integer,
            scope: Lithic::AuthRules::V2ListParams::Scope::OrSymbol,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Only return Auth Rules that are bound to the provided account token.
          account_token: nil,
          # Only return Auth Rules that are bound to the provided card token.
          card_token: nil,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Only return Auth rules that are executed during the provided event stream.
          event_stream: nil,
          # Page size (for pagination).
          page_size: nil,
          # Only return Auth Rules that are bound to the provided scope.
          scope: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_token: String,
              card_token: String,
              ending_before: String,
              event_stream:
                Lithic::AuthRules::V2ListParams::EventStream::OrSymbol,
              page_size: Integer,
              scope: Lithic::AuthRules::V2ListParams::Scope::OrSymbol,
              starting_after: String,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Only return Auth rules that are executed during the provided event stream.
        module EventStream
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::V2ListParams::EventStream)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION =
            T.let(
              :AUTHORIZATION,
              Lithic::AuthRules::V2ListParams::EventStream::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION =
            T.let(
              :THREE_DS_AUTHENTICATION,
              Lithic::AuthRules::V2ListParams::EventStream::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::V2ListParams::EventStream::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Only return Auth Rules that are bound to the provided scope.
        module Scope
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::V2ListParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROGRAM =
            T.let(
              :PROGRAM,
              Lithic::AuthRules::V2ListParams::Scope::TaggedSymbol
            )
          ACCOUNT =
            T.let(
              :ACCOUNT,
              Lithic::AuthRules::V2ListParams::Scope::TaggedSymbol
            )
          CARD =
            T.let(:CARD, Lithic::AuthRules::V2ListParams::Scope::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2ListParams::Scope::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
