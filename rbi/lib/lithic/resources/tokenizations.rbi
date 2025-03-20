# typed: strong

module Lithic
  module Resources
    class Tokenizations
      # Get tokenization
      sig do
        params(
          tokenization_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::TokenizationRetrieveResponse)
      end
      def retrieve(
        # Tokenization token
        tokenization_token,
        request_options: {}
      )
      end

      # List card tokenizations
      sig do
        params(
          account_token: String,
          begin_: Date,
          card_token: String,
          end_: Date,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          tokenization_channel: Lithic::Models::TokenizationListParams::TokenizationChannel::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::CursorPage[Lithic::Models::Tokenization])
      end
      def list(
        # Filters for tokenizations associated with a specific account.
        account_token: nil,
        # Filter for tokenizations created after this date.
        begin_: nil,
        # Filters for tokenizations associated with a specific card.
        card_token: nil,
        # Filter for tokenizations created before this date.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Filter for tokenizations by tokenization channel. If this is not specified, only
        #   DIGITAL_WALLET tokenizations will be returned.
        tokenization_channel: nil,
        request_options: {}
      )
      end

      # This endpoint is used to ask the card network to activate a tokenization. A
      #   successful response indicates that the request was successfully delivered to the
      #   card network. When the card network activates the tokenization, the state will
      #   be updated and a tokenization.updated event will be sent. The endpoint may only
      #   be used on digital wallet tokenizations with status `INACTIVE`,
      #   `PENDING_ACTIVATION`, or `PENDING_2FA`. This will put the tokenization in an
      #   active state, and transactions will be allowed. Reach out at
      #   [lithic.com/contact](https://lithic.com/contact) for more information.
      sig do
        params(
          tokenization_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def activate(
        # Tokenization token
        tokenization_token,
        request_options: {}
      )
      end

      # This endpoint is used to ask the card network to deactivate a tokenization. A
      #   successful response indicates that the request was successfully delivered to the
      #   card network. When the card network deactivates the tokenization, the state will
      #   be updated and a tokenization.updated event will be sent. Authorizations
      #   attempted with a deactivated tokenization will be blocked and will not be
      #   forwarded to Lithic from the network. Deactivating the token is a permanent
      #   operation. If the target is a digital wallet tokenization, it will be removed
      #   from its device. Reach out at [lithic.com/contact](https://lithic.com/contact)
      #   for more information.
      sig do
        params(
          tokenization_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def deactivate(
        # Tokenization token
        tokenization_token,
        request_options: {}
      )
      end

      # This endpoint is used to ask the card network to pause a tokenization. A
      #   successful response indicates that the request was successfully delivered to the
      #   card network. When the card network pauses the tokenization, the state will be
      #   updated and a tokenization.updated event will be sent. The endpoint may only be
      #   used on tokenizations with status `ACTIVE`. A paused token will prevent
      #   merchants from sending authorizations, and is a temporary status that can be
      #   changed. Reach out at [lithic.com/contact](https://lithic.com/contact) for more
      #   information.
      sig do
        params(
          tokenization_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def pause(
        # Tokenization token
        tokenization_token,
        request_options: {}
      )
      end

      # This endpoint is used to ask the card network to send another activation code to
      #   a cardholder that has already tried tokenizing a card. A successful response
      #   indicates that the request was successfully delivered to the card network. The
      #   endpoint may only be used on Mastercard digital wallet tokenizations with status
      #   `INACTIVE`, `PENDING_ACTIVATION`, or `PENDING_2FA`. The network will send a new
      #   activation code to the one of the contact methods provided in the initial
      #   tokenization flow. If a user fails to enter the code correctly 3 times, the
      #   contact method will not be eligible for resending the activation code, and the
      #   cardholder must restart the provision process. Reach out at
      #   [lithic.com/contact](https://lithic.com/contact) for more information.
      sig do
        params(
          tokenization_token: String,
          activation_method_type: Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def resend_activation_code(
        # Tokenization token
        tokenization_token,
        # The communication method that the user has selected to use to receive the
        #   authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
        #   = "EMAIL_TO_CARDHOLDER_ADDRESS"
        activation_method_type: nil,
        request_options: {}
      )
      end

      # This endpoint is used to simulate a card's tokenization in the Digital Wallet
      #   and merchant tokenization ecosystem.
      sig do
        params(
          cvv: String,
          expiration_date: String,
          pan: String,
          tokenization_source: Lithic::Models::TokenizationSimulateParams::TokenizationSource::OrSymbol,
          account_score: Integer,
          device_score: Integer,
          entity: String,
          wallet_recommended_decision: Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::TokenizationSimulateResponse)
      end
      def simulate(
        # The three digit cvv for the card.
        cvv:,
        # The expiration date of the card in 'MM/YY' format.
        expiration_date:,
        # The sixteen digit card number.
        pan:,
        # The source of the tokenization request.
        tokenization_source:,
        # The account score (1-5) that represents how the Digital Wallet's view on how
        #   reputable an end user's account is.
        account_score: nil,
        # The device score (1-5) that represents how the Digital Wallet's view on how
        #   reputable an end user's device is.
        device_score: nil,
        # Optional field to specify the token requestor name for a merchant token
        #   simulation. Ignored when tokenization_source is not MERCHANT.
        entity: nil,
        # The decision that the Digital Wallet's recommend
        wallet_recommended_decision: nil,
        request_options: {}
      )
      end

      # This endpoint is used to ask the card network to unpause a tokenization. A
      #   successful response indicates that the request was successfully delivered to the
      #   card network. When the card network unpauses the tokenization, the state will be
      #   updated and a tokenization.updated event will be sent. The endpoint may only be
      #   used on tokenizations with status `PAUSED`. This will put the tokenization in an
      #   active state, and transactions may resume. Reach out at
      #   [lithic.com/contact](https://lithic.com/contact) for more information.
      sig do
        params(
          tokenization_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def unpause(
        # Tokenization token
        tokenization_token,
        request_options: {}
      )
      end

      # This endpoint is used update the digital card art for a digital wallet
      #   tokenization. A successful response indicates that the card network has updated
      #   the tokenization's art, and the tokenization's `digital_cart_art_token` field
      #   was updated. The endpoint may not be used on tokenizations with status
      #   `DEACTIVATED`. Note that this updates the art for one specific tokenization, not
      #   all tokenizations for a card. New tokenizations for a card will be created with
      #   the art referenced in the card object's `digital_card_art_token` field. Reach
      #   out at [lithic.com/contact](https://lithic.com/contact) for more information.
      sig do
        params(
          tokenization_token: String,
          digital_card_art_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::TokenizationUpdateDigitalCardArtResponse)
      end
      def update_digital_card_art(
        # Tokenization token
        tokenization_token,
        # Specifies the digital card art to be displayed in the user’s digital wallet for
        #   a tokenization. This artwork must be approved by the network and configured by
        #   Lithic to use. See
        #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
        digital_card_art_token: nil,
        request_options: {}
      )
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
