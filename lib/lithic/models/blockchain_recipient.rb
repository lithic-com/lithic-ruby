# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BlockchainRecipients#create
    class BlockchainRecipient < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   A globally unique identifier for this blockchain recipient
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #   The financial account the blockchain recipient belongs to, or null when the
      #   recipient is registered against the program rather than a financial account
      #
      #   @return [String, nil]
      required :account_token, String, nil?: true

      # @!attribute address_tag
      #   An optional tag or memo used by some chains to identify the destination of a
      #   transfer within a shared address
      #
      #   @return [String, nil]
      required :address_tag, String, nil?: true

      # @!attribute chain
      #   The blockchain network that the address belongs to
      #
      #   @return [String]
      required :chain, String

      # @!attribute created
      #   An ISO 8601 string representing when this blockchain recipient was created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute external_id
      #   The identifier the recipient is registered under with the payment provider
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute name
      #   The nickname for this blockchain recipient
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute owner
      #   Legal name of the business or individual who owns the blockchain address
      #
      #   @return [String]
      required :owner, String

      # @!attribute owner_type
      #   Owner Type
      #
      #   @return [Symbol, Lithic::Models::OwnerType]
      required :owner_type, enum: -> { Lithic::OwnerType }

      # @!attribute program_id
      #   Globally unique identifier for the program the blockchain recipient is
      #   associated with
      #
      #   @return [String]
      required :program_id, String

      # @!attribute state
      #   Account State
      #
      #   @return [Symbol, Lithic::Models::BlockchainRecipient::State]
      required :state, enum: -> { Lithic::BlockchainRecipient::State }

      # @!attribute updated
      #   An ISO 8601 string representing when this blockchain recipient was last updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute verification_state
      #   Verification State
      #
      #   @return [Symbol, Lithic::Models::BlockchainRecipient::VerificationState]
      required :verification_state, enum: -> { Lithic::BlockchainRecipient::VerificationState }

      # @!method initialize(token:, account_token:, address_tag:, chain:, created:, external_id:, name:, owner:, owner_type:, program_id:, state:, updated:, verification_state:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::BlockchainRecipient} for more details.
      #
      #   @param token [String] A globally unique identifier for this blockchain recipient
      #
      #   @param account_token [String, nil] The financial account the blockchain recipient belongs to, or null when the reci
      #
      #   @param address_tag [String, nil] An optional tag or memo used by some chains to identify the destination of a tra
      #
      #   @param chain [String] The blockchain network that the address belongs to
      #
      #   @param created [Time] An ISO 8601 string representing when this blockchain recipient was created
      #
      #   @param external_id [String, nil] The identifier the recipient is registered under with the payment provider
      #
      #   @param name [String, nil] The nickname for this blockchain recipient
      #
      #   @param owner [String] Legal name of the business or individual who owns the blockchain address
      #
      #   @param owner_type [Symbol, Lithic::Models::OwnerType] Owner Type
      #
      #   @param program_id [String] Globally unique identifier for the program the blockchain recipient is associate
      #
      #   @param state [Symbol, Lithic::Models::BlockchainRecipient::State] Account State
      #
      #   @param updated [Time] An ISO 8601 string representing when this blockchain recipient was last updated
      #
      #   @param verification_state [Symbol, Lithic::Models::BlockchainRecipient::VerificationState] Verification State

      # Account State
      #
      # @see Lithic::Models::BlockchainRecipient#state
      module State
        extend Lithic::Internal::Type::Enum

        ENABLED = :ENABLED
        CLOSED = :CLOSED
        PAUSED = :PAUSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Verification State
      #
      # @see Lithic::Models::BlockchainRecipient#verification_state
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
