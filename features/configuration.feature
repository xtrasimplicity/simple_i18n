Feature: Configuration
  Scenario: A user has the .simple_i18n Configuration file in their application directory
    Given a ".simple_i18n" file exists in the application root directory with
    """
    available_locales: ['en', 'fr', 'de']
    base_locale_path: 'locales_dir'
    """
    When I call SimpleI18n.configuration
    Then the "available_locales" configuration attribute should be set to "[:en, :fr, :de]"
    And the "base_locale_path" configuration attribute should be set to "locales_dir"
  
  Scenario: A user doesn't have a .simple_i18n configuration file and is setting their configuration in Ruby.
    Given a ".simple_i18n" file does not exist in the application root directory
    And I run the following ruby code
    """
    SimpleI18n.configuration do |c|
      c.available_locales = [:fi, :it, :nl]
      c.base_locale_path = '/path/to/locales_dir'
    end
    """
    When I call SimpleI18n.configuration
    Then the "available_locales" configuration attribute should be set to "[:fi, :it, :nl]"
    And the "base_locale_path" configuration attribute should be set to "/path/to/locales_dir"