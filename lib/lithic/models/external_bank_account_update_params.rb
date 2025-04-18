# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#update
    class ExternalBankAccountUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute address
      #   Address
      #
      #   @return [Lithic::Models::ExternalBankAccountAddress, nil]
      optional :address, -> { Lithic::Models::ExternalBankAccountAddress }

      # @!attribute company_id
      #   Optional field that helps identify bank accounts in receipts
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute dob
      #   Date of Birth of the Individual that owns the external bank account
      #
      #   @return [Date, nil]
      optional :dob, Date

      # @!attribute doing_business_as
      #   Doing Business As
      #
      #   @return [String, nil]
      optional :doing_business_as, String

      # @!attribute name
      #   The nickname for this External Bank Account
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute owner
      #   Legal Name of the business or individual who owns the external account. This
      #   will appear in statements
      #
      #   @return [String, nil]
      optional :owner, String

      # @!attribute owner_type
      #   Owner Type
      #
      #   @return [Symbol, Lithic::Models::OwnerType, nil]
      optional :owner_type, enum: -> { Lithic::Models::OwnerType }

      # @!attribute type
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type, nil]
      optional :type, enum: -> { Lithic::Models::ExternalBankAccountUpdateParams::Type }

      # @!attribute user_defined_id
      #   User Defined ID
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!method initialize(address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, owner: nil, owner_type: nil, type: nil, user_defined_id: nil, request_options: {})
      #   @param address [Lithic::Models::ExternalBankAccountAddress]
      #   @param company_id [String]
      #   @param dob [Date]
      #   @param doing_business_as [String]
      #   @param name [String]
      #   @param owner [String]
      #   @param owner_type [Symbol, Lithic::Models::OwnerType]
      #   @param type [Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type]
      #   @param user_defined_id [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module Type
        extend Lithic::Internal::Type::Enum

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
