# typed: strong

module Lithic
  module Models
    class BookTransferListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::BookTransferListParams, Lithic::Internal::AnyHash)
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

      # Book Transfer category to be returned.
      sig do
        returns(T.nilable(Lithic::BookTransferListParams::Category::OrSymbol))
      end
      attr_reader :category

      sig do
        params(
          category: Lithic::BookTransferListParams::Category::OrSymbol
        ).void
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
      sig do
        returns(T.nilable(Lithic::BookTransferListParams::Result::OrSymbol))
      end
      attr_reader :result

      sig do
        params(result: Lithic::BookTransferListParams::Result::OrSymbol).void
      end
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Book transfer status to be returned.
      sig do
        returns(T.nilable(Lithic::BookTransferListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Lithic::BookTransferListParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Lithic::BookTransferListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::BookTransferListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::BookTransferListParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        business_account_token: nil,
        # Book Transfer category to be returned.
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Globally unique identifier for the financial account or card that will send the
        # funds. Accepted type dependent on the program's use case.
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        # Book transfer result to be returned.
        result: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Book transfer status to be returned.
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
            category: Lithic::BookTransferListParams::Category::OrSymbol,
            end_: Time,
            ending_before: String,
            financial_account_token: String,
            page_size: Integer,
            result: Lithic::BookTransferListParams::Result::OrSymbol,
            starting_after: String,
            status: Lithic::BookTransferListParams::Status::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Book Transfer category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::BookTransferListParams::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BALANCE_OR_FUNDING =
          T.let(
            :BALANCE_OR_FUNDING,
            Lithic::BookTransferListParams::Category::TaggedSymbol
          )
        FEE =
          T.let(:FEE, Lithic::BookTransferListParams::Category::TaggedSymbol)
        REWARD =
          T.let(:REWARD, Lithic::BookTransferListParams::Category::TaggedSymbol)
        ADJUSTMENT =
          T.let(
            :ADJUSTMENT,
            Lithic::BookTransferListParams::Category::TaggedSymbol
          )
        DERECOGNITION =
          T.let(
            :DERECOGNITION,
            Lithic::BookTransferListParams::Category::TaggedSymbol
          )
        DISPUTE =
          T.let(
            :DISPUTE,
            Lithic::BookTransferListParams::Category::TaggedSymbol
          )
        INTERNAL =
          T.let(
            :INTERNAL,
            Lithic::BookTransferListParams::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::BookTransferListParams::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Book transfer result to be returned.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::BookTransferListParams::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::BookTransferListParams::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::BookTransferListParams::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::BookTransferListParams::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::BookTransferListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED =
          T.let(:DECLINED, Lithic::BookTransferListParams::Status::TaggedSymbol)
        SETTLED =
          T.let(:SETTLED, Lithic::BookTransferListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::BookTransferListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
