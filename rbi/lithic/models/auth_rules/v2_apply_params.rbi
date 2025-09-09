# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ApplyParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::V2ApplyParams, Lithic::Internal::AnyHash)
          end

        # Account tokens to which the Auth Rule applies.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :account_tokens

        sig { params(account_tokens: T::Array[String]).void }
        attr_writer :account_tokens

        # Business Account tokens to which the Auth Rule applies.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :business_account_tokens

        sig { params(business_account_tokens: T::Array[String]).void }
        attr_writer :business_account_tokens

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
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            account_tokens: T::Array[String],
            business_account_tokens: T::Array[String],
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Account tokens to which the Auth Rule applies.
          account_tokens: nil,
          # Business Account tokens to which the Auth Rule applies.
          business_account_tokens: nil,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_tokens: T::Array[String],
              business_account_tokens: T::Array[String],
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
