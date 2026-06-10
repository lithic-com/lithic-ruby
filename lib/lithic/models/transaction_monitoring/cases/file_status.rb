# frozen_string_literal: true

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

          PENDING = :PENDING
          READY = :READY
          REJECTED = :REJECTED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
