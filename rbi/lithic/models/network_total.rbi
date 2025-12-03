# typed: strong

module Lithic
  module Models
    class NetworkTotal < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::NetworkTotal, Lithic::Internal::AnyHash) }

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      sig { returns(Lithic::NetworkTotal::Amounts) }
      attr_reader :amounts

      sig { params(amounts: Lithic::NetworkTotal::Amounts::OrHash).void }
      attr_writer :amounts

      # RFC 3339 timestamp for when the record was created. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code.
      sig { returns(String) }
      attr_accessor :currency

      # The institution that activity occurred on. For Mastercard: ICA (Interbank Card
      # Association). For Maestro: institution ID. For Visa: lowest level SRE
      # (Settlement Reporting Entity).
      sig { returns(String) }
      attr_accessor :institution_id

      # Indicates that all settlement records related to this Network Total are
      # available in the details endpoint.
      sig { returns(T::Boolean) }
      attr_accessor :is_complete

      # Card network where the transaction took place. AMEX, VISA, MASTERCARD, MAESTRO,
      # or INTERLINK.
      sig { returns(Lithic::NetworkTotal::Network::TaggedSymbol) }
      attr_accessor :network

      # Date that the network total record applies to. YYYY-MM-DD format.
      sig { returns(Date) }
      attr_accessor :report_date

      # The institution responsible for settlement. For Mastercard: same as
      # `institution_id`. For Maestro: billing ICA. For Visa: Funds Transfer SRE
      # (FTSRE).
      sig { returns(String) }
      attr_accessor :settlement_institution_id

      # Settlement service.
      sig { returns(String) }
      attr_accessor :settlement_service

      # RFC 3339 timestamp for when the record was last updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      # The clearing cycle that the network total record applies to. Mastercard only.
      sig { returns(T.nilable(Integer)) }
      attr_reader :cycle

      sig { params(cycle: Integer).void }
      attr_writer :cycle

      sig do
        params(
          token: String,
          amounts: Lithic::NetworkTotal::Amounts::OrHash,
          created: Time,
          currency: String,
          institution_id: String,
          is_complete: T::Boolean,
          network: Lithic::NetworkTotal::Network::OrSymbol,
          report_date: Date,
          settlement_institution_id: String,
          settlement_service: String,
          updated: Time,
          cycle: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        amounts:,
        # RFC 3339 timestamp for when the record was created. UTC time zone.
        created:,
        # 3-character alphabetic ISO 4217 code.
        currency:,
        # The institution that activity occurred on. For Mastercard: ICA (Interbank Card
        # Association). For Maestro: institution ID. For Visa: lowest level SRE
        # (Settlement Reporting Entity).
        institution_id:,
        # Indicates that all settlement records related to this Network Total are
        # available in the details endpoint.
        is_complete:,
        # Card network where the transaction took place. AMEX, VISA, MASTERCARD, MAESTRO,
        # or INTERLINK.
        network:,
        # Date that the network total record applies to. YYYY-MM-DD format.
        report_date:,
        # The institution responsible for settlement. For Mastercard: same as
        # `institution_id`. For Maestro: billing ICA. For Visa: Funds Transfer SRE
        # (FTSRE).
        settlement_institution_id:,
        # Settlement service.
        settlement_service:,
        # RFC 3339 timestamp for when the record was last updated. UTC time zone.
        updated:,
        # The clearing cycle that the network total record applies to. Mastercard only.
        cycle: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            amounts: Lithic::NetworkTotal::Amounts,
            created: Time,
            currency: String,
            institution_id: String,
            is_complete: T::Boolean,
            network: Lithic::NetworkTotal::Network::TaggedSymbol,
            report_date: Date,
            settlement_institution_id: String,
            settlement_service: String,
            updated: Time,
            cycle: Integer
          }
        )
      end
      def to_hash
      end

      class Amounts < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::NetworkTotal::Amounts, Lithic::Internal::AnyHash)
          end

        # Total settlement amount excluding interchange, in currency's smallest unit.
        sig { returns(Integer) }
        attr_accessor :gross_settlement

        # Interchange amount, in currency's smallest unit.
        sig { returns(Integer) }
        attr_accessor :interchange_fees

        # `gross_settlement` net of `interchange_fees` and `visa_charges` (if applicable),
        # in currency's smallest unit.
        sig { returns(Integer) }
        attr_accessor :net_settlement

        # Charges specific to Visa/Interlink, in currency's smallest unit.
        sig { returns(T.nilable(Integer)) }
        attr_reader :visa_charges

        sig { params(visa_charges: Integer).void }
        attr_writer :visa_charges

        sig do
          params(
            gross_settlement: Integer,
            interchange_fees: Integer,
            net_settlement: Integer,
            visa_charges: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Total settlement amount excluding interchange, in currency's smallest unit.
          gross_settlement:,
          # Interchange amount, in currency's smallest unit.
          interchange_fees:,
          # `gross_settlement` net of `interchange_fees` and `visa_charges` (if applicable),
          # in currency's smallest unit.
          net_settlement:,
          # Charges specific to Visa/Interlink, in currency's smallest unit.
          visa_charges: nil
        )
        end

        sig do
          override.returns(
            {
              gross_settlement: Integer,
              interchange_fees: Integer,
              net_settlement: Integer,
              visa_charges: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Card network where the transaction took place. AMEX, VISA, MASTERCARD, MAESTRO,
      # or INTERLINK.
      module Network
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::NetworkTotal::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMEX = T.let(:AMEX, Lithic::NetworkTotal::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::NetworkTotal::Network::TaggedSymbol)
        MASTERCARD =
          T.let(:MASTERCARD, Lithic::NetworkTotal::Network::TaggedSymbol)
        MAESTRO = T.let(:MAESTRO, Lithic::NetworkTotal::Network::TaggedSymbol)
        INTERLINK =
          T.let(:INTERLINK, Lithic::NetworkTotal::Network::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::NetworkTotal::Network::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
