# frozen_string_literal: true

module Lithic
  module Models
    class TransferLimitsResponse < Lithic::Internal::Type::BaseModel
      # @!attribute data
      #   List of transfer limits
      #
      #   @return [Array<Lithic::Models::TransferLimitsResponse::Data>]
      required :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::TransferLimitsResponse::Data] }

      # @!attribute has_more
      #   Whether there are more transfer limits
      #
      #   @return [Boolean]
      required :has_more, Lithic::Internal::Type::Boolean

      # @!method initialize(data:, has_more:)
      #   @param data [Array<Lithic::Models::TransferLimitsResponse::Data>] List of transfer limits
      #
      #   @param has_more [Boolean] Whether there are more transfer limits

      class Data < Lithic::Internal::Type::BaseModel
        # @!attribute company_id
        #   Company ID
        #
        #   @return [String]
        required :company_id, String

        # @!attribute daily_limit
        #   Daily limits with progress
        #
        #   @return [Lithic::Models::TransferLimitsResponse::Data::DailyLimit]
        required :daily_limit, -> { Lithic::TransferLimitsResponse::Data::DailyLimit }

        # @!attribute date
        #   The date for the limit view (ISO format)
        #
        #   @return [Date]
        required :date, Date

        # @!attribute is_fbo
        #   Whether the company is a FBO; based on the company ID prefix
        #
        #   @return [Boolean]
        required :is_fbo, Lithic::Internal::Type::Boolean

        # @!attribute monthly_limit
        #   Monthly limits with progress
        #
        #   @return [Lithic::Models::TransferLimitsResponse::Data::MonthlyLimit]
        required :monthly_limit, -> { Lithic::TransferLimitsResponse::Data::MonthlyLimit }

        # @!attribute program_limit_per_transaction
        #   Program transaction limits
        #
        #   @return [Lithic::Models::TransferLimitsResponse::Data::ProgramLimitPerTransaction]
        required :program_limit_per_transaction,
                 -> { Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction }

        # @!method initialize(company_id:, daily_limit:, date:, is_fbo:, monthly_limit:, program_limit_per_transaction:)
        #   @param company_id [String] Company ID
        #
        #   @param daily_limit [Lithic::Models::TransferLimitsResponse::Data::DailyLimit] Daily limits with progress
        #
        #   @param date [Date] The date for the limit view (ISO format)
        #
        #   @param is_fbo [Boolean] Whether the company is a FBO; based on the company ID prefix
        #
        #   @param monthly_limit [Lithic::Models::TransferLimitsResponse::Data::MonthlyLimit] Monthly limits with progress
        #
        #   @param program_limit_per_transaction [Lithic::Models::TransferLimitsResponse::Data::ProgramLimitPerTransaction] Program transaction limits

        # @see Lithic::Models::TransferLimitsResponse::Data#daily_limit
        class DailyLimit < Lithic::Internal::Type::BaseModel
          # @!attribute credit
          #   Credit limits
          #
          #   @return [Lithic::Models::TransferLimitsResponse::Data::DailyLimit::Credit]
          required :credit, -> { Lithic::TransferLimitsResponse::Data::DailyLimit::Credit }

          # @!attribute debit
          #   Debit limits
          #
          #   @return [Lithic::Models::TransferLimitsResponse::Data::DailyLimit::Debit]
          required :debit, -> { Lithic::TransferLimitsResponse::Data::DailyLimit::Debit }

          # @!method initialize(credit:, debit:)
          #   Daily limits with progress
          #
          #   @param credit [Lithic::Models::TransferLimitsResponse::Data::DailyLimit::Credit] Credit limits
          #
          #   @param debit [Lithic::Models::TransferLimitsResponse::Data::DailyLimit::Debit] Debit limits

          # @see Lithic::Models::TransferLimitsResponse::Data::DailyLimit#credit
          class Credit < Lithic::Internal::Type::BaseModel
            # @!attribute limit
            #   The limit amount
            #
            #   @return [Integer]
            required :limit, Integer

            # @!attribute amount_originated
            #   Amount originated towards limit
            #
            #   @return [Integer, nil]
            optional :amount_originated, Integer

            # @!method initialize(limit:, amount_originated: nil)
            #   Credit limits
            #
            #   @param limit [Integer] The limit amount
            #
            #   @param amount_originated [Integer] Amount originated towards limit
          end

          # @see Lithic::Models::TransferLimitsResponse::Data::DailyLimit#debit
          class Debit < Lithic::Internal::Type::BaseModel
            # @!attribute limit
            #   The limit amount
            #
            #   @return [Integer]
            required :limit, Integer

            # @!attribute amount_originated
            #   Amount originated towards limit
            #
            #   @return [Integer, nil]
            optional :amount_originated, Integer

            # @!method initialize(limit:, amount_originated: nil)
            #   Debit limits
            #
            #   @param limit [Integer] The limit amount
            #
            #   @param amount_originated [Integer] Amount originated towards limit
          end
        end

        # @see Lithic::Models::TransferLimitsResponse::Data#monthly_limit
        class MonthlyLimit < Lithic::Internal::Type::BaseModel
          # @!attribute credit
          #   Credit limits
          #
          #   @return [Lithic::Models::TransferLimitsResponse::Data::MonthlyLimit::Credit]
          required :credit, -> { Lithic::TransferLimitsResponse::Data::MonthlyLimit::Credit }

          # @!attribute debit
          #   Debit limits
          #
          #   @return [Lithic::Models::TransferLimitsResponse::Data::MonthlyLimit::Debit]
          required :debit, -> { Lithic::TransferLimitsResponse::Data::MonthlyLimit::Debit }

          # @!method initialize(credit:, debit:)
          #   Monthly limits with progress
          #
          #   @param credit [Lithic::Models::TransferLimitsResponse::Data::MonthlyLimit::Credit] Credit limits
          #
          #   @param debit [Lithic::Models::TransferLimitsResponse::Data::MonthlyLimit::Debit] Debit limits

          # @see Lithic::Models::TransferLimitsResponse::Data::MonthlyLimit#credit
          class Credit < Lithic::Internal::Type::BaseModel
            # @!attribute limit
            #   The limit amount
            #
            #   @return [Integer]
            required :limit, Integer

            # @!attribute amount_originated
            #   Amount originated towards limit
            #
            #   @return [Integer, nil]
            optional :amount_originated, Integer

            # @!method initialize(limit:, amount_originated: nil)
            #   Credit limits
            #
            #   @param limit [Integer] The limit amount
            #
            #   @param amount_originated [Integer] Amount originated towards limit
          end

          # @see Lithic::Models::TransferLimitsResponse::Data::MonthlyLimit#debit
          class Debit < Lithic::Internal::Type::BaseModel
            # @!attribute limit
            #   The limit amount
            #
            #   @return [Integer]
            required :limit, Integer

            # @!attribute amount_originated
            #   Amount originated towards limit
            #
            #   @return [Integer, nil]
            optional :amount_originated, Integer

            # @!method initialize(limit:, amount_originated: nil)
            #   Debit limits
            #
            #   @param limit [Integer] The limit amount
            #
            #   @param amount_originated [Integer] Amount originated towards limit
          end
        end

        # @see Lithic::Models::TransferLimitsResponse::Data#program_limit_per_transaction
        class ProgramLimitPerTransaction < Lithic::Internal::Type::BaseModel
          # @!attribute credit
          #   Credit limits
          #
          #   @return [Lithic::Models::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Credit]
          required :credit, -> { Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Credit }

          # @!attribute debit
          #   Debit limits
          #
          #   @return [Lithic::Models::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Debit]
          required :debit, -> { Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Debit }

          # @!method initialize(credit:, debit:)
          #   Program transaction limits
          #
          #   @param credit [Lithic::Models::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Credit] Credit limits
          #
          #   @param debit [Lithic::Models::TransferLimitsResponse::Data::ProgramLimitPerTransaction::Debit] Debit limits

          # @see Lithic::Models::TransferLimitsResponse::Data::ProgramLimitPerTransaction#credit
          class Credit < Lithic::Internal::Type::BaseModel
            # @!attribute limit
            #   The limit amount
            #
            #   @return [Integer]
            required :limit, Integer

            # @!attribute amount_originated
            #   Amount originated towards limit
            #
            #   @return [Integer, nil]
            optional :amount_originated, Integer

            # @!method initialize(limit:, amount_originated: nil)
            #   Credit limits
            #
            #   @param limit [Integer] The limit amount
            #
            #   @param amount_originated [Integer] Amount originated towards limit
          end

          # @see Lithic::Models::TransferLimitsResponse::Data::ProgramLimitPerTransaction#debit
          class Debit < Lithic::Internal::Type::BaseModel
            # @!attribute limit
            #   The limit amount
            #
            #   @return [Integer]
            required :limit, Integer

            # @!attribute amount_originated
            #   Amount originated towards limit
            #
            #   @return [Integer, nil]
            optional :amount_originated, Integer

            # @!method initialize(limit:, amount_originated: nil)
            #   Debit limits
            #
            #   @param limit [Integer] The limit amount
            #
            #   @param amount_originated [Integer] Amount originated towards limit
          end
        end
      end
    end
  end
end
