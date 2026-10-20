# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::IPRanges#retrieve
    class IPRangeRetrieveResponse < Lithic::Internal::Type::BaseModel
      # @!attribute responders
      #   IP ranges that responder requests are sent from, in CIDR notation
      #
      #   @return [Array<String>]
      required :responders, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute updated
      #   Date and time the IP ranges were last changed
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(responders:, updated:)
      #   @param responders [Array<String>] IP ranges that responder requests are sent from, in CIDR notation
      #
      #   @param updated [Time] Date and time the IP ranges were last changed
    end
  end
end
