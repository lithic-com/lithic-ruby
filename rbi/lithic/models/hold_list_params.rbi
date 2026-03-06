# typed: strong

module Lithic
  module Models
    class HoldListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::HoldListParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :financial_account_token

      # Date string in RFC 3339 format. Only entries created after the specified time
      # will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

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

      # Hold status to filter by.
      sig { returns(T.nilable(Lithic::HoldListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::HoldListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          financial_account_token: String,
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          status: Lithic::HoldListParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        financial_account_token:,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Hold status to filter by.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            financial_account_token: String,
            begin_: Time,
            end_: Time,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            status: Lithic::HoldListParams::Status::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Hold status to filter by.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::HoldListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:PENDING, Lithic::HoldListParams::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::HoldListParams::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::HoldListParams::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::HoldListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::HoldListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
