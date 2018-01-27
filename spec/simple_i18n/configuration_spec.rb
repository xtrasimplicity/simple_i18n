require 'spec_helper'

describe 'SimpleI18n.configuration' do
  describe '.available_locales' do
    it 'stores the supplied array of symbols' do
      locales = [:en, :de, :fr]
      
      SimpleI18n.configuration do |c|
        c.available_locales = locales
      end

      expect(SimpleI18n.configuration.available_locales).to eq(locales)
    end
  end

  describe '.locale_path' do
    it 'stores the locale path' do
      locale_path = '/path/to/locales'

      SimpleI18n.configuration do |c|
        c.locale_path = locale_path
      end

      expect(SimpleI18n.configuration.locale_path).to eq(locale_path)
    end
  end
end