# Aspiration UI Automation - Ruby

Aspiration UI Automation is a Page Object Model (POM) framework for selenium automation with ruby `Cucumber`.


## Setup
* Clone this repository
* Navigate to the cloned folder
* Install bundler using `gem install bundler`
* Install the dependencies by `bundle install`
* Make sure to have latest chromedriver/geckodriver is in PATH

## To Run the tests
For a simple run of all the feature files in normal mode, try
```
cucumber
```
To Run the tests in parallel mode for the available feature files, try

```
parallel_cucumber features/ 

## Break down into end to end tests

### Adding Locators to the project

1. Add Locators to the that are going to be used inside the project inside the `Locators` module
```
module Locators
	# Add a class for each page and add the locators
end
```
2. For each page add a new class inside the `Locators` module.

```
module Locators
  class TestPage

    # All the Locators in the initialize block need to be declared here for read write permission.
    attr_accessor :TEST_LOCATOR

    def initialize
      # Locators can be declared here by mentioning {how?(xpath,css,id) and what?(identifier)}
      @TEST_LOCATOR = Locator.new(:id, "")
    end

    # Dynamic locators can be declared here as a seperate method (This method doesnot need to be declared with attr_accessor)
    def TEST_DYNAMIC_LOCATOR(variable)
      @TEST_DYNAMIC_LOCATOR = Locator.new(:xpath,"//*[text()=#{variable}]")
    end



## Authors

* **[Murali Krishna](https://github.com/muralikrishna-gt)**
