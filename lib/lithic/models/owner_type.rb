# frozen_string_literal: true

module Lithic
  module Models
    # @abstract
    class OwnerType < Lithic::Enum
      INDIVIDUAL = :INDIVIDUAL
      BUSINESS = :BUSINESS

      finalize!
    end
  end
end
