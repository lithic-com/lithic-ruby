# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Accounts#retrieve_signals
    class AccountRetrieveSignalsParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #
      #   @return [String]
      required :account_token, String

      # @!method initialize(account_token:, request_options: {})
      #   @param account_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
