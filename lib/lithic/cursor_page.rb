# frozen_string_literal: true

module Lithic
  # @example
  #   if cursor_page.has_next?
  #     cursor_page = cursor_page.next_page
  #   end
  #
  # @example
  #   cursor_page.auto_paging_each do |account|
  #     puts(account)
  #   end
  #
  # @example
  #   accounts =
  #     cursor_page
  #     .to_enum
  #     .lazy
  #     .select { _1.object_id.even? }
  #     .map(&:itself)
  #     .take(2)
  #     .to_a
  #
  #   accounts => Array
  class CursorPage
    include Lithic::BasePage

    # @return [Array<Object>, nil]
    attr_accessor :data

    # @return [Boolean]
    attr_accessor :has_more

    # @api private
    #
    # @param client [Lithic::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Hash{Symbol=>Object}]
    def initialize(client:, req:, headers:, page_data:)
      super
      model = req.fetch(:model)

      case page_data
      in {data: Array | nil => data}
        @data = data&.map { Lithic::Converter.coerce(model, _1) }
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
    # @return [Lithic::CursorPage]
    def next_page
      unless next_page?
        message = "No more pages available. Please check #next_page? before calling ##{__method__}"
        raise RuntimeError.new(message)
      end

      req = Lithic::Util.deep_merge(@req, {query: {starting_after: data&.last&.token}})
      @client.request(req)
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
