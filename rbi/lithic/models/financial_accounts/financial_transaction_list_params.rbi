# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialTransactionListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        sig { returns(T.nilable(Time)) }
        attr_reader :begin_

        sig { params(begin_: Time).void }
        attr_writer :begin_

        # Financial Transaction category to be returned.
        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::OrSymbol)) }
        attr_reader :category

        sig do
          params(category: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::OrSymbol)
            .void
        end
        attr_writer :category

        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        sig { returns(T.nilable(Time)) }
        attr_reader :end_

        sig { params(end_: Time).void }
        attr_writer :end_

        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        sig { returns(T.nilable(String)) }
        attr_reader :ending_before

        sig { params(ending_before: String).void }
        attr_writer :ending_before

        # Financial Transaction result to be returned.
        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::OrSymbol)) }
        attr_reader :result

        sig { params(result: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::OrSymbol).void }
        attr_writer :result

        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        # Financial Transaction status to be returned.
        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::OrSymbol)) }
        attr_reader :status

        sig { params(status: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            begin_: Time,
            category: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::OrSymbol,
            end_: Time,
            ending_before: String,
            result: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::OrSymbol,
            starting_after: String,
            status: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::OrSymbol,
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # Date string in RFC 3339 format. Only entries created after the specified time
          # will be included. UTC time zone.
          begin_: nil,
          # Financial Transaction category to be returned.
          category: nil,
          # Date string in RFC 3339 format. Only entries created before the specified time
          # will be included. UTC time zone.
          end_: nil,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Financial Transaction result to be returned.
          result: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          # Financial Transaction status to be returned.
          status: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                begin_: Time,
                category: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::OrSymbol,
                end_: Time,
                ending_before: String,
                result: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::OrSymbol,
                starting_after: String,
                status: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::OrSymbol,
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash; end

        # Financial Transaction category to be returned.
        module Category
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(:ACH, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::TaggedSymbol)
          CARD =
            T.let(:CARD, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::TaggedSymbol)
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # Financial Transaction result to be returned.
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(:APPROVED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::TaggedSymbol)
          DECLINED =
            T.let(:DECLINED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::TaggedSymbol])
          end
          def self.values; end
        end

        # Financial Transaction status to be returned.
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DECLINED =
            T.let(:DECLINED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol)
          EXPIRED =
            T.let(:EXPIRED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol)
          PENDING =
            T.let(:PENDING, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol)
          RETURNED =
            T.let(:RETURNED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol)
          SETTLED =
            T.let(:SETTLED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol)
          VOIDED =
            T.let(:VOIDED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol])
          end
          def self.values; end
        end
      end
    end
  end
end
