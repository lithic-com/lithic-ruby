# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalACHActionParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::ConditionalACHActionParameters,
              Lithic::Internal::AnyHash
            )
          end

        # The action to take if the conditions are met
        sig do
          returns(
            T.any(
              Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction,
              Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction
            )
          )
        end
        attr_accessor :action

        sig do
          returns(
            T::Array[
              Lithic::AuthRules::ConditionalACHActionParameters::Condition
            ]
          )
        end
        attr_accessor :conditions

        sig do
          params(
            action:
              T.any(
                Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::OrHash,
                Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::OrHash
              ),
            conditions:
              T::Array[
                Lithic::AuthRules::ConditionalACHActionParameters::Condition::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The action to take if the conditions are met
          action:,
          conditions:
        )
        end

        sig do
          override.returns(
            {
              action:
                T.any(
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction
                ),
              conditions:
                T::Array[
                  Lithic::AuthRules::ConditionalACHActionParameters::Condition
                ]
            }
          )
        end
        def to_hash
        end

        # The action to take if the conditions are met
        module Action
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction,
                Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction
              )
            end

          class ApproveAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction,
                  Lithic::Internal::AnyHash
                )
              end

            # Approve the ACH transaction
            sig do
              returns(
                Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type::OrSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                type:
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Approve the ACH transaction
              type:
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Approve the ACH transaction
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              APPROVE =
                T.let(
                  :APPROVE,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ApproveAction::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class ReturnAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction,
                  Lithic::Internal::AnyHash
                )
              end

            # NACHA return code to use when returning the transaction. Note that the list of
            # available return codes is subject to an allowlist configured at the program
            # level
            sig do
              returns(
                Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::OrSymbol
              )
            end
            attr_accessor :code

            # Return the ACH transaction
            sig do
              returns(
                Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type::OrSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                code:
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::OrSymbol,
                type:
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # NACHA return code to use when returning the transaction. Note that the list of
              # available return codes is subject to an allowlist configured at the program
              # level
              code:,
              # Return the ACH transaction
              type:
            )
            end

            sig do
              override.returns(
                {
                  code:
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::OrSymbol,
                  type:
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            # NACHA return code to use when returning the transaction. Note that the list of
            # available return codes is subject to an allowlist configured at the program
            # level
            module Code
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              R01 =
                T.let(
                  :R01,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R02 =
                T.let(
                  :R02,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R03 =
                T.let(
                  :R03,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R04 =
                T.let(
                  :R04,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R05 =
                T.let(
                  :R05,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R06 =
                T.let(
                  :R06,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R07 =
                T.let(
                  :R07,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R08 =
                T.let(
                  :R08,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R09 =
                T.let(
                  :R09,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R10 =
                T.let(
                  :R10,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R11 =
                T.let(
                  :R11,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R12 =
                T.let(
                  :R12,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R13 =
                T.let(
                  :R13,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R14 =
                T.let(
                  :R14,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R15 =
                T.let(
                  :R15,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R16 =
                T.let(
                  :R16,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R17 =
                T.let(
                  :R17,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R18 =
                T.let(
                  :R18,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R19 =
                T.let(
                  :R19,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R20 =
                T.let(
                  :R20,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R21 =
                T.let(
                  :R21,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R22 =
                T.let(
                  :R22,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R23 =
                T.let(
                  :R23,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R24 =
                T.let(
                  :R24,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R25 =
                T.let(
                  :R25,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R26 =
                T.let(
                  :R26,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R27 =
                T.let(
                  :R27,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R28 =
                T.let(
                  :R28,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R29 =
                T.let(
                  :R29,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R30 =
                T.let(
                  :R30,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R31 =
                T.let(
                  :R31,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R32 =
                T.let(
                  :R32,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R33 =
                T.let(
                  :R33,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R34 =
                T.let(
                  :R34,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R35 =
                T.let(
                  :R35,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R36 =
                T.let(
                  :R36,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R37 =
                T.let(
                  :R37,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R38 =
                T.let(
                  :R38,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R39 =
                T.let(
                  :R39,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R40 =
                T.let(
                  :R40,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R41 =
                T.let(
                  :R41,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R42 =
                T.let(
                  :R42,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R43 =
                T.let(
                  :R43,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R44 =
                T.let(
                  :R44,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R45 =
                T.let(
                  :R45,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R46 =
                T.let(
                  :R46,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R47 =
                T.let(
                  :R47,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R50 =
                T.let(
                  :R50,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R51 =
                T.let(
                  :R51,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R52 =
                T.let(
                  :R52,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R53 =
                T.let(
                  :R53,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R61 =
                T.let(
                  :R61,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R62 =
                T.let(
                  :R62,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R67 =
                T.let(
                  :R67,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R68 =
                T.let(
                  :R68,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R69 =
                T.let(
                  :R69,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R70 =
                T.let(
                  :R70,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R71 =
                T.let(
                  :R71,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R72 =
                T.let(
                  :R72,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R73 =
                T.let(
                  :R73,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R74 =
                T.let(
                  :R74,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R75 =
                T.let(
                  :R75,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R76 =
                T.let(
                  :R76,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R77 =
                T.let(
                  :R77,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R80 =
                T.let(
                  :R80,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R81 =
                T.let(
                  :R81,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R82 =
                T.let(
                  :R82,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R83 =
                T.let(
                  :R83,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R84 =
                T.let(
                  :R84,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )
              R85 =
                T.let(
                  :R85,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Code::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Return the ACH transaction
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RETURN =
                T.let(
                  :RETURN,
                  Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalACHActionParameters::Action::ReturnAction::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::ConditionalACHActionParameters::Action::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Condition < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalACHActionParameters::Condition,
                Lithic::Internal::AnyHash
              )
            end

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
          sig do
            returns(
              Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::OrSymbol
            )
          end
          attr_accessor :attribute

          # The operation to apply to the attribute
          sig { returns(Lithic::AuthRules::ConditionalOperation::OrSymbol) }
          attr_accessor :operation

          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          sig { returns(Lithic::AuthRules::ConditionalValue::Variants) }
          attr_accessor :value

          sig do
            params(
              attribute:
                Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::OrSymbol,
              operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
              value: Lithic::AuthRules::ConditionalValue::Variants
            ).returns(T.attached_class)
          end
          def self.new(
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
            attribute:,
            # The operation to apply to the attribute
            operation:,
            # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
            value:
          )
          end

          sig do
            override.returns(
              {
                attribute:
                  Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::OrSymbol,
                operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
                value: Lithic::AuthRules::ConditionalValue::Variants
              }
            )
          end
          def to_hash
          end

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
          module Attribute
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMPANY_NAME =
              T.let(
                :COMPANY_NAME,
                Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::TaggedSymbol
              )
            COMPANY_ID =
              T.let(
                :COMPANY_ID,
                Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::TaggedSymbol
              )
            TIMESTAMP =
              T.let(
                :TIMESTAMP,
                Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::TaggedSymbol
              )
            TRANSACTION_AMOUNT =
              T.let(
                :TRANSACTION_AMOUNT,
                Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::TaggedSymbol
              )
            SEC_CODE =
              T.let(
                :SEC_CODE,
                Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::TaggedSymbol
              )
            MEMO =
              T.let(
                :MEMO,
                Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ConditionalACHActionParameters::Condition::Attribute::TaggedSymbol
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
