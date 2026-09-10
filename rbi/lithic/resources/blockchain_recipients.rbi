# typed: strong

module Lithic
  module Resources
    class BlockchainRecipients
      # Register a blockchain address as a withdrawal destination for a financial
      # account
      #
      # The recipient is created with a `PENDING` verification state and cannot receive
      # a payout until screening of the address completes. Registering an address that
      # is already registered to the same financial account returns the existing
      # recipient and its current verification state, rather than creating a second one
      sig do
        params(
          account_token: String,
          address: String,
          chain: String,
          owner: String,
          owner_type: Lithic::OwnerType::OrSymbol,
          address_tag: String,
          name: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::BlockchainRecipient)
      end
      def create(
        # The financial account the blockchain recipient belongs to
        account_token:,
        # The blockchain address funds will be withdrawn to
        address:,
        # The blockchain network that the address belongs to
        chain:,
        # Legal name of the business or individual who owns the blockchain address
        owner:,
        # Owner Type
        owner_type:,
        # An optional tag or memo used by some chains to identify the destination of a
        # transfer within a shared address
        address_tag: nil,
        # The nickname for this blockchain recipient
        name: nil,
        request_options: {}
      )
      end

      # Get a blockchain recipient by token
      #
      # Use this to poll the `verification_state` after registering an address: a
      # recipient cannot receive a payout until screening completes and moves it out of
      # `PENDING`
      sig do
        params(
          blockchain_recipient_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::BlockchainRecipient)
      end
      def retrieve(blockchain_recipient_token, request_options: {})
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
