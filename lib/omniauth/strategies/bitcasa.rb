require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bitcasa < OmniAuth::Strategies::OAuth2
      option :name, "bitcasa"

      API_VERSION = "v1"

      option :client_options, {
        :site => 'https://developer.api.bitcasa.com',
        :authorize_url => "/#{API_VERSION}/oauth2/authenticate",
        :token_url => "/#{API_VERSION}/oauth2/access_token",
        :token_method => :get
      }

      uid { nil }

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.get('result').parsed
      end
      
      # Bitcasa uses 'redirect' instead of 'redirect_uri'
      def request_phase
        redirect client.auth_code.authorize_url({:redirect => callback_url}.merge(authorize_params))
      end

      def callback_phase
        self.access_token = custom_build_access_token
        self.access_token = access_token.refresh! if access_token.expired?
      end

      # Bitcasa return a parameter called 'authorization_code' insted of 'code'
      def custom_build_access_token
        verifier = request.params['authorization_code']
        client.auth_code.get_token(verifier, { :secret => options.client_secret })
      end

    end
  end
end

OmniAuth.config.add_camelization 'bitcasa', 'Bitcasa'