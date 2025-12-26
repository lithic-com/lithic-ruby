# typed: strong

module Lithic
  module Models
    class TransferLimitsResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::TransferLimitsResponse, Lithic::Internal::AnyHash)
        end

      # List of transfer limits
      sig { returns(T::Array[Lithic::TransferLimitsResponse::Data]) }
      attr_accessor :data

      # Whether there are more transfer limits
      sig { returns(T::Boolean) }
      attr_accessor :has_more

      sig do
        params(
          data: T::Array[Lithic::TransferLimitsResponse::Data::OrHash],
          has_more: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # List of transfer limits
        data:,
        # Whether there are more transfer limits
        has_more:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Lithic::TransferLimitsResponse::Data],
            has_more: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Data < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransferLimitsResponse::Data,
              Lithic::Internal::AnyHash
            )
          end

        # Company ID
        sig { returns(String) }
        attr_accessor :company_id

        # Daily limits with progress
        sig { returns(Lithic::TransferLimitsResponse::Data::DailyLimit) }
        attr_reader :daily_limit

        sig do
          params(
            daily_limit:
              Lithic::TransferLimitsResponse::Data::DailyLimit::OrHash
          ).void
        end
        attr_writer :daily_limit

        # The date for the limit view (ISO format)
        sig { returns(Date) }
        attr_accessor :date

        # Whether the company is a FBO; based on the company ID prefix
        sig { returns(T::Boolean) }
        attr_accessor :is_fbo

        # Monthly limits with progress
        sig { returns(Lithic::TransferLimitsResponse::Data::MonthlyLimit) }
        attr_reader :monthly_limit

        sig do
          params(
            monthly_limit:
              Lithic::TransferLimitsResponse::Data::MonthlyLimit::OrHash
          ).void
        end
        attr_writer :monthly_limit

        # Program transaction limits
        sig do
          returns(
            Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction
          )
        end
        attr_reader :program_limit_per_transaction

        sig do
          params(
            program_limit_per_transaction:
              Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::OrHash
          ).void
        end
        attr_writer :program_limit_per_transaction

        sig do
          params(
            company_id: String,
            daily_limit:
              Lithic::TransferLimitsResponse::Data::DailyLimit::OrHash,
            date: Date,
            is_fbo: T::Boolean,
            monthly_limit:
              Lithic::TransferLimitsResponse::Data::MonthlyLimit::OrHash,
            program_limit_per_transaction:
              Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Company ID
          company_id:,
          # Daily limits with progress
          daily_limit:,
          # The date for the limit view (ISO format)
          date:,
          # Whether the company is a FBO; based on the company ID prefix
          is_fbo:,
          # Monthly limits with progress
          monthly_limit:,
          # Program transaction limits
          program_limit_per_transaction:
        )
        end

        sig do
          override.returns(
            {
              company_id: String,
              daily_limit: Lithic::TransferLimitsResponse::Data::DailyLimit,
              date: Date,
              is_fbo: T::Boolean,
              monthly_limit: Lithic::TransferLimitsResponse::Data::MonthlyLimit,
              program_limit_per_transaction:
                Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction
            }
          )
        end
        def to_hash
        end

        class DailyLimit < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransferLimitsResponse::Data::DailyLimit,
                Lithic::Internal::AnyHash
              )
            end

          # Credit limits
          sig do
            returns(Lithic::TransferLimitsResponse::Data::DailyLimit::Credit)
          end
          attr_reader :credit

          sig do
            params(
              credit:
                Lithic::TransferLimitsResponse::Data::DailyLimit::Credit::OrHash
            ).void
          end
          attr_writer :credit

          # Debit limits
          sig do
            returns(Lithic::TransferLimitsResponse::Data::DailyLimit::Debit)
          end
          attr_reader :debit

          sig do
            params(
              debit:
                Lithic::TransferLimitsResponse::Data::DailyLimit::Debit::OrHash
            ).void
          end
          attr_writer :debit

          # Daily limits with progress
          sig do
            params(
              credit:
                Lithic::TransferLimitsResponse::Data::DailyLimit::Credit::OrHash,
              debit:
                Lithic::TransferLimitsResponse::Data::DailyLimit::Debit::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Credit limits
            credit:,
            # Debit limits
            debit:
          )
          end

          sig do
            override.returns(
              {
                credit:
                  Lithic::TransferLimitsResponse::Data::DailyLimit::Credit,
                debit: Lithic::TransferLimitsResponse::Data::DailyLimit::Debit
              }
            )
          end
          def to_hash
          end

          class Credit < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::TransferLimitsResponse::Data::DailyLimit::Credit,
                  Lithic::Internal::AnyHash
                )
              end

            # The limit amount
            sig { returns(Integer) }
            attr_accessor :limit

            # Amount originated towards limit
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount_originated

            sig { params(amount_originated: Integer).void }
            attr_writer :amount_originated

            # Credit limits
            sig do
              params(limit: Integer, amount_originated: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # The limit amount
              limit:,
              # Amount originated towards limit
              amount_originated: nil
            )
            end

            sig do
              override.returns({ limit: Integer, amount_originated: Integer })
            end
            def to_hash
            end
          end

          class Debit < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::TransferLimitsResponse::Data::DailyLimit::Debit,
                  Lithic::Internal::AnyHash
                )
              end

            # The limit amount
            sig { returns(Integer) }
            attr_accessor :limit

            # Amount originated towards limit
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount_originated

            sig { params(amount_originated: Integer).void }
            attr_writer :amount_originated

            # Debit limits
            sig do
              params(limit: Integer, amount_originated: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # The limit amount
              limit:,
              # Amount originated towards limit
              amount_originated: nil
            )
            end

            sig do
              override.returns({ limit: Integer, amount_originated: Integer })
            end
            def to_hash
            end
          end
        end

        class MonthlyLimit < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransferLimitsResponse::Data::MonthlyLimit,
                Lithic::Internal::AnyHash
              )
            end

          # Credit limits
          sig do
            returns(Lithic::TransferLimitsResponse::Data::MonthlyLimit::Credit)
          end
          attr_reader :credit

          sig do
            params(
              credit:
                Lithic::TransferLimitsResponse::Data::MonthlyLimit::Credit::OrHash
            ).void
          end
          attr_writer :credit

          # Debit limits
          sig do
            returns(Lithic::TransferLimitsResponse::Data::MonthlyLimit::Debit)
          end
          attr_reader :debit

          sig do
            params(
              debit:
                Lithic::TransferLimitsResponse::Data::MonthlyLimit::Debit::OrHash
            ).void
          end
          attr_writer :debit

          # Monthly limits with progress
          sig do
            params(
              credit:
                Lithic::TransferLimitsResponse::Data::MonthlyLimit::Credit::OrHash,
              debit:
                Lithic::TransferLimitsResponse::Data::MonthlyLimit::Debit::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Credit limits
            credit:,
            # Debit limits
            debit:
          )
          end

          sig do
            override.returns(
              {
                credit:
                  Lithic::TransferLimitsResponse::Data::MonthlyLimit::Credit,
                debit: Lithic::TransferLimitsResponse::Data::MonthlyLimit::Debit
              }
            )
          end
          def to_hash
          end

          class Credit < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::TransferLimitsResponse::Data::MonthlyLimit::Credit,
                  Lithic::Internal::AnyHash
                )
              end

            # The limit amount
            sig { returns(Integer) }
            attr_accessor :limit

            # Amount originated towards limit
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount_originated

            sig { params(amount_originated: Integer).void }
            attr_writer :amount_originated

            # Credit limits
            sig do
              params(limit: Integer, amount_originated: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # The limit amount
              limit:,
              # Amount originated towards limit
              amount_originated: nil
            )
            end

            sig do
              override.returns({ limit: Integer, amount_originated: Integer })
            end
            def to_hash
            end
          end

          class Debit < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::TransferLimitsResponse::Data::MonthlyLimit::Debit,
                  Lithic::Internal::AnyHash
                )
              end

            # The limit amount
            sig { returns(Integer) }
            attr_accessor :limit

            # Amount originated towards limit
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount_originated

            sig { params(amount_originated: Integer).void }
            attr_writer :amount_originated

            # Debit limits
            sig do
              params(limit: Integer, amount_originated: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # The limit amount
              limit:,
              # Amount originated towards limit
              amount_originated: nil
            )
            end

            sig do
              override.returns({ limit: Integer, amount_originated: Integer })
            end
            def to_hash
            end
          end
        end

        class ProgramLimitPerTransaction < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction,
                Lithic::Internal::AnyHash
              )
            end

          # Credit limits
          sig do
            returns(
              Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Credit
            )
          end
          attr_reader :credit

          sig do
            params(
              credit:
                Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Credit::OrHash
            ).void
          end
          attr_writer :credit

          # Debit limits
          sig do
            returns(
              Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Debit
            )
          end
          attr_reader :debit

          sig do
            params(
              debit:
                Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Debit::OrHash
            ).void
          end
          attr_writer :debit

          # Program transaction limits
          sig do
            params(
              credit:
                Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Credit::OrHash,
              debit:
                Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Debit::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Credit limits
            credit:,
            # Debit limits
            debit:
          )
          end

          sig do
            override.returns(
              {
                credit:
                  Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Credit,
                debit:
                  Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Debit
              }
            )
          end
          def to_hash
          end

          class Credit < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Credit,
                  Lithic::Internal::AnyHash
                )
              end

            # The limit amount
            sig { returns(Integer) }
            attr_accessor :limit

            # Amount originated towards limit
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount_originated

            sig { params(amount_originated: Integer).void }
            attr_writer :amount_originated

            # Credit limits
            sig do
              params(limit: Integer, amount_originated: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # The limit amount
              limit:,
              # Amount originated towards limit
              amount_originated: nil
            )
            end

            sig do
              override.returns({ limit: Integer, amount_originated: Integer })
            end
            def to_hash
            end
          end

          class Debit < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Debit,
                  Lithic::Internal::AnyHash
                )
              end

            # The limit amount
            sig { returns(Integer) }
            attr_accessor :limit

            # Amount originated towards limit
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount_originated

            sig { params(amount_originated: Integer).void }
            attr_writer :amount_originated

            # Debit limits
            sig do
              params(limit: Integer, amount_originated: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # The limit amount
              limit:,
              # Amount originated towards limit
              amount_originated: nil
            )
            end

            sig do
              override.returns({ limit: Integer, amount_originated: Integer })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
