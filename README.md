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
You can also define this configuration in YAML format, in a `.simple_i18n` file in your application's root directory.

Simple_i18n expects the locales directory to have the following structure. Each `*.yml` file within each locale directory is automatically included, once the `available_locales` configuration variable has been configured to include the locale.
```
 - locales
   - :en
     - help.yml
   - :fr
     - help.html
```

Alternatively, for smaller applications, you can use a more rails-esque approach, storing each locale's translation file (i.e. `de.yml`) in the root of the `base_locale_path`, such as:
```
 - locales
   - de.yml
   - fr.yml
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
