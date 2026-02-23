# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class LoanTapeRebuildConfiguration < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::LoanTapeRebuildConfiguration,
              Lithic::Internal::AnyHash
            )
          end

        # Whether the account's loan tapes need to be rebuilt or not
        sig { returns(T::Boolean) }
        attr_accessor :rebuild_needed

        # The date for which the account's loan tapes were last rebuilt
        sig { returns(T.nilable(Date)) }
        attr_reader :last_rebuild

        sig { params(last_rebuild: Date).void }
        attr_writer :last_rebuild

        # Date from which to start rebuilding from if the account requires a rebuild
        sig { returns(T.nilable(Date)) }
        attr_reader :rebuild_from

        sig { params(rebuild_from: Date).void }
        attr_writer :rebuild_from

        # Configuration for building loan tapes
        sig do
          params(
            rebuild_needed: T::Boolean,
            last_rebuild: Date,
            rebuild_from: Date
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the account's loan tapes need to be rebuilt or not
          rebuild_needed:,
          # The date for which the account's loan tapes were last rebuilt
          last_rebuild: nil,
          # Date from which to start rebuilding from if the account requires a rebuild
          rebuild_from: nil
        )
        end

        sig do
          override.returns(
            {
              rebuild_needed: T::Boolean,
              last_rebuild: Date,
              rebuild_from: Date
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
