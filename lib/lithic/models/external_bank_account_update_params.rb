# frozen_string_literal: true

module Lithic
  module Models
    class ExternalBankAccountUpdateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] address
      #   Address
      #
      #   @return [Lithic::Models::ExternalBankAccountAddress, nil]
      optional :address, -> { Lithic::Models::ExternalBankAccountAddress }

      # @!parse
      #   # @return [Lithic::Models::ExternalBankAccountAddress]
      #   attr_writer :address

      # @!attribute [r] company_id
      #   Optional field that helps identify bank accounts in receipts
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_id

      # @!attribute [r] dob
      #   Date of Birth of the Individual that owns the external bank account
      #
      #   @return [Date, nil]
      optional :dob, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :dob

      # @!attribute [r] doing_business_as
      #   Doing Business As
      #
      #   @return [String, nil]
      optional :doing_business_as, String

      # @!parse
      #   # @return [String]
      #   attr_writer :doing_business_as

      # @!attribute [r] name
      #   The nickname for this External Bank Account
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] owner
      #   Legal Name of the business or individual who owns the external account. This
      #     will appear in statements
      #
      #   @return [String, nil]
      optional :owner, String

      # @!parse
      #   # @return [String]
      #   attr_writer :owner

      # @!attribute [r] owner_type
      #   Owner Type
      #
      #   @return [Symbol, Lithic::Models::OwnerType, nil]
      optional :owner_type, enum: -> { Lithic::Models::OwnerType }

      # @!parse
      #   # @return [Symbol, Lithic::Models::OwnerType]
      #   attr_writer :owner_type

      # @!attribute [r] type
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type, nil]
      optional :type, enum: -> { Lithic::Models::ExternalBankAccountUpdateParams::Type }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type]
      #   attr_writer :type

      # @!attribute [r] user_defined_id
      #   User Defined ID
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :user_defined_id

      # @!parse
      #   # @param address [Lithic::Models::ExternalBankAccountAddress]
      #   # @param company_id [String]
      #   # @param dob [Date]
      #   # @param doing_business_as [String]
      #   # @param name [String]
      #   # @param owner [String]
      #   # @param owner_type [Symbol, Lithic::Models::OwnerType]
      #   # @param type [Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type]
      #   # @param user_defined_id [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     address: nil,
      #     company_id: nil,
      #     dob: nil,
      #     doing_business_as: nil,
      #     name: nil,
      #     owner: nil,
      #     owner_type: nil,
      #     type: nil,
      #     user_defined_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # @abstract
      class Type < Lithic::Enum
        CHECKING = :CHECKING
        SAVINGS = :SAVINGS

        finalize!
      end
    end
  end
end
