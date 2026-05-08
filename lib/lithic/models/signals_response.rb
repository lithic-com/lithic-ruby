# frozen_string_literal: true

module Lithic
  module Models
    class SignalsResponse < Lithic::Internal::Type::BaseModel
      # @!attribute approved_txn_amount_m2
      #   The Welford M2 accumulator for lifetime approved transaction amounts. Used
      #   together with `avg_transaction_amount` and `approved_txn_count` to compute the
      #   z-score of a new transaction amount (variance = M2 / (count - 1)).
      #
      #   @return [Float, nil]
      required :approved_txn_amount_m2, Float, nil?: true

      # @!attribute approved_txn_amount_m2_30d
      #   The Welford M2 accumulator for approved transaction amounts over the last 30
      #   days.
      #
      #   @return [Float, nil]
      required :approved_txn_amount_m2_30d, Float, nil?: true

      # @!attribute approved_txn_amount_m2_7d
      #   The Welford M2 accumulator for approved transaction amounts over the last 7
      #   days.
      #
      #   @return [Float, nil]
      required :approved_txn_amount_m2_7d, Float, nil?: true

      # @!attribute approved_txn_amount_m2_90d
      #   The Welford M2 accumulator for approved transaction amounts over the last 90
      #   days.
      #
      #   @return [Float, nil]
      required :approved_txn_amount_m2_90d, Float, nil?: true

      # @!attribute approved_txn_count
      #   The total number of approved transactions over the entity's lifetime.
      #
      #   @return [Integer, nil]
      required :approved_txn_count, Integer, nil?: true

      # @!attribute approved_txn_count_30d
      #   The number of approved transactions in the last 30 days.
      #
      #   @return [Integer, nil]
      required :approved_txn_count_30d, Integer, nil?: true

      # @!attribute approved_txn_count_7d
      #   The number of approved transactions in the last 7 days.
      #
      #   @return [Integer, nil]
      required :approved_txn_count_7d, Integer, nil?: true

      # @!attribute approved_txn_count_90d
      #   The number of approved transactions in the last 90 days.
      #
      #   @return [Integer, nil]
      required :approved_txn_count_90d, Integer, nil?: true

      # @!attribute avg_transaction_amount
      #   The average approved transaction amount over the entity's lifetime, in cents.
      #   Null if fewer than 5 approved transactions have been recorded.
      #
      #   @return [Float, nil]
      required :avg_transaction_amount, Float, nil?: true

      # @!attribute avg_transaction_amount_30d
      #   The average approved transaction amount over the last 30 days, in cents. Null if
      #   fewer than 5 approved transactions in window.
      #
      #   @return [Float, nil]
      required :avg_transaction_amount_30d, Float, nil?: true

      # @!attribute avg_transaction_amount_7d
      #   The average approved transaction amount over the last 7 days, in cents. Null if
      #   fewer than 5 approved transactions in window.
      #
      #   @return [Float, nil]
      required :avg_transaction_amount_7d, Float, nil?: true

      # @!attribute avg_transaction_amount_90d
      #   The average approved transaction amount over the last 90 days, in cents. Null if
      #   fewer than 5 approved transactions in window.
      #
      #   @return [Float, nil]
      required :avg_transaction_amount_90d, Float, nil?: true

      # @!attribute distinct_country_count
      #   The number of distinct merchant countries seen in the entity's transaction
      #   history.
      #
      #   @return [Integer, nil]
      required :distinct_country_count, Integer, nil?: true

      # @!attribute distinct_mcc_count
      #   The number of distinct MCCs seen in the entity's transaction history.
      #
      #   @return [Integer, nil]
      required :distinct_mcc_count, Integer, nil?: true

      # @!attribute first_txn_at
      #   The timestamp of the first approved transaction for the entity, in ISO 8601
      #   format.
      #
      #   @return [Time, nil]
      required :first_txn_at, Time, nil?: true

      # @!attribute is_first_transaction
      #   Whether the entity has no prior transaction history. Returns true if no history
      #   is found. Null if transaction history exists but a first transaction timestamp
      #   is unavailable.
      #
      #   @return [Boolean, nil]
      required :is_first_transaction, Lithic::Internal::Type::Boolean, nil?: true

      # @!attribute last_cp_country
      #   The merchant country of the last card-present transaction.
      #
      #   @return [String, nil]
      required :last_cp_country, String, nil?: true

      # @!attribute last_cp_postal_code
      #   The merchant postal code of the last card-present transaction.
      #
      #   @return [String, nil]
      required :last_cp_postal_code, String, nil?: true

      # @!attribute last_cp_timestamp
      #   The timestamp of the last card-present transaction, in ISO 8601 format.
      #
      #   @return [Time, nil]
      required :last_cp_timestamp, Time, nil?: true

      # @!attribute last_txn_approved_at
      #   The timestamp of the most recent approved transaction for the entity, in ISO
      #   8601 format.
      #
      #   @return [Time, nil]
      required :last_txn_approved_at, Time, nil?: true

      # @!attribute seen_countries
      #   The set of merchant countries seen in the entity's transaction history. Clients
      #   can use this to determine whether a new transaction's country is novel (i.e.
      #   compute `is_new_country`).
      #
      #   @return [Array<String>, nil]
      required :seen_countries, Lithic::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute seen_mccs
      #   The set of MCCs seen in the entity's transaction history. Clients can use this
      #   to determine whether a new transaction's MCC is novel (i.e. compute
      #   `is_new_mcc`).
      #
      #   @return [Array<String>, nil]
      required :seen_mccs, Lithic::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute seen_merchants
      #   The set of card acceptor IDs seen in the card's approved transaction history,
      #   capped at the 1000 most recently seen. Null for account responses. Clients can
      #   use this to determine whether a new transaction's merchant is novel (i.e.
      #   compute `is_new_merchant`).
      #
      #   @return [Array<String>, nil]
      required :seen_merchants, Lithic::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute stdev_transaction_amount
      #   The standard deviation of approved transaction amounts over the entity's
      #   lifetime, in cents. Null if fewer than 30 approved transactions have been
      #   recorded.
      #
      #   @return [Float, nil]
      required :stdev_transaction_amount, Float, nil?: true

      # @!attribute stdev_transaction_amount_30d
      #   The standard deviation of approved transaction amounts over the last 30 days, in
      #   cents. Null if fewer than 30 approved transactions in window.
      #
      #   @return [Float, nil]
      required :stdev_transaction_amount_30d, Float, nil?: true

      # @!attribute stdev_transaction_amount_7d
      #   The standard deviation of approved transaction amounts over the last 7 days, in
      #   cents. Null if fewer than 30 approved transactions in window.
      #
      #   @return [Float, nil]
      required :stdev_transaction_amount_7d, Float, nil?: true

      # @!attribute stdev_transaction_amount_90d
      #   The standard deviation of approved transaction amounts over the last 90 days, in
      #   cents. Null if fewer than 30 approved transactions in window.
      #
      #   @return [Float, nil]
      required :stdev_transaction_amount_90d, Float, nil?: true

      # @!attribute three_ds_success_count
      #   The number of successful 3DS authentications for the card. Null for account
      #   responses.
      #
      #   @return [Integer, nil]
      required :three_ds_success_count, Integer, nil?: true

      # @!attribute three_ds_success_rate
      #   The 3DS authentication success rate for the card, as a percentage from 0.0 to
      #   100.0. Null for account responses.
      #
      #   @return [Float, nil]
      required :three_ds_success_rate, Float, nil?: true

      # @!attribute three_ds_total_count
      #   The total number of 3DS authentication attempts for the card. Null for account
      #   responses.
      #
      #   @return [Integer, nil]
      required :three_ds_total_count, Integer, nil?: true

      # @!attribute time_since_last_transaction_days
      #   The number of days since the last approved transaction on the entity.
      #
      #   @return [Float, nil]
      required :time_since_last_transaction_days, Float, nil?: true

      # @!method initialize(approved_txn_amount_m2:, approved_txn_amount_m2_30d:, approved_txn_amount_m2_7d:, approved_txn_amount_m2_90d:, approved_txn_count:, approved_txn_count_30d:, approved_txn_count_7d:, approved_txn_count_90d:, avg_transaction_amount:, avg_transaction_amount_30d:, avg_transaction_amount_7d:, avg_transaction_amount_90d:, distinct_country_count:, distinct_mcc_count:, first_txn_at:, is_first_transaction:, last_cp_country:, last_cp_postal_code:, last_cp_timestamp:, last_txn_approved_at:, seen_countries:, seen_mccs:, seen_merchants:, stdev_transaction_amount:, stdev_transaction_amount_30d:, stdev_transaction_amount_7d:, stdev_transaction_amount_90d:, three_ds_success_count:, three_ds_success_rate:, three_ds_total_count:, time_since_last_transaction_days:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::SignalsResponse} for more details.
      #
      #   Behavioral feature state for a card or account derived from its transaction
      #   history.
      #
      #   Derived statistical features (averages, standard deviations, z-scores) are
      #   computed using Welford's online algorithm over approved transactions. Average
      #   fields are null when fewer than 5 approved transactions have been recorded.
      #   Standard deviation fields are null when fewer than 30 approved transactions have
      #   been recorded.
      #
      #   3DS fields (`three_ds_success_rate`, `three_ds_success_count`,
      #   `three_ds_total_count`) are card-scoped and will be null for account responses.
      #
      #   Raw fields (`seen_countries`, `seen_mccs`, `approved_txn_amount_m2`, etc.) are
      #   included so clients can compute their own transaction-specific derivations, such
      #   as checking whether a new transaction's country is in `seen_countries` to
      #   determine `is_new_country`, or computing a z-score using the raw mean and M2
      #   values.
      #
      #   @param approved_txn_amount_m2 [Float, nil] The Welford M2 accumulator for lifetime approved transaction amounts. Used toget
      #
      #   @param approved_txn_amount_m2_30d [Float, nil] The Welford M2 accumulator for approved transaction amounts over the last 30 day
      #
      #   @param approved_txn_amount_m2_7d [Float, nil] The Welford M2 accumulator for approved transaction amounts over the last 7 days
      #
      #   @param approved_txn_amount_m2_90d [Float, nil] The Welford M2 accumulator for approved transaction amounts over the last 90 day
      #
      #   @param approved_txn_count [Integer, nil] The total number of approved transactions over the entity's lifetime.
      #
      #   @param approved_txn_count_30d [Integer, nil] The number of approved transactions in the last 30 days.
      #
      #   @param approved_txn_count_7d [Integer, nil] The number of approved transactions in the last 7 days.
      #
      #   @param approved_txn_count_90d [Integer, nil] The number of approved transactions in the last 90 days.
      #
      #   @param avg_transaction_amount [Float, nil] The average approved transaction amount over the entity's lifetime, in cents. Nu
      #
      #   @param avg_transaction_amount_30d [Float, nil] The average approved transaction amount over the last 30 days, in cents. Null if
      #
      #   @param avg_transaction_amount_7d [Float, nil] The average approved transaction amount over the last 7 days, in cents. Null if
      #
      #   @param avg_transaction_amount_90d [Float, nil] The average approved transaction amount over the last 90 days, in cents. Null if
      #
      #   @param distinct_country_count [Integer, nil] The number of distinct merchant countries seen in the entity's transaction histo
      #
      #   @param distinct_mcc_count [Integer, nil] The number of distinct MCCs seen in the entity's transaction history.
      #
      #   @param first_txn_at [Time, nil] The timestamp of the first approved transaction for the entity, in ISO 8601 form
      #
      #   @param is_first_transaction [Boolean, nil] Whether the entity has no prior transaction history. Returns true if no history
      #
      #   @param last_cp_country [String, nil] The merchant country of the last card-present transaction.
      #
      #   @param last_cp_postal_code [String, nil] The merchant postal code of the last card-present transaction.
      #
      #   @param last_cp_timestamp [Time, nil] The timestamp of the last card-present transaction, in ISO 8601 format.
      #
      #   @param last_txn_approved_at [Time, nil] The timestamp of the most recent approved transaction for the entity, in ISO 860
      #
      #   @param seen_countries [Array<String>, nil] The set of merchant countries seen in the entity's transaction history. Clients
      #
      #   @param seen_mccs [Array<String>, nil] The set of MCCs seen in the entity's transaction history. Clients can use this t
      #
      #   @param seen_merchants [Array<String>, nil] The set of card acceptor IDs seen in the card's approved transaction history, ca
      #
      #   @param stdev_transaction_amount [Float, nil] The standard deviation of approved transaction amounts over the entity's lifetim
      #
      #   @param stdev_transaction_amount_30d [Float, nil] The standard deviation of approved transaction amounts over the last 30 days, in
      #
      #   @param stdev_transaction_amount_7d [Float, nil] The standard deviation of approved transaction amounts over the last 7 days, in
      #
      #   @param stdev_transaction_amount_90d [Float, nil] The standard deviation of approved transaction amounts over the last 90 days, in
      #
      #   @param three_ds_success_count [Integer, nil] The number of successful 3DS authentications for the card. Null for account resp
      #
      #   @param three_ds_success_rate [Float, nil] The 3DS authentication success rate for the card, as a percentage from 0.0 to 10
      #
      #   @param three_ds_total_count [Integer, nil] The total number of 3DS authentication attempts for the card. Null for account r
      #
      #   @param time_since_last_transaction_days [Float, nil] The number of days since the last approved transaction on the entity.
    end
  end
end
