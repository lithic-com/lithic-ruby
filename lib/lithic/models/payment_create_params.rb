# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#create
    class PaymentCreateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

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

      # @!attribute [r] token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #     become the transaction token.
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!attribute [r] user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :user_defined_id

      # @!parse
      #   # @param amount [Integer]
      #   # @param external_bank_account_token [String]
      #   # @param financial_account_token [String]
      #   # @param method_ [Symbol, Lithic::Models::PaymentCreateParams::Method]
      #   # @param method_attributes [Lithic::Models::PaymentCreateParams::MethodAttributes]
      #   # @param type [Symbol, Lithic::Models::PaymentCreateParams::Type]
      #   # @param token [String]
      #   # @param memo [String]
      #   # @param user_defined_id [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     external_bank_account_token:,
      #     financial_account_token:,
      #     method_:,
      #     method_attributes:,
      #     type:,
      #     token: nil,
      #     memo: nil,
      #     user_defined_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      module Method
        extend Lithic::Enum

        ACH_NEXT_DAY = :ACH_NEXT_DAY
        ACH_SAME_DAY = :ACH_SAME_DAY

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class MethodAttributes < Lithic::BaseModel
        # @!attribute sec_code
        #
        #   @return [Symbol, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode]
        required :sec_code, enum: -> { Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode }

        # @!parse
        #   # @param sec_code [Symbol, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode]
        #   #
        #   def initialize(sec_code:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # @see Lithic::Models::PaymentCreateParams::MethodAttributes#sec_code
        module SecCode
          extend Lithic::Enum

          CCD = :CCD
          PPD = :PPD
          WEB = :WEB

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      module Type
        extend Lithic::Enum

        COLLECTION = :COLLECTION
        PAYMENT = :PAYMENT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
