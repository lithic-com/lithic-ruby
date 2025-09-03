# frozen_string_literal: true

module Lithic
  module Models
    class WirePartyDetails < Lithic::Internal::Type::BaseModel
      # @!attribute account_number
      #   Account number
      #
      #   @return [String, nil]
      optional :account_number, String, nil?: true

      # @!attribute agent_id
      #   Routing number or BIC of the financial institution
      #
      #   @return [String, nil]
      optional :agent_id, String, nil?: true

      # @!attribute agent_name
      #   Name of the financial institution
      #
      #   @return [String, nil]
      optional :agent_name, String, nil?: true

      # @!attribute name
      #   Name of the person or company
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(account_number: nil, agent_id: nil, agent_name: nil, name: nil)
      #   @param account_number [String, nil] Account number
      #
      #   @param agent_id [String, nil] Routing number or BIC of the financial institution
      #
      #   @param agent_name [String, nil] Name of the financial institution
      #
      #   @param name [String, nil] Name of the person or company
    end
  end
end
