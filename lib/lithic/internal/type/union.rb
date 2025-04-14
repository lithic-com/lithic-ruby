# frozen_string_literal: true

module Lithic
  module Internal
    module Type
      # @api private
      #
      # @example
      #   # `account_holder_update_response` is a `Lithic::Models::AccountHolderUpdateResponse`
      #   case account_holder_update_response
      #   when Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse
      #     puts(account_holder_update_response.token)
      #   when Lithic::Models::AccountHolderUpdateResponse::PatchResponse
      #     puts(account_holder_update_response.address)
      #   else
      #     puts(account_holder_update_response)
      #   end
      module Union
        include Lithic::Internal::Type::Converter

        # @api private
        #
        # All of the specified variant info for this union.
        #
        # @return [Array<Array(Symbol, Proc)>]
        private def known_variants = (@known_variants ||= [])

        # @api private
        #
        # @return [Array<Array(Symbol, Object)>]
        protected def derefed_variants
          @known_variants.map { |key, variant_fn| [key, variant_fn.call] }
        end

        # All of the specified variants for this union.
        #
        # @return [Array<Object>]
        def variants = derefed_variants.map(&:last)

        # @api private
        #
        # @param property [Symbol]
        private def discriminator(property)
          case property
          in Symbol
            @discriminator = property
          end
        end

        # @api private
        #
        # @param key [Symbol, Hash{Symbol=>Object}, Proc, Lithic::Internal::Type::Converter, Class]
        #
        # @param spec [Hash{Symbol=>Object}, Proc, Lithic::Internal::Type::Converter, Class] .
        #
        #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
        #
        #   @option spec [Proc] :enum
        #
        #   @option spec [Proc] :union
        #
        #   @option spec [Boolean] :"nil?"
        private def variant(key, spec = nil)
          variant_info =
            case key
            in Symbol
              [key, Lithic::Internal::Type::Converter.type_info(spec)]
            in Proc | Lithic::Internal::Type::Converter | Class | Hash
              [nil, Lithic::Internal::Type::Converter.type_info(key)]
            end

          known_variants << variant_info
        end

        # @api private
        #
        # @param value [Object]
        #
        # @return [Lithic::Internal::Type::Converter, Class, nil]
        private def resolve_variant(value)
          case [@discriminator, value]
          in [_, Lithic::Internal::Type::BaseModel]
            value.class
          in [Symbol, Hash]
            key = value.fetch(@discriminator) do
              value.fetch(@discriminator.to_s, Lithic::Internal::OMIT)
            end

            return nil if key == Lithic::Internal::OMIT

            key = key.to_sym if key.is_a?(String)
            known_variants.find { |k,| k == key }&.last&.call
          else
            nil
          end
        end

        # rubocop:disable Style/HashEachMethods
        # rubocop:disable Style/CaseEquality

        # @param other [Object]
        #
        # @return [Boolean]
        def ===(other)
          known_variants.any? do |_, variant_fn|
            variant_fn.call === other
          end
        end

        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          Lithic::Internal::Type::Union === other && other.derefed_variants == derefed_variants
        end

        # @api private
        #
        # @param value [Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean, :strong] :strictness
        #
        #   @option state [Hash{Symbol=>Object}] :exactness
        #
        #   @option state [Integer] :branched
        #
        # @return [Object]
        def coerce(value, state:)
          if (target = resolve_variant(value))
            return Lithic::Internal::Type::Converter.coerce(target, value, state: state)
          end

          strictness = state.fetch(:strictness)
          exactness = state.fetch(:exactness)
          state[:strictness] = strictness == :strong ? true : strictness

          alternatives = []
          known_variants.each do |_, variant_fn|
            target = variant_fn.call
            exact = state[:exactness] = {yes: 0, no: 0, maybe: 0}
            state[:branched] += 1

            coerced = Lithic::Internal::Type::Converter.coerce(target, value, state: state)
            yes, no, maybe = exact.values
            if (no + maybe).zero? || (!strictness && yes.positive?)
              exact.each { exactness[_1] += _2 }
              state[:exactness] = exactness
              return coerced
            elsif maybe.positive?
              alternatives << [[-yes, -maybe, no], exact, coerced]
            end
          end

          case alternatives.sort_by(&:first)
          in []
            exactness[:no] += 1
            if strictness == :strong
              message = "no possible conversion of #{value.class} into a variant of #{target.inspect}"
              raise ArgumentError.new(message)
            end
            value
          in [[_, exact, coerced], *]
            exact.each { exactness[_1] += _2 }
            coerced
          end
            .tap { state[:exactness] = exactness }
        ensure
          state[:strictness] = strictness
        end

        # @api private
        #
        # @param value [Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean] :can_retry
        #
        # @return [Object]
        def dump(value, state:)
          if (target = resolve_variant(value))
            return Lithic::Internal::Type::Converter.dump(target, value, state: state)
          end

          known_variants.each do
            target = _2.call
            return Lithic::Internal::Type::Converter.dump(target, value, state: state) if target === value
          end

          super
        end

        # rubocop:enable Style/CaseEquality
        # rubocop:enable Style/HashEachMethods

        # @api private
        #
        # @param depth [Integer]
        #
        # @return [String]
        def inspect(depth: 0)
          return super() if depth.positive?

          members = variants.map { Lithic::Internal::Type::Converter.inspect(_1, depth: depth.succ) }

          "#{name}[#{members.join(' | ')}]"
        end
      end
    end
  end
end
