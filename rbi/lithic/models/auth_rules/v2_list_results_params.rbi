# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ListResultsParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::V2ListResultsParams,
              Lithic::Internal::AnyHash
            )
          end

        # Filter by Auth Rule token
        sig { returns(T.nilable(String)) }
        attr_reader :auth_rule_token

        sig { params(auth_rule_token: String).void }
        attr_writer :auth_rule_token

        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        sig { returns(T.nilable(String)) }
        attr_reader :ending_before

        sig { params(ending_before: String).void }
        attr_writer :ending_before

        # Filter by event token
        sig { returns(T.nilable(String)) }
        attr_reader :event_token

        sig { params(event_token: String).void }
        attr_writer :event_token

        # Filter by whether the rule evaluation produced any actions. When not provided,
        # all results are returned.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_actions

        sig { params(has_actions: T::Boolean).void }
        attr_writer :has_actions

        # Page size (for pagination).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        sig do
          params(
            auth_rule_token: String,
            ending_before: String,
            event_token: String,
            has_actions: T::Boolean,
            page_size: Integer,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by Auth Rule token
          auth_rule_token: nil,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Filter by event token
          event_token: nil,
          # Filter by whether the rule evaluation produced any actions. When not provided,
          # all results are returned.
          has_actions: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              auth_rule_token: String,
              ending_before: String,
              event_token: String,
              has_actions: T::Boolean,
              page_size: Integer,
              starting_after: String,
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
