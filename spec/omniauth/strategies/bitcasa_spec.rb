require 'spec_helper'

describe OmniAuth::Strategies::Bitcasa do
  let(:access_token) { stub('AccessToken', :options => {}) }
  let(:parsed_response) { stub('ParsedResponse') }
  let(:response) { stub('Response', :parsed => parsed_response) }

  subject do
    OmniAuth::Strategies::Bitcasa.new({})
  end

  before(:each) do
    subject.stub!(:access_token).and_return(access_token)
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://developer.bitcasa.com")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://developer.api.bitcasa.com/v1/oauth2/authenticate')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://developer.api.bitcasa.com/v1/oauth2/access_token')
    end
  end

end