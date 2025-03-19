# typed: strong

module Lithic
  module Models
    module Reports
      module Settlement
        class NetworkTotalListResponse < Lithic::BaseModel
          # Globally unique identifier.
          sig { returns(String) }
          def token
          end

          sig { params(_: String).returns(String) }
          def token=(_)
          end

          sig { returns(Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts) }
          def amounts
          end

          sig do
            params(_: Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts)
              .returns(Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts)
          end
          def amounts=(_)
          end

          # RFC 3339 timestamp for when the record was created. UTC time zone.
          sig { returns(Time) }
          def created
          end

          sig { params(_: Time).returns(Time) }
          def created=(_)
          end

          # 3-character alphabetic ISO 4217 code.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The institution that activity occurred on. For Mastercard: ICA (Interbank Card
          #   Association). For Maestro: institution ID. For Visa: lowest level SRE
          #   (Settlement Reporting Entity).
          sig { returns(String) }
          def institution_id
          end

          sig { params(_: String).returns(String) }
          def institution_id=(_)
          end

          # Card network where the transaction took place. VISA, MASTERCARD, MAESTRO, or
          #   INTERLINK.
          sig { returns(Symbol) }
          def network
          end

          sig { params(_: Symbol).returns(Symbol) }
          def network=(_)
          end

          # Date that the network total record applies to. YYYY-MM-DD format.
          sig { returns(Date) }
          def report_date
          end

          sig { params(_: Date).returns(Date) }
          def report_date=(_)
          end

          # The institution responsible for settlement. For Mastercard: same as
          #   `institution_id`. For Maestro: billing ICA. For Visa: Funds Transfer SRE
          #   (FTSRE).
          sig { returns(String) }
          def settlement_institution_id
          end

          sig { params(_: String).returns(String) }
          def settlement_institution_id=(_)
          end

          # Settlement service.
          sig { returns(String) }
          def settlement_service
          end

          sig { params(_: String).returns(String) }
          def settlement_service=(_)
          end

          # RFC 3339 timestamp for when the record was last updated. UTC time zone.
          sig { returns(Time) }
          def updated
          end

          sig { params(_: Time).returns(Time) }
          def updated=(_)
          end

          # The clearing cycle that the network total record applies to. Mastercard only.
          sig { returns(T.nilable(Integer)) }
          def cycle
          end

          sig { params(_: Integer).returns(Integer) }
          def cycle=(_)
          end

          sig do
            params(
              token: String,
              amounts: Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts,
              created: Time,
              currency: String,
              institution_id: String,
              network: Symbol,
              report_date: Date,
              settlement_institution_id: String,
              settlement_service: String,
              updated: Time,
              cycle: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(
            token:,
            amounts:,
            created:,
            currency:,
            institution_id:,
            network:,
            report_date:,
            settlement_institution_id:,
            settlement_service:,
            updated:,
            cycle: nil
          )
          end

          sig do
            override
              .returns(
                {
                  token: String,
                  amounts: Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts,
                  created: Time,
                  currency: String,
                  institution_id: String,
                  network: Symbol,
                  report_date: Date,
                  settlement_institution_id: String,
                  settlement_service: String,
                  updated: Time,
                  cycle: Integer
                }
              )
          end
          def to_hash
          end

          class Amounts < Lithic::BaseModel
            # Total settlement amount excluding interchange, in currency's smallest unit.
            sig { returns(Integer) }
            def gross_settlement
            end

            sig { params(_: Integer).returns(Integer) }
            def gross_settlement=(_)
            end

            # Interchange amount, in currency's smallest unit.
            sig { returns(Integer) }
            def interchange_fees
            end

            sig { params(_: Integer).returns(Integer) }
            def interchange_fees=(_)
            end

            # `gross_settlement` net of `interchange_fees` and `visa_charges` (if applicable),
            #   in currency's smallest unit.
            sig { returns(Integer) }
            def net_settlement
            end

            sig { params(_: Integer).returns(Integer) }
            def net_settlement=(_)
            end

            # Charges specific to Visa/Interlink, in currency's smallest unit.
            sig { returns(T.nilable(Integer)) }
            def visa_charges
            end

            sig { params(_: Integer).returns(Integer) }
            def visa_charges=(_)
            end

            sig do
              params(
                gross_settlement: Integer,
                interchange_fees: Integer,
                net_settlement: Integer,
                visa_charges: Integer
              )
                .returns(T.attached_class)
            end
            def self.new(gross_settlement:, interchange_fees:, net_settlement:, visa_charges: nil)
            end

            sig do
              override
                .returns(
                  {
                    gross_settlement: Integer,
                    interchange_fees: Integer,
                    net_settlement: Integer,
                    visa_charges: Integer
                  }
                )
            end
            def to_hash
            end
          end

          # Card network where the transaction took place. VISA, MASTERCARD, MAESTRO, or
          #   INTERLINK.
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
