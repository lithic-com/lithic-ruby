# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2UpdateParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # Account tokens to which the Auth Rule applies.
        sig { returns(T.nilable(T::Array[String])) }
        def account_tokens
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def account_tokens=(_)
        end

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        # The desired state of the Auth Rule.
        #
        #   Note that only deactivating an Auth Rule through this endpoint is supported at
        #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        #   should be used to promote a draft to the currently active version.
        sig { returns(T.nilable(Symbol)) }
        def state
        end

        sig { params(_: Symbol).returns(Symbol) }
        def state=(_)
        end

        # Card tokens to which the Auth Rule applies.
        sig { returns(T.nilable(T::Array[String])) }
        def card_tokens
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def card_tokens=(_)
        end

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        def excluded_card_tokens
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def excluded_card_tokens=(_)
        end

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T.nilable(T::Boolean)) }
        def program_level
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def program_level=(_)
        end

        sig do
          params(
            account_tokens: T::Array[String],
            name: T.nilable(String),
            state: Symbol,
            card_tokens: T::Array[String],
            excluded_card_tokens: T::Array[String],
            program_level: T::Boolean,
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
                state: Symbol,
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
        class State < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          INACTIVE = :INACTIVE
        end
      end
    end
  end
end
