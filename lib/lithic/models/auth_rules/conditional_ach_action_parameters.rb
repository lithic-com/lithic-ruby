# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalACHActionParameters < Lithic::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take if the conditions are met
        #
        #   @return [Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ApproveAction, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction]
        required :action, union: -> { Lithic::AuthRules::ConditionalACHActionParameters::Action }

        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::ConditionalACHActionParameters::Condition>]
        required :conditions,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::ConditionalACHActionParameters::Condition] }

        # @!method initialize(action:, conditions:)
        #   @param action [Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ApproveAction, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction] The action to take if the conditions are met
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::ConditionalACHActionParameters::Condition>]

        # The action to take if the conditions are met
        #
        # @see Lithic::Models::AuthRules::ConditionalACHActionParameters#action
        module Action
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction }

          variant -> { Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction }

          class ApproveAction < Lithic::Internal::Type::BaseModel
            # @!attribute type
            #   Approve the ACH transaction
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type]
            required :type,
                     enum: -> { Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type }

            # @!method initialize(type:)
            #   @param type [Symbol, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type] Approve the ACH transaction

            # Approve the ACH transaction
            #
            # @see Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ApproveAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              APPROVE = :APPROVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class ReturnAction < Lithic::Internal::Type::BaseModel
            # @!attribute code
            #   NACHA return code to use when returning the transaction. Note that the list of
            #   available return codes is subject to an allowlist configured at the program
            #   level
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code]
            required :code, enum: -> { Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code }

            # @!attribute type
            #   Return the ACH transaction
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type]
            required :type, enum: -> { Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type }

            # @!method initialize(code:, type:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction}
            #   for more details.
            #
            #   @param code [Symbol, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code] NACHA return code to use when returning the transaction. Note that the list of a
            #
            #   @param type [Symbol, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type] Return the ACH transaction

            # NACHA return code to use when returning the transaction. Note that the list of
            # available return codes is subject to an allowlist configured at the program
            # level
            #
            # @see Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction#code
            module Code
              extend Lithic::Internal::Type::Enum

              R01 = :R01
              R02 = :R02
              R03 = :R03
              R04 = :R04
              R05 = :R05
              R06 = :R06
              R07 = :R07
              R08 = :R08
              R09 = :R09
              R10 = :R10
              R11 = :R11
              R12 = :R12
              R13 = :R13
              R14 = :R14
              R15 = :R15
              R16 = :R16
              R17 = :R17
              R18 = :R18
              R19 = :R19
              R20 = :R20
              R21 = :R21
              R22 = :R22
              R23 = :R23
              R24 = :R24
              R25 = :R25
              R26 = :R26
              R27 = :R27
              R28 = :R28
              R29 = :R29
              R30 = :R30
              R31 = :R31
              R32 = :R32
              R33 = :R33
              R34 = :R34
              R35 = :R35
              R36 = :R36
              R37 = :R37
              R38 = :R38
              R39 = :R39
              R40 = :R40
              R41 = :R41
              R42 = :R42
              R43 = :R43
              R44 = :R44
              R45 = :R45
              R46 = :R46
              R47 = :R47
              R50 = :R50
              R51 = :R51
              R52 = :R52
              R53 = :R53
              R61 = :R61
              R62 = :R62
              R67 = :R67
              R68 = :R68
              R69 = :R69
              R70 = :R70
              R71 = :R71
              R72 = :R72
              R73 = :R73
              R74 = :R74
              R75 = :R75
              R76 = :R76
              R77 = :R77
              R80 = :R80
              R81 = :R81
              R82 = :R82
              R83 = :R83
              R84 = :R84
              R85 = :R85

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Return the ACH transaction
            #
            # @see Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              RETURN = :RETURN

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ApproveAction, Lithic::Models::AuthRules::ConditionalACHActionParameters::Action::ReturnAction)]
        end

        class Condition < Lithic::Internal::Type::BaseModel
          # @!attribute attribute
          #   The attribute to target.
          #
          #   The following attributes may be targeted:
          #
          #   - `COMPANY_NAME`: The name of the company initiating the ACH transaction.
          #   - `COMPANY_ID`: The company ID (also known as Standard Entry Class (SEC) Company
          #     ID) of the entity initiating the ACH transaction.
          #   - `TIMESTAMP`: The timestamp of the ACH transaction in ISO 8601 format.
          #   - `TRANSACTION_AMOUNT`: The amount of the ACH transaction in minor units
          #     (cents).
          #   - `SEC_CODE`: Standard Entry Class code indicating the type of ACH transaction.
          #     Valid values include PPD (Prearranged Payment and Deposit Entry), CCD
          #     (Corporate Credit or Debit Entry), WEB (Internet-Initiated/Mobile Entry), TEL
          #     (Telephone-Initiated Entry), and others.
          #   - `MEMO`: Optional memo or description field included with the ACH transaction.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalACHActionParameters::Condition::Attribute]
          required :attribute, enum: -> { Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute }

          # @!attribute operation
          #   The operation to apply to the attribute
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalOperation]
          required :operation, enum: -> { Lithic::AuthRules::ConditionalOperation }

          # @!attribute value
          #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          #
          #   @return [String, Integer, Array<String>]
          required :value, union: -> { Lithic::AuthRules::ConditionalValue }

          # @!method initialize(attribute:, operation:, value:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::ConditionalACHActionParameters::Condition} for more
          #   details.
          #
          #   @param attribute [Symbol, Lithic::Models::AuthRules::ConditionalACHActionParameters::Condition::Attribute] The attribute to target.
          #
          #   @param operation [Symbol, Lithic::Models::AuthRules::ConditionalOperation] The operation to apply to the attribute
          #
          #   @param value [String, Integer, Array<String>] A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`

          # The attribute to target.
          #
          # The following attributes may be targeted:
          #
          # - `COMPANY_NAME`: The name of the company initiating the ACH transaction.
          # - `COMPANY_ID`: The company ID (also known as Standard Entry Class (SEC) Company
          #   ID) of the entity initiating the ACH transaction.
          # - `TIMESTAMP`: The timestamp of the ACH transaction in ISO 8601 format.
          # - `TRANSACTION_AMOUNT`: The amount of the ACH transaction in minor units
          #   (cents).
          # - `SEC_CODE`: Standard Entry Class code indicating the type of ACH transaction.
          #   Valid values include PPD (Prearranged Payment and Deposit Entry), CCD
          #   (Corporate Credit or Debit Entry), WEB (Internet-Initiated/Mobile Entry), TEL
          #   (Telephone-Initiated Entry), and others.
          # - `MEMO`: Optional memo or description field included with the ACH transaction.
          #
          # @see Lithic::Models::AuthRules::ConditionalACHActionParameters::Condition#attribute
          module Attribute
            extend Lithic::Internal::Type::Enum

            COMPANY_NAME = :COMPANY_NAME
            COMPANY_ID = :COMPANY_ID
            TIMESTAMP = :TIMESTAMP
            TRANSACTION_AMOUNT = :TRANSACTION_AMOUNT
            SEC_CODE = :SEC_CODE
            MEMO = :MEMO

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
