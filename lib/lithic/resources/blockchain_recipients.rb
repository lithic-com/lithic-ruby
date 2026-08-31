# frozen_string_literal: true

module Lithic
  module Resources
    class BlockchainRecipients
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::BlockchainRecipientCreateParams} for more details.
      #
      # Register a blockchain address as a withdrawal destination for a financial
      # account
      #
      # The recipient is created with a `PENDING` verification state and cannot receive
      # a payout until screening of the address completes. Registering an address that
      # is already registered to the same financial account returns the existing
      # recipient and its current verification state, rather than creating a second one
      #
      # @overload create(account_token:, address:, chain:, owner:, owner_type:, address_tag: nil, name: nil, request_options: {})
      #
      # @param account_token [String] The financial account the blockchain recipient belongs to
      #
      # @param address [String] The blockchain address funds will be withdrawn to
      #
      # @param chain [String] The blockchain network that the address belongs to
      #
      # @param owner [String] Legal name of the business or individual who owns the blockchain address
      #
      # @param owner_type [Symbol, Lithic::Models::OwnerType] Owner Type
      #
      # @param address_tag [String] An optional tag or memo used by some chains to identify the destination of a tra
      #
      # @param name [String] The nickname for this blockchain recipient
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::BlockchainRecipient]
      #
      # @see Lithic::Models::BlockchainRecipientCreateParams
      def create(params)
        parsed, options = Lithic::BlockchainRecipientCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/blockchain_recipients",
          body: parsed,
          model: Lithic::BlockchainRecipient,
          options: options
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
