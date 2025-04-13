# frozen_string_literal: true

module Lithic
  # @api private
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{Lithic::Internal}::OMIT>" }
      end
        .freeze
  end
end
