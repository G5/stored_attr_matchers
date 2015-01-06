# StoredAttrMatchers

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stored_attr_matchers', group: :test
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stored_attr_matchers

## Usage

This is typically used with something like [Storext](https://rubygems.org/gems/storext), but should work with database-backed models that have attributes that:

- are saved into the database
- can default to a value if none is given
- can be type-casted

```ruby
class Car
  include Storext

  store_attributes :hstore_column do
    attribute :name, String, default: "Jim"
  end
end

describe Car do
  it { is_expected.to have_stored_attr(:name, String).with_default("Jim") }
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/stored_attr_matchers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
