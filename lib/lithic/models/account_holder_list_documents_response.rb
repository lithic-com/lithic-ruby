# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#list_documents
    class AccountHolderListDocumentsResponse < Lithic::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Lithic::Models::Document>, nil]
      optional :data, -> { Lithic::ArrayOf[Lithic::Models::Document] }

      # @!parse
      #   # @return [Array<Lithic::Models::Document>]
      #   attr_writer :data

      # @!parse
      #   # @param data [Array<Lithic::Models::Document>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
