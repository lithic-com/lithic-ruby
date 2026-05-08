# typed: strong

module Lithic
  module Models
    class SignalsResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::SignalsResponse, Lithic::Internal::AnyHash)
        end

      # The Welford M2 accumulator for lifetime approved transaction amounts. Used
      # together with `avg_transaction_amount` and `approved_txn_count` to compute the
      # z-score of a new transaction amount (variance = M2 / (count - 1)).
      sig { returns(T.nilable(Float)) }
      attr_accessor :approved_txn_amount_m2

      # The Welford M2 accumulator for approved transaction amounts over the last 30
      # days.
      sig { returns(T.nilable(Float)) }
      attr_accessor :approved_txn_amount_m2_30d

      # The Welford M2 accumulator for approved transaction amounts over the last 7
      # days.
      sig { returns(T.nilable(Float)) }
      attr_accessor :approved_txn_amount_m2_7d

      # The Welford M2 accumulator for approved transaction amounts over the last 90
      # days.
      sig { returns(T.nilable(Float)) }
      attr_accessor :approved_txn_amount_m2_90d

      # The total number of approved transactions over the entity's lifetime.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :approved_txn_count

      # The number of approved transactions in the last 30 days.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :approved_txn_count_30d

      # The number of approved transactions in the last 7 days.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :approved_txn_count_7d

      # The number of approved transactions in the last 90 days.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :approved_txn_count_90d

      # The average approved transaction amount over the entity's lifetime, in cents.
      # Null if fewer than 5 approved transactions have been recorded.
      sig { returns(T.nilable(Float)) }
      attr_accessor :avg_transaction_amount

      # The average approved transaction amount over the last 30 days, in cents. Null if
      # fewer than 5 approved transactions in window.
      sig { returns(T.nilable(Float)) }
      attr_accessor :avg_transaction_amount_30d

      # The average approved transaction amount over the last 7 days, in cents. Null if
      # fewer than 5 approved transactions in window.
      sig { returns(T.nilable(Float)) }
      attr_accessor :avg_transaction_amount_7d

      # The average approved transaction amount over the last 90 days, in cents. Null if
      # fewer than 5 approved transactions in window.
      sig { returns(T.nilable(Float)) }
      attr_accessor :avg_transaction_amount_90d

      # The number of distinct merchant countries seen in the entity's transaction
      # history.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :distinct_country_count

      # The number of distinct MCCs seen in the entity's transaction history.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :distinct_mcc_count

      # The timestamp of the first approved transaction for the entity, in ISO 8601
      # format.
      sig { returns(T.nilable(Time)) }
      attr_accessor :first_txn_at

      # Whether the entity has no prior transaction history. Returns true if no history
      # is found. Null if transaction history exists but a first transaction timestamp
      # is unavailable.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_first_transaction

      # The merchant country of the last card-present transaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_cp_country

      # The merchant postal code of the last card-present transaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_cp_postal_code

      # The timestamp of the last card-present transaction, in ISO 8601 format.
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_cp_timestamp

      # The timestamp of the most recent approved transaction for the entity, in ISO
      # 8601 format.
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_txn_approved_at

      # The set of merchant countries seen in the entity's transaction history. Clients
      # can use this to determine whether a new transaction's country is novel (i.e.
      # compute `is_new_country`).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :seen_countries

      # The set of MCCs seen in the entity's transaction history. Clients can use this
      # to determine whether a new transaction's MCC is novel (i.e. compute
      # `is_new_mcc`).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :seen_mccs

      # The set of card acceptor IDs seen in the card's approved transaction history,
      # capped at the 1000 most recently seen. Null for account responses. Clients can
      # use this to determine whether a new transaction's merchant is novel (i.e.
      # compute `is_new_merchant`).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :seen_merchants

      # The standard deviation of approved transaction amounts over the entity's
      # lifetime, in cents. Null if fewer than 30 approved transactions have been
      # recorded.
      sig { returns(T.nilable(Float)) }
      attr_accessor :stdev_transaction_amount

      # The standard deviation of approved transaction amounts over the last 30 days, in
      # cents. Null if fewer than 30 approved transactions in window.
      sig { returns(T.nilable(Float)) }
      attr_accessor :stdev_transaction_amount_30d

      # The standard deviation of approved transaction amounts over the last 7 days, in
      # cents. Null if fewer than 30 approved transactions in window.
      sig { returns(T.nilable(Float)) }
      attr_accessor :stdev_transaction_amount_7d

      # The standard deviation of approved transaction amounts over the last 90 days, in
      # cents. Null if fewer than 30 approved transactions in window.
      sig { returns(T.nilable(Float)) }
      attr_accessor :stdev_transaction_amount_90d

      # The number of successful 3DS authentications for the card. Null for account
      # responses.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :three_ds_success_count

      # The 3DS authentication success rate for the card, as a percentage from 0.0 to
      # 100.0. Null for account responses.
      sig { returns(T.nilable(Float)) }
      attr_accessor :three_ds_success_rate

      # The total number of 3DS authentication attempts for the card. Null for account
      # responses.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :three_ds_total_count

      # The number of days since the last approved transaction on the entity.
      sig { returns(T.nilable(Float)) }
      attr_accessor :time_since_last_transaction_days

      # Behavioral feature state for a card or account derived from its transaction
      # history.
      #
      # Derived statistical features (averages, standard deviations, z-scores) are
      # computed using Welford's online algorithm over approved transactions. Average
      # fields are null when fewer than 5 approved transactions have been recorded.
      # Standard deviation fields are null when fewer than 30 approved transactions have
      # been recorded.
      #
      # 3DS fields (`three_ds_success_rate`, `three_ds_success_count`,
      # `three_ds_total_count`) are card-scoped and will be null for account responses.
      #
      # Raw fields (`seen_countries`, `seen_mccs`, `approved_txn_amount_m2`, etc.) are
      # included so clients can compute their own transaction-specific derivations, such
      # as checking whether a new transaction's country is in `seen_countries` to
      # determine `is_new_country`, or computing a z-score using the raw mean and M2
      # values.
      sig do
        params(
          approved_txn_amount_m2: T.nilable(Float),
          approved_txn_amount_m2_30d: T.nilable(Float),
          approved_txn_amount_m2_7d: T.nilable(Float),
          approved_txn_amount_m2_90d: T.nilable(Float),
          approved_txn_count: T.nilable(Integer),
          approved_txn_count_30d: T.nilable(Integer),
          approved_txn_count_7d: T.nilable(Integer),
          approved_txn_count_90d: T.nilable(Integer),
          avg_transaction_amount: T.nilable(Float),
          avg_transaction_amount_30d: T.nilable(Float),
          avg_transaction_amount_7d: T.nilable(Float),
          avg_transaction_amount_90d: T.nilable(Float),
          distinct_country_count: T.nilable(Integer),
          distinct_mcc_count: T.nilable(Integer),
          first_txn_at: T.nilable(Time),
          is_first_transaction: T.nilable(T::Boolean),
          last_cp_country: T.nilable(String),
          last_cp_postal_code: T.nilable(String),
          last_cp_timestamp: T.nilable(Time),
          last_txn_approved_at: T.nilable(Time),
          seen_countries: T.nilable(T::Array[String]),
          seen_mccs: T.nilable(T::Array[String]),
          seen_merchants: T.nilable(T::Array[String]),
          stdev_transaction_amount: T.nilable(Float),
          stdev_transaction_amount_30d: T.nilable(Float),
          stdev_transaction_amount_7d: T.nilable(Float),
          stdev_transaction_amount_90d: T.nilable(Float),
          three_ds_success_count: T.nilable(Integer),
          three_ds_success_rate: T.nilable(Float),
          three_ds_total_count: T.nilable(Integer),
          time_since_last_transaction_days: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # The Welford M2 accumulator for lifetime approved transaction amounts. Used
        # together with `avg_transaction_amount` and `approved_txn_count` to compute the
        # z-score of a new transaction amount (variance = M2 / (count - 1)).
        approved_txn_amount_m2:,
        # The Welford M2 accumulator for approved transaction amounts over the last 30
        # days.
        approved_txn_amount_m2_30d:,
        # The Welford M2 accumulator for approved transaction amounts over the last 7
        # days.
        approved_txn_amount_m2_7d:,
        # The Welford M2 accumulator for approved transaction amounts over the last 90
        # days.
        approved_txn_amount_m2_90d:,
        # The total number of approved transactions over the entity's lifetime.
        approved_txn_count:,
        # The number of approved transactions in the last 30 days.
        approved_txn_count_30d:,
        # The number of approved transactions in the last 7 days.
        approved_txn_count_7d:,
        # The number of approved transactions in the last 90 days.
        approved_txn_count_90d:,
        # The average approved transaction amount over the entity's lifetime, in cents.
        # Null if fewer than 5 approved transactions have been recorded.
        avg_transaction_amount:,
        # The average approved transaction amount over the last 30 days, in cents. Null if
        # fewer than 5 approved transactions in window.
        avg_transaction_amount_30d:,
        # The average approved transaction amount over the last 7 days, in cents. Null if
        # fewer than 5 approved transactions in window.
        avg_transaction_amount_7d:,
        # The average approved transaction amount over the last 90 days, in cents. Null if
        # fewer than 5 approved transactions in window.
        avg_transaction_amount_90d:,
        # The number of distinct merchant countries seen in the entity's transaction
        # history.
        distinct_country_count:,
        # The number of distinct MCCs seen in the entity's transaction history.
        distinct_mcc_count:,
        # The timestamp of the first approved transaction for the entity, in ISO 8601
        # format.
        first_txn_at:,
        # Whether the entity has no prior transaction history. Returns true if no history
        # is found. Null if transaction history exists but a first transaction timestamp
        # is unavailable.
        is_first_transaction:,
        # The merchant country of the last card-present transaction.
        last_cp_country:,
        # The merchant postal code of the last card-present transaction.
        last_cp_postal_code:,
        # The timestamp of the last card-present transaction, in ISO 8601 format.
        last_cp_timestamp:,
        # The timestamp of the most recent approved transaction for the entity, in ISO
        # 8601 format.
        last_txn_approved_at:,
        # The set of merchant countries seen in the entity's transaction history. Clients
        # can use this to determine whether a new transaction's country is novel (i.e.
        # compute `is_new_country`).
        seen_countries:,
        # The set of MCCs seen in the entity's transaction history. Clients can use this
        # to determine whether a new transaction's MCC is novel (i.e. compute
        # `is_new_mcc`).
        seen_mccs:,
        # The set of card acceptor IDs seen in the card's approved transaction history,
        # capped at the 1000 most recently seen. Null for account responses. Clients can
        # use this to determine whether a new transaction's merchant is novel (i.e.
        # compute `is_new_merchant`).
        seen_merchants:,
        # The standard deviation of approved transaction amounts over the entity's
        # lifetime, in cents. Null if fewer than 30 approved transactions have been
        # recorded.
        stdev_transaction_amount:,
        # The standard deviation of approved transaction amounts over the last 30 days, in
        # cents. Null if fewer than 30 approved transactions in window.
        stdev_transaction_amount_30d:,
        # The standard deviation of approved transaction amounts over the last 7 days, in
        # cents. Null if fewer than 30 approved transactions in window.
        stdev_transaction_amount_7d:,
        # The standard deviation of approved transaction amounts over the last 90 days, in
        # cents. Null if fewer than 30 approved transactions in window.
        stdev_transaction_amount_90d:,
        # The number of successful 3DS authentications for the card. Null for account
        # responses.
        three_ds_success_count:,
        # The 3DS authentication success rate for the card, as a percentage from 0.0 to
        # 100.0. Null for account responses.
        three_ds_success_rate:,
        # The total number of 3DS authentication attempts for the card. Null for account
        # responses.
        three_ds_total_count:,
        # The number of days since the last approved transaction on the entity.
        time_since_last_transaction_days:
      )
      end

      sig do
        override.returns(
          {
            approved_txn_amount_m2: T.nilable(Float),
            approved_txn_amount_m2_30d: T.nilable(Float),
            approved_txn_amount_m2_7d: T.nilable(Float),
            approved_txn_amount_m2_90d: T.nilable(Float),
            approved_txn_count: T.nilable(Integer),
            approved_txn_count_30d: T.nilable(Integer),
            approved_txn_count_7d: T.nilable(Integer),
            approved_txn_count_90d: T.nilable(Integer),
            avg_transaction_amount: T.nilable(Float),
            avg_transaction_amount_30d: T.nilable(Float),
            avg_transaction_amount_7d: T.nilable(Float),
            avg_transaction_amount_90d: T.nilable(Float),
            distinct_country_count: T.nilable(Integer),
            distinct_mcc_count: T.nilable(Integer),
            first_txn_at: T.nilable(Time),
            is_first_transaction: T.nilable(T::Boolean),
            last_cp_country: T.nilable(String),
            last_cp_postal_code: T.nilable(String),
            last_cp_timestamp: T.nilable(Time),
            last_txn_approved_at: T.nilable(Time),
            seen_countries: T.nilable(T::Array[String]),
            seen_mccs: T.nilable(T::Array[String]),
            seen_merchants: T.nilable(T::Array[String]),
            stdev_transaction_amount: T.nilable(Float),
            stdev_transaction_amount_30d: T.nilable(Float),
            stdev_transaction_amount_7d: T.nilable(Float),
            stdev_transaction_amount_90d: T.nilable(Float),
            three_ds_success_count: T.nilable(Integer),
            three_ds_success_rate: T.nilable(Float),
            three_ds_total_count: T.nilable(Integer),
            time_since_last_transaction_days: T.nilable(Float)
          }
        )
      end
      def to_hash
      end
    end
  end
end
