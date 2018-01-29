module SimpleI18n
  CONFIGURATION_FILE = '.simple_i18n'

  class Configuration
    attr_accessor :available_locales, :base_locale_path

    def from(yaml_file)
      return self unless File.exists? yaml_file

      yaml_content = YAML.load(File.read(yaml_file))

      if yaml_content.has_key? 'available_locales'
        @available_locales = yaml_content['available_locales'].collect { |l| l.to_sym }
      end

      @base_locale_path = yaml_content['base_locale_path'] if yaml_content.has_key? 'base_locale_path'

      self
    end
  end
  private_constant :Configuration


  def self.configuration
    yield self.config if block_given?

    self.config
  end

  private

  def self.config
    @config ||= Configuration.new.from(CONFIGURATION_FILE)
  end

end