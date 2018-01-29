# simple_i18n
Simple internationalisation (i18n) for Ruby. 
[![Build Status](https://travis-ci.org/xtrasimplicity/simple_i18n.svg?branch=develop)](https://travis-ci.org/xtrasimplicity/simple_i18n)

## Installation
1. Add `gem 'simple_i18n', '~> 0.0'`to your application's Gemfile.

## Configuration
You can define configuration in your application, using the following syntax:
```
SimpleI18n.config do |c|
   c.available_locales = [:en, :de, :fr]
   c.base_locale_path = 'locales' # The relative base path to the desired locale directory.
end
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
