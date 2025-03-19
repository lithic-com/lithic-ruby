# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateResponse < Lithic::BaseModel
        # @!attribute [r] token
        #   A unique token to reference this transaction with later calls to void or clear
        #     the authorization.
        #
        #   @return [String, nil]
        optional :token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :token

        # @!parse
        #   # @param token [String]
        #   #
        #   def initialize(token: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
