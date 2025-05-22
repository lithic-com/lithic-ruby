# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#list_documents
    class AccountHolderListDocumentsResponse < Lithic::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Lithic::Models::Document>, nil]
      optional :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::Document] }

      # @!method initialize(data: nil)
      #   @param data [Array<Lithic::Models::Document>]
    end
  end
end
