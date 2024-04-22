# Panacee Support

Shared libraries accross Panacee projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'panacee_support', require: false
```

## Usage

Require all extensions:
```ruby
require 'panacee_support/core_ext'
```

Require each extensions you want:

```ruby
require 'panacee_support/core_ext/to_boolean'
require 'panacee_support/core_ext/<another_lib>'
```

You can put `require` statements into a `panacee_support.rb` initializer file.


## to_boolean

This extension adds the missing `to_bool` method on objects (`String`, `Integer`, `NilClass`, ...).

```ruby
require 'panacee_support/core_ext/to_boolean'

'0'.to_bool # => false
'1'.to_bool # => true
'true'.to_bool # => true
'false'.to_bool # => false
nil.to_bool # => false
'no'.to_bool # => false
```

## UrlValidator

This class helps to validate url for model attribute (see validator documentation for more options).

```ruby
require 'panacee_support/validators/url_validator'

class User < ApplicationRecord
  attr_accessor :url

  validates :url, url: true
end
```

## print_logger

This method display pretty colored logs by level and tagged within the current class name.

```ruby
require 'panacee_support/logger'

class MyClass
  def my_method
    print_logger('Awesome debug')
  end
end
```

### Options

```ruby
def print_logger(content, scope: :debug, tag: self.class.name, color: nil)
```

- `scope`: log level it should be displayed [`debug`, `info`, `warn`, `error`, `fatal`, `unknown`] (default to `debug`)
- `tag`: context logger
- `color`: forced logger color

## Retry

This class help to retry a piece of code that could raise an exception.

```ruby
require 'panacee_support/retry'

Retry.on(ActiveRecord::RecordNotUnique, times: 5, waiting_time: 0) do
  # code that can raise exception
end
```

### Options

- `times`: number of time to retry (default: `3`)
- `waiting_time`: delay in seconds before retry (default: `0`)
