# typed: strong

module Lithic
  module Resources
    class AccountHolders
      class Entities
        # Create a new beneficial owner or replace the control person entity on an
        # existing KYB account holder. This endpoint is only applicable for account
        # holders enrolled through a KYB workflow with the Persona KYB provider. A new
        # control person can only replace the existing one. A maximum of 4 beneficial
        # owners can be associated with an account holder.
        sig do
          params(
            account_holder_token: String,
            address:
              Lithic::AccountHolders::EntityCreateParams::Address::OrHash,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String,
            type: Lithic::AccountHolders::EntityCreateParams::Type::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AccountHolders::EntityCreateResponse)
        end
        def create(
          # Globally unique identifier for the account holder.
          account_holder_token,
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          address:,
          # Individual's date of birth, as an RFC 3339 date.
          dob:,
          # Individual's email address. If utilizing Lithic for chargeback processing, this
          # customer email address may be used to communicate dispute status and resolution.
          email:,
          # Individual's first name, as it appears on government-issued identity documents.
          first_name:,
          # Government-issued identification number (required for identity verification and
          # compliance with banking regulations). Social Security Numbers (SSN) and
          # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
          # entered as full nine-digits, with or without hyphens
          government_id:,
          # Individual's last name, as it appears on government-issued identity documents.
          last_name:,
          # Individual's phone number, entered in E.164 format.
          phone_number:,
          # The type of entity to create on the account holder
          type:,
          request_options: {}
        )
        end

        # Deactivate a beneficial owner entity on an existing KYB account holder. Only
        # beneficial owner entities can be deactivated.
        sig do
          params(
            entity_token: String,
            account_holder_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::AccountHolders::AccountHolderEntity)
        end
        def delete(
          # Globally unique identifier for the entity.
          entity_token,
          # Globally unique identifier for the account holder.
          account_holder_token:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
