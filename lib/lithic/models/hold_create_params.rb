# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Holds#create
    class HoldCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute amount
      #   Amount to hold in cents
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute token
      #   Customer-provided token for idempotency. Becomes the hold token.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute expiration_datetime
      #   When the hold should auto-expire
      #
      #   @return [Time, nil]
      optional :expiration_datetime, Time

      # @!attribute memo
      #   Reason for the hold
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!attribute user_defined_id
      #   User-provided identifier for the hold
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!method initialize(financial_account_token:, amount:, token: nil, expiration_datetime: nil, memo: nil, user_defined_id: nil, request_options: {})
      #   @param financial_account_token [String]
      #
      #   @param amount [Integer] Amount to hold in cents
      #
      #   @param token [String] Customer-provided token for idempotency. Becomes the hold token.
      #
      #   @param expiration_datetime [Time] When the hold should auto-expire
      #
      #   @param memo [String, nil] Reason for the hold
      #
      #   @param user_defined_id [String] User-provided identifier for the hold
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
