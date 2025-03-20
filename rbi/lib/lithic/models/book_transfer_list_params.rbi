# typed: strong

module Lithic
  module Models
    class BookTransferListParams < Lithic::BaseModel
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

      # Book Transfer category to be returned.
      sig { returns(T.nilable(Lithic::Models::BookTransferListParams::Category::OrSymbol)) }
      def category
      end

      sig do
        params(_: Lithic::Models::BookTransferListParams::Category::OrSymbol)
          .returns(Lithic::Models::BookTransferListParams::Category::OrSymbol)
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

      # Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
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

      # Book transfer result to be returned.
      sig { returns(T.nilable(Lithic::Models::BookTransferListParams::Result::OrSymbol)) }
      def result
      end

      sig do
        params(_: Lithic::Models::BookTransferListParams::Result::OrSymbol)
          .returns(Lithic::Models::BookTransferListParams::Result::OrSymbol)
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

      # Book transfer status to be returned.
      sig { returns(T.nilable(Lithic::Models::BookTransferListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Lithic::Models::BookTransferListParams::Status::OrSymbol)
          .returns(Lithic::Models::BookTransferListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Lithic::Models::BookTransferListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::Models::BookTransferListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::Models::BookTransferListParams::Status::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
              category: Lithic::Models::BookTransferListParams::Category::OrSymbol,
              end_: Time,
              ending_before: String,
              financial_account_token: String,
              page_size: Integer,
              result: Lithic::Models::BookTransferListParams::Result::OrSymbol,
              starting_after: String,
              status: Lithic::Models::BookTransferListParams::Status::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Book Transfer category to be returned.
      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferListParams::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::BookTransferListParams::Category::TaggedSymbol) }

        BALANCE_OR_FUNDING =
          T.let(:BALANCE_OR_FUNDING, Lithic::Models::BookTransferListParams::Category::OrSymbol)
        FEE = T.let(:FEE, Lithic::Models::BookTransferListParams::Category::OrSymbol)
        REWARD = T.let(:REWARD, Lithic::Models::BookTransferListParams::Category::OrSymbol)
        ADJUSTMENT = T.let(:ADJUSTMENT, Lithic::Models::BookTransferListParams::Category::OrSymbol)
        DERECOGNITION = T.let(:DERECOGNITION, Lithic::Models::BookTransferListParams::Category::OrSymbol)
        DISPUTE = T.let(:DISPUTE, Lithic::Models::BookTransferListParams::Category::OrSymbol)
        INTERNAL = T.let(:INTERNAL, Lithic::Models::BookTransferListParams::Category::OrSymbol)
      end

      # Book transfer result to be returned.
      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferListParams::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::BookTransferListParams::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::BookTransferListParams::Result::OrSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::BookTransferListParams::Result::OrSymbol)
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::BookTransferListParams::Status::TaggedSymbol) }

        DECLINED = T.let(:DECLINED, Lithic::Models::BookTransferListParams::Status::OrSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::BookTransferListParams::Status::OrSymbol)
      end
    end
  end
end
