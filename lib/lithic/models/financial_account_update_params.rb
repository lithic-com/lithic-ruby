# frozen_string_literal: true

module Lithic
  module Models
    class FinancialAccountUpdateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

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

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
