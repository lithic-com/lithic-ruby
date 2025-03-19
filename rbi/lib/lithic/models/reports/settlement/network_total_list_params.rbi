# typed: strong

module Lithic
  module Models
    module Reports
      module Settlement
        class NetworkTotalListParams < Lithic::BaseModel
          extend Lithic::RequestParameters::Converter
          include Lithic::RequestParameters

          # Datetime in RFC 3339 format. Only entries created after the specified time will
          #   be included. UTC time zone.
          sig { returns(T.nilable(Time)) }
          def begin_
          end

          sig { params(_: Time).returns(Time) }
          def begin_=(_)
          end

          # Datetime in RFC 3339 format. Only entries created before the specified time will
          #   be included. UTC time zone.
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

          # Institution ID to filter on.
          sig { returns(T.nilable(String)) }
          def institution_id
          end

          sig { params(_: String).returns(String) }
          def institution_id=(_)
          end

          # Network to filter on.
          sig { returns(T.nilable(Symbol)) }
          def network
          end

          sig { params(_: Symbol).returns(Symbol) }
          def network=(_)
          end

          # Number of records per page.
          sig { returns(T.nilable(Integer)) }
          def page_size
          end

          sig { params(_: Integer).returns(Integer) }
          def page_size=(_)
          end

          # Singular report date to filter on (YYYY-MM-DD). Cannot be populated in
          #   conjunction with report_date_begin or report_date_end.
          sig { returns(T.nilable(Date)) }
          def report_date
          end

          sig { params(_: Date).returns(Date) }
          def report_date=(_)
          end

          # Earliest report date to filter on, inclusive (YYYY-MM-DD).
          sig { returns(T.nilable(Date)) }
          def report_date_begin
          end

          sig { params(_: Date).returns(Date) }
          def report_date_begin=(_)
          end

          # Latest report date to filter on, inclusive (YYYY-MM-DD).
          sig { returns(T.nilable(Date)) }
          def report_date_end
          end

          sig { params(_: Date).returns(Date) }
          def report_date_end=(_)
          end

          # Settlement institution ID to filter on.
          sig { returns(T.nilable(String)) }
          def settlement_institution_id
          end

          sig { params(_: String).returns(String) }
          def settlement_institution_id=(_)
          end

          # A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          sig { returns(T.nilable(String)) }
          def starting_after
          end

          sig { params(_: String).returns(String) }
          def starting_after=(_)
          end

          sig do
            params(
              begin_: Time,
              end_: Time,
              ending_before: String,
              institution_id: String,
              network: Symbol,
              page_size: Integer,
              report_date: Date,
              report_date_begin: Date,
              report_date_end: Date,
              settlement_institution_id: String,
              starting_after: String,
              request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
                  network: Symbol,
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
          class Network < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            VISA = :VISA
            MASTERCARD = :MASTERCARD
            MAESTRO = :MAESTRO
            INTERLINK = :INTERLINK
          end
        end
      end
    end
  end
end
