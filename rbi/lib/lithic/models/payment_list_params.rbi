# typed: strong

module Lithic
  module Models
    class PaymentListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      def begin_
      end

      sig { params(_: Time).returns(Time) }
      def begin_=(_)
      end

      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      sig { returns(T.nilable(Lithic::Models::PaymentListParams::Category::OrSymbol)) }
      def category
      end

      sig do
        params(_: Lithic::Models::PaymentListParams::Category::OrSymbol)
          .returns(Lithic::Models::PaymentListParams::Category::OrSymbol)
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

      sig { returns(T.nilable(String)) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      sig { returns(T.nilable(Lithic::Models::PaymentListParams::Result::OrSymbol)) }
      def result
      end

      sig do
        params(_: Lithic::Models::PaymentListParams::Result::OrSymbol)
          .returns(Lithic::Models::PaymentListParams::Result::OrSymbol)
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

      sig { returns(T.nilable(Lithic::Models::PaymentListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Lithic::Models::PaymentListParams::Status::OrSymbol)
          .returns(Lithic::Models::PaymentListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Lithic::Models::PaymentListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::Models::PaymentListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::Models::PaymentListParams::Status::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        begin_: nil,
        business_account_token: nil,
        category: nil,
        end_: nil,
        ending_before: nil,
        financial_account_token: nil,
        page_size: nil,
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
              account_token: String,
              begin_: Time,
              business_account_token: String,
              category: Lithic::Models::PaymentListParams::Category::OrSymbol,
              end_: Time,
              ending_before: String,
              financial_account_token: String,
              page_size: Integer,
              result: Lithic::Models::PaymentListParams::Result::OrSymbol,
              starting_after: String,
              status: Lithic::Models::PaymentListParams::Status::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentListParams::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::PaymentListParams::Category::TaggedSymbol) }

        ACH = T.let(:ACH, Lithic::Models::PaymentListParams::Category::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::PaymentListParams::Category::TaggedSymbol]) }
          def values
          end
        end
      end

      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentListParams::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::PaymentListParams::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::PaymentListParams::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::PaymentListParams::Result::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::PaymentListParams::Result::TaggedSymbol]) }
          def values
          end
        end
      end

      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::PaymentListParams::Status::TaggedSymbol) }

        DECLINED = T.let(:DECLINED, Lithic::Models::PaymentListParams::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::PaymentListParams::Status::TaggedSymbol)
        RETURNED = T.let(:RETURNED, Lithic::Models::PaymentListParams::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::PaymentListParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::PaymentListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
