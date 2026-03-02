# frozen_string_literal: true

module Lithic
  module Resources
    class AccountHolders
      class Entities
        # Some parameter documentations has been truncated, see
        # {Lithic::Models::AccountHolders::EntityCreateParams} for more details.
        #
        # Create a new beneficial owner individual or replace the control person entity on
        # an existing KYB account holder. This endpoint is only applicable for account
        # holders enrolled through a KYB workflow with the Persona KYB provider. A new
        # control person can only replace the existing one. A maximum of 4 beneficial
        # owners can be associated with an account holder.
        #
        # @overload create(account_holder_token, address:, dob:, email:, first_name:, government_id:, last_name:, phone_number:, type:, request_options: {})
        #
        # @param account_holder_token [String] Globally unique identifier for the account holder.
        #
        # @param address [Lithic::Models::AccountHolders::EntityCreateParams::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
        #
        # @param dob [String] Individual's date of birth, as an RFC 3339 date.
        #
        # @param email [String] Individual's email address. If utilizing Lithic for chargeback processing, this
        #
        # @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
        #
        # @param government_id [String] Government-issued identification number (required for identity verification and
        #
        # @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
        #
        # @param phone_number [String] Individual's phone number, entered in E.164 format.
        #
        # @param type [Symbol, Lithic::Models::AccountHolders::EntityCreateParams::Type] The type of entity to create on the account holder
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AccountHolders::EntityCreateResponse]
        #
        # @see Lithic::Models::AccountHolders::EntityCreateParams
        def create(account_holder_token, params)
          parsed, options = Lithic::AccountHolders::EntityCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/account_holders/%1$s/entities", account_holder_token],
            body: parsed,
            model: Lithic::Models::AccountHolders::EntityCreateResponse,
            options: options
          )
        end

        # Deactivate a beneficial owner individual on an existing KYB account holder. Only
        # beneficial owner individuals can be deactivated.
        #
        # @overload delete(entity_token, account_holder_token:, request_options: {})
        #
        # @param entity_token [String] Globally unique identifier for the entity.
        #
        # @param account_holder_token [String] Globally unique identifier for the account holder.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AccountHolders::AccountHolderEntity]
        #
        # @see Lithic::Models::AccountHolders::EntityDeleteParams
        def delete(entity_token, params)
          parsed, options = Lithic::AccountHolders::EntityDeleteParams.dump_request(params)
          account_holder_token =
            parsed.delete(:account_holder_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/account_holders/%1$s/entities/%2$s", account_holder_token, entity_token],
            model: Lithic::AccountHolders::AccountHolderEntity,
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
end
