require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bitcasa < OmniAuth::Strategies::OAuth2
      option :name, "bitcasa"

      option :client_options, {
        :site => 'https://developer.bitcasa.com',
        :authorize_url => 'https://developer.api.bitcasa.com/v1/oauth2/authenticate',
        :token_url => 'https://developer.api.bitcasa.com/v1/oauth2/access_token'
      }

      uid { nil }

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.get('result').parsed
      end

      # Bitcasa return a parameter called 'authorization_code' insted of 'code'
      # 
      def build_access_token
        verifier = request.params['authorization_code']
        client.auth_code.get_token(verifier, {:redirect_uri => callback_url}.merge(token_params.to_hash(:symbolize_keys => true)), deep_symbolize(options.auth_token_params))
      end

    end
  end
end

OmniAuth.config.add_camelization 'bitcasa', 'Bitcasa'