# frozen_string_literal: true

module Lithic
  module Internal
    # @example
    #   if single_page.has_next?
    #     single_page = single_page.next_page
    #   end
    #
    # @example
    #   single_page.auto_paging_each do |account_holder|
    #     puts(account_holder)
    #   end
    class SinglePage
      include Lithic::Internal::Type::BasePage

      # @return [Array<Object>, nil]
      attr_accessor :data

      # @return [Boolean]
      attr_accessor :has_more

      # @api private
      #
      # @param client [Lithic::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Array<Object>]
      def initialize(client:, req:, headers:, page_data:)
        super
        model = req.fetch(:model)

        case page_data
        in {data: Array | nil => data}
          @data = data&.map { Lithic::Internal::Type::Converter.coerce(model, _1) }
        else
        end

        case page_data
        in {has_more: true | false => has_more}
          @has_more = has_more
        else
        end
      end

      # @return [Boolean]
      def next_page?
        has_more
      end

      # @raise [Lithic::HTTP::Error]
      # @return [Lithic::Internal::SinglePage]
      def next_page
        RuntimeError.new("No more pages available.")
      end

      # @param blk [Proc]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end
        page = self
        loop do
          page.data&.each { blk.call(_1) }
          break unless page.next_page?
          page = page.next_page
        end
      end

      # @return [String]
      def inspect
        "#<#{self.class}:0x#{object_id.to_s(16)} data=#{data.inspect} has_more=#{has_more.inspect}>"
      end
    end
  end
end
