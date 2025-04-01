# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#upload_document
    class AccountHolderUploadDocumentParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute document_type
      #   The type of document to upload
      #
      #   @return [Symbol, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType]
      required :document_type, enum: -> { Lithic::Models::AccountHolderUploadDocumentParams::DocumentType }

      # @!attribute entity_token
      #   Globally unique identifier for the entity.
      #
      #   @return [String]
      required :entity_token, String

      # @!parse
      #   # @param document_type [Symbol, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType]
      #   # @param entity_token [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(document_type:, entity_token:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # The type of document to upload
      module DocumentType
        extend Lithic::Enum

        EIN_LETTER = :EIN_LETTER
        TAX_RETURN = :TAX_RETURN
        OPERATING_AGREEMENT = :OPERATING_AGREEMENT
        CERTIFICATE_OF_FORMATION = :CERTIFICATE_OF_FORMATION
        DRIVERS_LICENSE = :DRIVERS_LICENSE
        PASSPORT = :PASSPORT
        PASSPORT_CARD = :PASSPORT_CARD
        CERTIFICATE_OF_GOOD_STANDING = :CERTIFICATE_OF_GOOD_STANDING
        ARTICLES_OF_INCORPORATION = :ARTICLES_OF_INCORPORATION
        ARTICLES_OF_ORGANIZATION = :ARTICLES_OF_ORGANIZATION
        BYLAWS = :BYLAWS
        GOVERNMENT_BUSINESS_LICENSE = :GOVERNMENT_BUSINESS_LICENSE
        PARTNERSHIP_AGREEMENT = :PARTNERSHIP_AGREEMENT
        SS4_FORM = :SS4_FORM
        BANK_STATEMENT = :BANK_STATEMENT
        UTILITY_BILL_STATEMENT = :UTILITY_BILL_STATEMENT
        SSN_CARD = :SSN_CARD
        ITIN_LETTER = :ITIN_LETTER
        FINCEN_BOI_REPORT = :FINCEN_BOI_REPORT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
