# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#list_documents
    class AccountHolderListDocumentsResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Lithic::Models::Document>, nil]
      optional :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Document] }

      # @!parse
      #   # @return [Array<Lithic::Models::Document>]
      #   attr_writer :data

      # @!parse
      #   # @param data [Array<Lithic::Models::Document>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
