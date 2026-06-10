# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        # Lifecycle status of a case file:
        #
        # - `PENDING` - An upload URL has been issued and the file is awaiting upload
        # - `READY` - The file has been uploaded and validated; a download URL is
        #   available
        # - `REJECTED` - File validation failed; see `failure_reason` for details
        module FileStatus
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::TransactionMonitoring::Cases::FileStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::TransactionMonitoring::Cases::FileStatus::TaggedSymbol
            )
          READY =
            T.let(
              :READY,
              Lithic::TransactionMonitoring::Cases::FileStatus::TaggedSymbol
            )
          REJECTED =
            T.let(
              :REJECTED,
              Lithic::TransactionMonitoring::Cases::FileStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::TransactionMonitoring::Cases::FileStatus::TaggedSymbol
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
