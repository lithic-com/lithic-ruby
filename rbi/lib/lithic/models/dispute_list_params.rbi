# typed: strong

module Lithic
  module Models
    class DisputeListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

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

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # List disputes of a specific status.
      sig { returns(T.nilable(Lithic::Models::DisputeListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::DisputeListParams::Status::OrSymbol).void }
      attr_writer :status

      # Transaction tokens to filter by.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :transaction_tokens

      sig { params(transaction_tokens: T::Array[String]).void }
      attr_writer :transaction_tokens

      sig do
        params(
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          status: Lithic::Models::DisputeListParams::Status::OrSymbol,
          transaction_tokens: T::Array[String],
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        begin_: nil,
        end_: nil,
        ending_before: nil,
        page_size: nil,
        starting_after: nil,
        status: nil,
        transaction_tokens: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              begin_: Time,
              end_: Time,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              status: Lithic::Models::DisputeListParams::Status::OrSymbol,
              transaction_tokens: T::Array[String],
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # List disputes of a specific status.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::DisputeListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::DisputeListParams::Status::TaggedSymbol) }

        ARBITRATION = T.let(:ARBITRATION, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        CASE_CLOSED = T.let(:CASE_CLOSED, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        CASE_WON = T.let(:CASE_WON, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        NEW = T.let(:NEW, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        PENDING_CUSTOMER = T.let(:PENDING_CUSTOMER, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        PREARBITRATION = T.let(:PREARBITRATION, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        REPRESENTMENT = T.let(:REPRESENTMENT, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        SUBMITTED = T.let(:SUBMITTED, Lithic::Models::DisputeListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::DisputeListParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
