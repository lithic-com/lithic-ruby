# typed: strong

module Lithic
  module Models
    class WirePartyDetails < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::WirePartyDetails, Lithic::Internal::AnyHash)
        end

      # Account number
      sig { returns(T.nilable(String)) }
      attr_accessor :account_number

      # Routing number or BIC of the financial institution
      sig { returns(T.nilable(String)) }
      attr_accessor :agent_id

      # Name of the financial institution
      sig { returns(T.nilable(String)) }
      attr_accessor :agent_name

      # Name of the person or company
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          account_number: T.nilable(String),
          agent_id: T.nilable(String),
          agent_name: T.nilable(String),
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Account number
        account_number: nil,
        # Routing number or BIC of the financial institution
        agent_id: nil,
        # Name of the financial institution
        agent_name: nil,
        # Name of the person or company
        name: nil
      )
      end

      sig do
        override.returns(
          {
            account_number: T.nilable(String),
            agent_id: T.nilable(String),
            agent_name: T.nilable(String),
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
