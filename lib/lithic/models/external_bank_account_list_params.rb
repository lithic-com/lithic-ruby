# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#list
    class ExternalBankAccountListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute account_types
      #
      #   @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType>, nil]
      optional :account_types,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::ExternalBankAccountListParams::AccountType] }

      # @!attribute countries
      #
      #   @return [Array<String>, nil]
      optional :countries, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute ending_before
      #   A cursor representing an item's token before which a page of results should end.
      #   Used to retrieve the previous page of results before this item.
      #
      #   @return [String, nil]
      optional :ending_before, String

      # @!attribute owner_types
      #
      #   @return [Array<Symbol, Lithic::Models::OwnerType>, nil]
      optional :owner_types, -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::OwnerType] }

      # @!attribute page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute starting_after
      #   A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!attribute states
      #
      #   @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::State>, nil]
      optional :states,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::ExternalBankAccountListParams::State] }

      # @!attribute verification_states
      #
      #   @return [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState>, nil]
      optional :verification_states,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::ExternalBankAccountListParams::VerificationState] }

      # @!method initialize(account_token: nil, account_types: nil, countries: nil, ending_before: nil, owner_types: nil, page_size: nil, starting_after: nil, states: nil, verification_states: nil, request_options: {})
      #   @param account_token [String]
      #   @param account_types [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType>]
      #   @param countries [Array<String>]
      #   @param ending_before [String]
      #   @param owner_types [Array<Symbol, Lithic::Models::OwnerType>]
      #   @param page_size [Integer]
      #   @param starting_after [String]
      #   @param states [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::State>]
      #   @param verification_states [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState>]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module AccountType
        extend Lithic::Internal::Type::Enum

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module State
        extend Lithic::Internal::Type::Enum

        ENABLED = :ENABLED
        CLOSED = :CLOSED
        PAUSED = :PAUSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module VerificationState
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        ENABLED = :ENABLED
        FAILED_VERIFICATION = :FAILED_VERIFICATION
        INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
