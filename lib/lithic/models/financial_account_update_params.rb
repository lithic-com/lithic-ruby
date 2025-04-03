# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#update
    class FinancialAccountUpdateParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] nickname
      #
      #   @return [String, nil]
      optional :nickname, String

      # @!parse
      #   # @return [String]
      #   attr_writer :nickname

      # @!parse
      #   # @param nickname [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(nickname: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
