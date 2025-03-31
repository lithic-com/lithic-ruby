# typed: strong

module Lithic
  module Models
    module Reports
      module Settlement
        class NetworkTotalListParams < Lithic::BaseModel
          extend Lithic::Type::RequestParameters::Converter
          include Lithic::RequestParameters

          # Datetime in RFC 3339 format. Only entries created after the specified time will
          #   be included. UTC time zone.
          sig { returns(T.nilable(Time)) }
          attr_reader :begin_

          sig { params(begin_: Time).void }
          attr_writer :begin_

          # Datetime in RFC 3339 format. Only entries created before the specified time will
          #   be included. UTC time zone.
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

          # Institution ID to filter on.
          sig { returns(T.nilable(String)) }
          attr_reader :institution_id

          sig { params(institution_id: String).void }
          attr_writer :institution_id

          # Network to filter on.
          sig { returns(T.nilable(Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::OrSymbol)) }
          attr_reader :network

          sig { params(network: Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::OrSymbol).void }
          attr_writer :network

          # Number of records per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # Singular report date to filter on (YYYY-MM-DD). Cannot be populated in
          #   conjunction with report_date_begin or report_date_end.
          sig { returns(T.nilable(Date)) }
          attr_reader :report_date

          sig { params(report_date: Date).void }
          attr_writer :report_date

          # Earliest report date to filter on, inclusive (YYYY-MM-DD).
          sig { returns(T.nilable(Date)) }
          attr_reader :report_date_begin

          sig { params(report_date_begin: Date).void }
          attr_writer :report_date_begin

          # Latest report date to filter on, inclusive (YYYY-MM-DD).
          sig { returns(T.nilable(Date)) }
          attr_reader :report_date_end

          sig { params(report_date_end: Date).void }
          attr_writer :report_date_end

          # Settlement institution ID to filter on.
          sig { returns(T.nilable(String)) }
          attr_reader :settlement_institution_id

          sig { params(settlement_institution_id: String).void }
          attr_writer :settlement_institution_id

          # A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          sig { returns(T.nilable(String)) }
          attr_reader :starting_after

          sig { params(starting_after: String).void }
          attr_writer :starting_after

          sig do
            params(
              begin_: Time,
              end_: Time,
              ending_before: String,
              institution_id: String,
              network: Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::OrSymbol,
              page_size: Integer,
              report_date: Date,
              report_date_begin: Date,
              report_date_end: Date,
              settlement_institution_id: String,
              starting_after: String,
              request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(
            begin_: nil,
            end_: nil,
            ending_before: nil,
            institution_id: nil,
            network: nil,
            page_size: nil,
            report_date: nil,
            report_date_begin: nil,
            report_date_end: nil,
            settlement_institution_id: nil,
            starting_after: nil,
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
                  institution_id: String,
                  network: Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::OrSymbol,
                  page_size: Integer,
                  report_date: Date,
                  report_date_begin: Date,
                  report_date_end: Date,
                  settlement_institution_id: String,
                  starting_after: String,
                  request_options: Lithic::RequestOptions
                }
              )
          end
          def to_hash
          end

          # Network to filter on.
          module Network
            extend Lithic::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::TaggedSymbol) }

            VISA = T.let(:VISA, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::TaggedSymbol)
            MASTERCARD =
              T.let(:MASTERCARD, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::TaggedSymbol)
            MAESTRO =
              T.let(:MAESTRO, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::TaggedSymbol)
            INTERLINK =
              T.let(:INTERLINK, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::TaggedSymbol])
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
