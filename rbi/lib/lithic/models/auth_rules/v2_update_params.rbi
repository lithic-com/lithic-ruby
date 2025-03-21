# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2UpdateParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # Account tokens to which the Auth Rule applies.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :account_tokens

        sig { params(account_tokens: T::Array[String]).void }
        attr_writer :account_tokens

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The desired state of the Auth Rule.
        #
        #   Note that only deactivating an Auth Rule through this endpoint is supported at
        #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        #   should be used to promote a draft to the currently active version.
        sig { returns(T.nilable(Lithic::Models::AuthRules::V2UpdateParams::State::OrSymbol)) }
        attr_reader :state

        sig { params(state: Lithic::Models::AuthRules::V2UpdateParams::State::OrSymbol).void }
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
            account_tokens: T::Array[String],
            name: T.nilable(String),
            state: Lithic::Models::AuthRules::V2UpdateParams::State::OrSymbol,
            card_tokens: T::Array[String],
            excluded_card_tokens: T::Array[String],
            program_level: T::Boolean,
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_tokens: nil,
          name: nil,
          state: nil,
          card_tokens: nil,
          excluded_card_tokens: nil,
          program_level: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                account_tokens: T::Array[String],
                name: T.nilable(String),
                state: Lithic::Models::AuthRules::V2UpdateParams::State::OrSymbol,
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
        #   Note that only deactivating an Auth Rule through this endpoint is supported at
        #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        #   should be used to promote a draft to the currently active version.
        module State
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::V2UpdateParams::State) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::AuthRules::V2UpdateParams::State::TaggedSymbol) }

          INACTIVE = T.let(:INACTIVE, Lithic::Models::AuthRules::V2UpdateParams::State::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::AuthRules::V2UpdateParams::State::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
