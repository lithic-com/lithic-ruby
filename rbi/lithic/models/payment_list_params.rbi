# typed: strong

module Lithic
  module Models
    class PaymentListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::PaymentListParams, Lithic::Internal::AnyHash)
        end

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

      sig { returns(T.nilable(Lithic::PaymentListParams::Category::OrSymbol)) }
      attr_reader :category

      sig do
        params(category: Lithic::PaymentListParams::Category::OrSymbol).void
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

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig { returns(T.nilable(Lithic::PaymentListParams::Result::OrSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::PaymentListParams::Result::OrSymbol).void }
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      sig { returns(T.nilable(Lithic::PaymentListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::PaymentListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Lithic::PaymentListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::PaymentListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::PaymentListParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        business_account_token: nil,
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        result: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            begin_: Time,
            business_account_token: String,
            category: Lithic::PaymentListParams::Category::OrSymbol,
            end_: Time,
            ending_before: String,
            financial_account_token: String,
            page_size: Integer,
            result: Lithic::PaymentListParams::Result::OrSymbol,
            starting_after: String,
            status: Lithic::PaymentListParams::Status::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::PaymentListParams::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ACH, Lithic::PaymentListParams::Category::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::PaymentListParams::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::PaymentListParams::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::PaymentListParams::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::PaymentListParams::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::PaymentListParams::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::PaymentListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED =
          T.let(:DECLINED, Lithic::PaymentListParams::Status::TaggedSymbol)
        PENDING =
          T.let(:PENDING, Lithic::PaymentListParams::Status::TaggedSymbol)
        RETURNED =
          T.let(:RETURNED, Lithic::PaymentListParams::Status::TaggedSymbol)
        SETTLED =
          T.let(:SETTLED, Lithic::PaymentListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::PaymentListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
