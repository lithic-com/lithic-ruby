# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ApplyParams < Lithic::BaseModel
        extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :account_tokens

        # Card tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :card_tokens

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        attr_accessor :program_level

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_card_tokens

        sig { params(excluded_card_tokens: T::Array[String]).void }
        attr_writer :excluded_card_tokens

        sig do
          params(
            account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            excluded_card_tokens: T::Array[String],
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(account_tokens:, card_tokens:, program_level:, excluded_card_tokens: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                account_tokens: T::Array[String],
                card_tokens: T::Array[String],
                program_level: T::Boolean,
                excluded_card_tokens: T::Array[String],
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
