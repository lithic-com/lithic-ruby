# typed: strong

module Lithic
  module Models
    class BookTransferListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Date string in RFC 3339 format. Only entries created after the specified time
      # will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # Book Transfer category to be returned.
      sig { returns(T.nilable(Lithic::Models::BookTransferListParams::Category::OrSymbol)) }
      attr_reader :category

      sig { params(category: Lithic::Models::BookTransferListParams::Category::OrSymbol).void }
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

      # Globally unique identifier for the financial account or card that will send the
      # funds. Accepted type dependent on the program's use case.
      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Book transfer result to be returned.
      sig { returns(T.nilable(Lithic::Models::BookTransferListParams::Result::OrSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::Models::BookTransferListParams::Result::OrSymbol).void }
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Book transfer status to be returned.
      sig { returns(T.nilable(Lithic::Models::BookTransferListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::BookTransferListParams::Status::OrSymbol).void }
      attr_writer :status

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
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
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
      ); end
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
      def to_hash; end

      # Book Transfer category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferListParams::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::BookTransferListParams::Category::TaggedSymbol) }

        BALANCE_OR_FUNDING =
          T.let(:BALANCE_OR_FUNDING, Lithic::Models::BookTransferListParams::Category::TaggedSymbol)
        FEE = T.let(:FEE, Lithic::Models::BookTransferListParams::Category::TaggedSymbol)
        REWARD = T.let(:REWARD, Lithic::Models::BookTransferListParams::Category::TaggedSymbol)
        ADJUSTMENT = T.let(:ADJUSTMENT, Lithic::Models::BookTransferListParams::Category::TaggedSymbol)
        DERECOGNITION = T.let(:DERECOGNITION, Lithic::Models::BookTransferListParams::Category::TaggedSymbol)
        DISPUTE = T.let(:DISPUTE, Lithic::Models::BookTransferListParams::Category::TaggedSymbol)
        INTERNAL = T.let(:INTERNAL, Lithic::Models::BookTransferListParams::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::BookTransferListParams::Category::TaggedSymbol]) }
        def self.values; end
      end

      # Book transfer result to be returned.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferListParams::Result) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::BookTransferListParams::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::BookTransferListParams::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::BookTransferListParams::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::BookTransferListParams::Result::TaggedSymbol]) }
        def self.values; end
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::BookTransferListParams::Status::TaggedSymbol) }

        DECLINED = T.let(:DECLINED, Lithic::Models::BookTransferListParams::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::BookTransferListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::BookTransferListParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
