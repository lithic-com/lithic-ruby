# typed: strong

module Lithic
  module Models
    module Cards
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
        sig { returns(T.nilable(Lithic::Models::Cards::FinancialTransactionListParams::Category::OrSymbol)) }
        def category
        end

        sig do
          params(_: Lithic::Models::Cards::FinancialTransactionListParams::Category::OrSymbol)
            .returns(Lithic::Models::Cards::FinancialTransactionListParams::Category::OrSymbol)
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
        sig { returns(T.nilable(Lithic::Models::Cards::FinancialTransactionListParams::Result::OrSymbol)) }
        def result
        end

        sig do
          params(_: Lithic::Models::Cards::FinancialTransactionListParams::Result::OrSymbol)
            .returns(Lithic::Models::Cards::FinancialTransactionListParams::Result::OrSymbol)
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
        sig { returns(T.nilable(Lithic::Models::Cards::FinancialTransactionListParams::Status::OrSymbol)) }
        def status
        end

        sig do
          params(_: Lithic::Models::Cards::FinancialTransactionListParams::Status::OrSymbol)
            .returns(Lithic::Models::Cards::FinancialTransactionListParams::Status::OrSymbol)
        end
        def status=(_)
        end

        sig do
          params(
            begin_: Time,
            category: Lithic::Models::Cards::FinancialTransactionListParams::Category::OrSymbol,
            end_: Time,
            ending_before: String,
            result: Lithic::Models::Cards::FinancialTransactionListParams::Result::OrSymbol,
            starting_after: String,
            status: Lithic::Models::Cards::FinancialTransactionListParams::Status::OrSymbol,
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
                category: Lithic::Models::Cards::FinancialTransactionListParams::Category::OrSymbol,
                end_: Time,
                ending_before: String,
                result: Lithic::Models::Cards::FinancialTransactionListParams::Result::OrSymbol,
                starting_after: String,
                status: Lithic::Models::Cards::FinancialTransactionListParams::Status::OrSymbol,
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
            T.type_alias { T.all(Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Category::TaggedSymbol) }

          CARD = T.let(:CARD, Lithic::Models::Cards::FinancialTransactionListParams::Category::TaggedSymbol)
          TRANSFER =
            T.let(:TRANSFER, Lithic::Models::Cards::FinancialTransactionListParams::Category::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::Cards::FinancialTransactionListParams::Category::TaggedSymbol]) }
            def values
            end
          end
        end

        # Financial Transaction result to be returned.
        module Result
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Result) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Result::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::Cards::FinancialTransactionListParams::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::Cards::FinancialTransactionListParams::Result::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::Cards::FinancialTransactionListParams::Result::TaggedSymbol]) }
            def values
            end
          end
        end

        # Financial Transaction status to be returned.
        module Status
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Status::TaggedSymbol) }

          DECLINED = T.let(:DECLINED, Lithic::Models::Cards::FinancialTransactionListParams::Status::TaggedSymbol)
          EXPIRED = T.let(:EXPIRED, Lithic::Models::Cards::FinancialTransactionListParams::Status::TaggedSymbol)
          PENDING = T.let(:PENDING, Lithic::Models::Cards::FinancialTransactionListParams::Status::TaggedSymbol)
          RETURNED = T.let(:RETURNED, Lithic::Models::Cards::FinancialTransactionListParams::Status::TaggedSymbol)
          SETTLED = T.let(:SETTLED, Lithic::Models::Cards::FinancialTransactionListParams::Status::TaggedSymbol)
          VOIDED = T.let(:VOIDED, Lithic::Models::Cards::FinancialTransactionListParams::Status::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::Cards::FinancialTransactionListParams::Status::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
