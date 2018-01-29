module SimpleI18n
  CONFIGURATION_FILE = '.simple_i18n'

  class Configuration
    attr_accessor :available_locales, :base_locale_path
  end
  private_constant :Configuration


  def self.configuration
    yield self.config if block_given?

    self.config
  end

  private

  def self.config
    @config ||= Configuration.new
  end

end