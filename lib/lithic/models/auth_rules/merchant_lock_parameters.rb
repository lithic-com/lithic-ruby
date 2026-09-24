# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class MerchantLockParameters < Lithic::Internal::Type::BaseModel
        # @!attribute merchants
        #   A list of merchant locks defining specific merchants or groups of merchants
        #   (based on descriptors or IDs) that the lock applies to.
        #
        #   @return [Array<Lithic::Models::AuthRules::MerchantLockParameters::Merchant>]
        required :merchants,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::MerchantLockParameters::Merchant] }

        response_only do
          # @!attribute locked_at
          #   Timestamp of when the merchant lock was created
          #
          #   @return [Time, nil]
          optional :locked_at, Time
        end

        # @!method initialize(merchants:, locked_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::MerchantLockParameters} for more details.
        #
        #   @param merchants [Array<Lithic::Models::AuthRules::MerchantLockParameters::Merchant>] A list of merchant locks defining specific merchants or groups of merchants (bas
        #
        #   @param locked_at [Time] Timestamp of when the merchant lock was created

        class Merchant < Lithic::Internal::Type::BaseModel
          # @!attribute comment
          #   A comment or explanation about the merchant, used internally for rule management
          #   purposes.
          #
          #   @return [String, nil]
          optional :comment, String

          # @!attribute descriptor
          #   Short description of the merchant, often used to provide more human-readable
          #   context about the transaction merchant. This is typically the name or label
          #   shown on transaction summaries.
          #
          #   @return [String, nil]
          optional :descriptor, String

          # @!attribute merchant_id
          #   Unique alphanumeric identifier for the payment card acceptor (merchant). This
          #   attribute specifies the merchant entity that will be locked or referenced for
          #   authorization rules.
          #
          #   @return [String, nil]
          optional :merchant_id, String

          # @!method initialize(comment: nil, descriptor: nil, merchant_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::MerchantLockParameters::Merchant} for more details.
          #
          #   Represents a specific merchant lock based on their ID or descriptor. Each
          #   merchant object allows transaction rules to work at a granular level and
          #   requires at least one of merchant_id or descriptor.
          #
          #   @param comment [String] A comment or explanation about the merchant, used internally for rule management
          #
          #   @param descriptor [String] Short description of the merchant, often used to provide more human-readable con
          #
          #   @param merchant_id [String] Unique alphanumeric identifier for the payment card acceptor (merchant). This at
        end
      end
    end
  end
end
