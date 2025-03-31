# typed: strong

module Lithic
  module Models
    class PaymentListParams < Lithic::BaseModel
      extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      sig { returns(T.nilable(Lithic::Models::PaymentListParams::Category::OrSymbol)) }
      attr_reader :category

      sig { params(category: Lithic::Models::PaymentListParams::Category::OrSymbol).void }
      attr_writer :category

      # Date string in RFC 3339 format. Only entries created before the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_

      sig { params(end_: Time).void }
      attr_writer :end_

      # A cursor representing an item's token before which a page of results should end.
      #   Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      attr_reader :ending_before

      sig { params(ending_before: String).void }
      attr_writer :ending_before

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig { returns(T.nilable(Lithic::Models::PaymentListParams::Result::OrSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::Models::PaymentListParams::Result::OrSymbol).void }
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      sig { returns(T.nilable(Lithic::Models::PaymentListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::PaymentListParams::Status::OrSymbol).void }
      attr_writer :status

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

        sig { override.returns(T::Array[Lithic::Models::PaymentListParams::Category::TaggedSymbol]) }
        def self.values
        end
      end

      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentListParams::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::PaymentListParams::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::PaymentListParams::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::PaymentListParams::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::PaymentListParams::Result::TaggedSymbol]) }
        def self.values
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

        sig { override.returns(T::Array[Lithic::Models::PaymentListParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
