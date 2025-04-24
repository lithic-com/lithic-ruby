# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#create
    class PaymentCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute external_bank_account_token
      #
      #   @return [String]
      required :external_bank_account_token, String

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute method_
      #
      #   @return [Symbol, Lithic::Models::PaymentCreateParams::Method]
      required :method_, enum: -> { Lithic::Models::PaymentCreateParams::Method }, api_name: :method

      # @!attribute method_attributes
      #
      #   @return [Lithic::Models::PaymentCreateParams::MethodAttributes]
      required :method_attributes, -> { Lithic::Models::PaymentCreateParams::MethodAttributes }

      # @!attribute type
      #
      #   @return [Symbol, Lithic::Models::PaymentCreateParams::Type]
      required :type, enum: -> { Lithic::Models::PaymentCreateParams::Type }

      # @!attribute token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!method initialize(amount:, external_bank_account_token:, financial_account_token:, method_:, method_attributes:, type:, token: nil, memo: nil, user_defined_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::PaymentCreateParams} for more details.
      #
      #   @param amount [Integer]
      #
      #   @param external_bank_account_token [String]
      #
      #   @param financial_account_token [String]
      #
      #   @param method_ [Symbol, Lithic::Models::PaymentCreateParams::Method]
      #
      #   @param method_attributes [Lithic::Models::PaymentCreateParams::MethodAttributes]
      #
      #   @param type [Symbol, Lithic::Models::PaymentCreateParams::Type]
      #
      #   @param token [String] Customer-provided token that will serve as an idempotency token. This token will
      #   ...
      #
      #   @param memo [String]
      #
      #   @param user_defined_id [String]
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module Method
        extend Lithic::Internal::Type::Enum

        ACH_NEXT_DAY = :ACH_NEXT_DAY
        ACH_SAME_DAY = :ACH_SAME_DAY

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class MethodAttributes < Lithic::Internal::Type::BaseModel
        # @!attribute sec_code
        #
        #   @return [Symbol, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode]
        required :sec_code, enum: -> { Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode }

        # @!method initialize(sec_code:)
        #   @param sec_code [Symbol, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode]

        # @see Lithic::Models::PaymentCreateParams::MethodAttributes#sec_code
        module SecCode
          extend Lithic::Internal::Type::Enum

          CCD = :CCD
          PPD = :PPD
          WEB = :WEB

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      module Type
        extend Lithic::Internal::Type::Enum

        COLLECTION = :COLLECTION
        PAYMENT = :PAYMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
