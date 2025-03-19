# frozen_string_literal: true

module Lithic
  module Resources
    class ThreeDS
      # @return [Lithic::Resources::ThreeDS::Authentication]
      attr_reader :authentication

      # @return [Lithic::Resources::ThreeDS::Decisioning]
      attr_reader :decisioning

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @authentication = Lithic::Resources::ThreeDS::Authentication.new(client: client)
        @decisioning = Lithic::Resources::ThreeDS::Decisioning.new(client: client)
      end
    end
  end
end
