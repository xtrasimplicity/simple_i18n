Given("a {string} file exists in the application root directory with") do |filename, content|
  allow(File).to receive(:exists?).with(filename).and_return(true)
  allow(File).to receive(:read).with(filename).and_return(content)
end

When("I call SimpleI18n.configuration") do
  SimpleI18n.configuration
end

Then("the {string} configuration attribute should be set to {string}") do |attribute_name, expected_value|
 expect(SimpleI18n.configuration.send(attribute_name).to_s).to eq(expected_value)
end

Given("a {string} file does not exist in the application root directory") do |filename|
  allow(File).to receive(:exists?).with(filename).and_return(false)
end

When("I run the following ruby code") do |code|
  eval(code)
end