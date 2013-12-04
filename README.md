# Omniauth::Bitcasa

## This gem is not working yet. Bitcasa needs to fix their API to be compliant to OAuth2 specifications.

Unofficial OmniAuth Strategy for the Bitcasa OAuth2 API. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Bitcasa Developers Page](https://developer.bitcasa.com).

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-bitcasa'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-bitcasa

## Usage

### With Sinatra

```ruby
use OmniAuth::Builder do
  provider :bitcasa, ENV['BITCASA_KEY'], ENV['BITCASA_SECRET']
end
```

### With Rails

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bitcasa, ENV['BITCASA_KEY'], ENV['BITCASA_SECRET']
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The MIT License (MIT)

Copyright (c) 2013 Guilherme Vinicius Moreira

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.