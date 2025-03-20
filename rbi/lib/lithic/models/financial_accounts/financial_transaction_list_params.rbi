# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialTransactionListParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        sig { returns(T.nilable(Time)) }
        def begin_
        end

        sig { params(_: Time).returns(Time) }
        def begin_=(_)
        end

        # Financial Transaction category to be returned.
        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::OrSymbol)) }
        def category
        end

        sig do
          params(_: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::OrSymbol)
            .returns(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::OrSymbol)
        end
        def category=(_)
        end

        # Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        sig { returns(T.nilable(Time)) }
        def end_
        end

        sig { params(_: Time).returns(Time) }
        def end_=(_)
        end

        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        sig { returns(T.nilable(String)) }
        def ending_before
        end

        sig { params(_: String).returns(String) }
        def ending_before=(_)
        end

        # Financial Transaction result to be returned.
        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::OrSymbol)) }
        def result
        end

        sig do
          params(_: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::OrSymbol)
            .returns(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::OrSymbol)
        end
        def result=(_)
        end

        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        sig { returns(T.nilable(String)) }
        def starting_after
        end

        sig { params(_: String).returns(String) }
        def starting_after=(_)
        end

        # Financial Transaction status to be returned.
        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::OrSymbol)) }
        def status
        end

        sig do
          params(_: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::OrSymbol)
            .returns(Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::OrSymbol)
        end
        def status=(_)
        end

        sig do
          params(
            begin_: Time,
            category: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::OrSymbol,
            end_: Time,
            ending_before: String,
            result: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::OrSymbol,
            starting_after: String,
            status: Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::OrSymbol,
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          begin_: nil,
          category: nil,
          end_: nil,
          ending_before: nil,
          result: nil,
          starting_after: nil,
          status: nil,
          request_options: {}
        )
        end

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
        def to_hash
        end

        # Financial Transaction category to be returned.
        module Category
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::TaggedSymbol) }

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

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        # Financial Transaction result to be returned.
        module Result
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::TaggedSymbol) }

          APPROVED =
            T.let(:APPROVED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::TaggedSymbol)
          DECLINED =
            T.let(:DECLINED, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result::TaggedSymbol])
            end
            def values
            end
          end
        end

        # Financial Transaction status to be returned.
        module Status
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol) }

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

          class << self
            sig do
              override
                .returns(T::Array[Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status::TaggedSymbol])
            end
            def values
            end
          end
        end
      end
    end
  end
end
