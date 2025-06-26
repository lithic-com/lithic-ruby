# typed: strong

module Lithic
  module Models
    module AuthRules
      class RuleStats < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::RuleStats, Lithic::Internal::AnyHash)
          end

        # The total number of historical transactions approved by this rule during the
        # relevant period, or the number of transactions that would have been approved if
        # the rule was evaluated in shadow mode.
        sig { returns(T.nilable(Integer)) }
        attr_reader :approved

        sig { params(approved: Integer).void }
        attr_writer :approved

        # The total number of historical transactions challenged by this rule during the
        # relevant period, or the number of transactions that would have been challenged
        # if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
        # Rules.
        sig { returns(T.nilable(Integer)) }
        attr_reader :challenged

        sig { params(challenged: Integer).void }
        attr_writer :challenged

        # The total number of historical transactions declined by this rule during the
        # relevant period, or the number of transactions that would have been declined if
        # the rule was evaluated in shadow mode.
        sig { returns(T.nilable(Integer)) }
        attr_reader :declined

        sig { params(declined: Integer).void }
        attr_writer :declined

        # Example events and their outcomes.
        sig do
          returns(T.nilable(T::Array[Lithic::AuthRules::RuleStats::Example]))
        end
        attr_reader :examples

        sig do
          params(
            examples: T::Array[Lithic::AuthRules::RuleStats::Example::OrHash]
          ).void
        end
        attr_writer :examples

        # The version of the rule, this is incremented whenever the rule's parameters
        # change.
        sig { returns(T.nilable(Integer)) }
        attr_reader :version

        sig { params(version: Integer).void }
        attr_writer :version

        sig do
          params(
            approved: Integer,
            challenged: Integer,
            declined: Integer,
            examples: T::Array[Lithic::AuthRules::RuleStats::Example::OrHash],
            version: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The total number of historical transactions approved by this rule during the
          # relevant period, or the number of transactions that would have been approved if
          # the rule was evaluated in shadow mode.
          approved: nil,
          # The total number of historical transactions challenged by this rule during the
          # relevant period, or the number of transactions that would have been challenged
          # if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
          # Rules.
          challenged: nil,
          # The total number of historical transactions declined by this rule during the
          # relevant period, or the number of transactions that would have been declined if
          # the rule was evaluated in shadow mode.
          declined: nil,
          # Example events and their outcomes.
          examples: nil,
          # The version of the rule, this is incremented whenever the rule's parameters
          # change.
          version: nil
        )
        end

        sig do
          override.returns(
            {
              approved: Integer,
              challenged: Integer,
              declined: Integer,
              examples: T::Array[Lithic::AuthRules::RuleStats::Example],
              version: Integer
            }
          )
        end
        def to_hash
        end

        class Example < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleStats::Example,
                Lithic::Internal::AnyHash
              )
            end

          # Whether the rule would have approved the request.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :approved

          sig { params(approved: T::Boolean).void }
          attr_writer :approved

          # The decision made by the rule for this event.
          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::RuleStats::Example::Decision::TaggedSymbol
              )
            )
          end
          attr_reader :decision

          sig do
            params(
              decision:
                Lithic::AuthRules::RuleStats::Example::Decision::OrSymbol
            ).void
          end
          attr_writer :decision

          # The event token.
          sig { returns(T.nilable(String)) }
          attr_reader :event_token

          sig { params(event_token: String).void }
          attr_writer :event_token

          # The timestamp of the event.
          sig { returns(T.nilable(Time)) }
          attr_reader :timestamp

          sig { params(timestamp: Time).void }
          attr_writer :timestamp

          sig do
            params(
              approved: T::Boolean,
              decision:
                Lithic::AuthRules::RuleStats::Example::Decision::OrSymbol,
              event_token: String,
              timestamp: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the rule would have approved the request.
            approved: nil,
            # The decision made by the rule for this event.
            decision: nil,
            # The event token.
            event_token: nil,
            # The timestamp of the event.
            timestamp: nil
          )
          end

          sig do
            override.returns(
              {
                approved: T::Boolean,
                decision:
                  Lithic::AuthRules::RuleStats::Example::Decision::TaggedSymbol,
                event_token: String,
                timestamp: Time
              }
            )
          end
          def to_hash
          end

          # The decision made by the rule for this event.
          module Decision
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::AuthRules::RuleStats::Example::Decision)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :APPROVED,
                Lithic::AuthRules::RuleStats::Example::Decision::TaggedSymbol
              )
            DECLINED =
              T.let(
                :DECLINED,
                Lithic::AuthRules::RuleStats::Example::Decision::TaggedSymbol
              )
            CHALLENGED =
              T.let(
                :CHALLENGED,
                Lithic::AuthRules::RuleStats::Example::Decision::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::RuleStats::Example::Decision::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
