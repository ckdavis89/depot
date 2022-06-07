require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.register_driver :https_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--allow-insecure-localhost')
    options.add_argument('--ignore-certificate-errors')

    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      capabilities: [options]
    )
  end

  Capybara.register_driver :headless_https_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--allow-insecure-localhost')
    options.add_argument('--ignore-certificate-errors')

    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      capabilities: [options]
    )
  end
end
