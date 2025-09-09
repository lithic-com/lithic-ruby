# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2UpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::V2UpdateParams, Lithic::Internal::AnyHash)
          end

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The desired state of the Auth Rule.
        #
        # Note that only deactivating an Auth Rule through this endpoint is supported at
        # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        # should be used to promote a draft to the currently active version.
        sig do
          returns(T.nilable(Lithic::AuthRules::V2UpdateParams::State::OrSymbol))
        end
        attr_reader :state

        sig do
          params(state: Lithic::AuthRules::V2UpdateParams::State::OrSymbol).void
        end
        attr_writer :state

        # Card tokens to which the Auth Rule applies.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :card_tokens

        sig { params(card_tokens: T::Array[String]).void }
        attr_writer :card_tokens

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_card_tokens

        sig { params(excluded_card_tokens: T::Array[String]).void }
        attr_writer :excluded_card_tokens

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :program_level

        sig { params(program_level: T::Boolean).void }
        attr_writer :program_level

        sig do
          params(
            name: T.nilable(String),
            state: Lithic::AuthRules::V2UpdateParams::State::OrSymbol,
            card_tokens: T::Array[String],
            excluded_card_tokens: T::Array[String],
            program_level: T::Boolean,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Auth Rule Name
          name: nil,
          # The desired state of the Auth Rule.
          #
          # Note that only deactivating an Auth Rule through this endpoint is supported at
          # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
          # should be used to promote a draft to the currently active version.
          state: nil,
          # Card tokens to which the Auth Rule applies.
          card_tokens: nil,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: T.nilable(String),
              state: Lithic::AuthRules::V2UpdateParams::State::OrSymbol,
              card_tokens: T::Array[String],
              excluded_card_tokens: T::Array[String],
              program_level: T::Boolean,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The desired state of the Auth Rule.
        #
        # Note that only deactivating an Auth Rule through this endpoint is supported at
        # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        # should be used to promote a draft to the currently active version.
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::V2UpdateParams::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INACTIVE =
            T.let(
              :INACTIVE,
              Lithic::AuthRules::V2UpdateParams::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2UpdateParams::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
