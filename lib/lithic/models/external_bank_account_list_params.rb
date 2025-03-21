# frozen_string_literal: true

module Lithic
  module Models
    class ExternalBankAccountListParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] account_token
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] account_types
      #
      #   @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType>, nil]
      optional :account_types,
               -> { Lithic::ArrayOf[enum: Lithic::Models::ExternalBankAccountListParams::AccountType] }

      # @!parse
      #   # @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType>]
      #   attr_writer :account_types

      # @!attribute [r] countries
      #
      #   @return [Array<String>, nil]
      optional :countries, Lithic::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :countries

      # @!attribute [r] ending_before
      #   A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @return [String, nil]
      optional :ending_before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ending_before

      # @!attribute [r] owner_types
      #
      #   @return [Array<Symbol, Lithic::Models::OwnerType>, nil]
      optional :owner_types, -> { Lithic::ArrayOf[enum: Lithic::Models::OwnerType] }

      # @!parse
      #   # @return [Array<Symbol, Lithic::Models::OwnerType>]
      #   attr_writer :owner_types

      # @!attribute [r] page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] starting_after
      #   A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :starting_after

      # @!attribute [r] states
      #
      #   @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::State>, nil]
      optional :states, -> { Lithic::ArrayOf[enum: Lithic::Models::ExternalBankAccountListParams::State] }

      # @!parse
      #   # @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::State>]
      #   attr_writer :states

      # @!attribute [r] verification_states
      #
      #   @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState>, nil]
      optional :verification_states,
               -> { Lithic::ArrayOf[enum: Lithic::Models::ExternalBankAccountListParams::VerificationState] }

      # @!parse
      #   # @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState>]
      #   attr_writer :verification_states

      # @!parse
      #   # @param account_token [String]
      #   # @param account_types [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType>]
      #   # @param countries [Array<String>]
      #   # @param ending_before [String]
      #   # @param owner_types [Array<Symbol, Lithic::Models::OwnerType>]
      #   # @param page_size [Integer]
      #   # @param starting_after [String]
      #   # @param states [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::State>]
      #   # @param verification_states [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState>]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_token: nil,
      #     account_types: nil,
      #     countries: nil,
      #     ending_before: nil,
      #     owner_types: nil,
      #     page_size: nil,
      #     starting_after: nil,
      #     states: nil,
      #     verification_states: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      module AccountType
        extend Lithic::Enum

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module State
        extend Lithic::Enum

        ENABLED = :ENABLED
        CLOSED = :CLOSED
        PAUSED = :PAUSED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module VerificationState
        extend Lithic::Enum

        PENDING = :PENDING
        ENABLED = :ENABLED
        FAILED_VERIFICATION = :FAILED_VERIFICATION
        INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
