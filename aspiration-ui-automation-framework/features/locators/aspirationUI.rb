module Locators
    class AspirationUI
  
      attr_reader :SPENDSAVE
      attr_reader :AFTER_SPENDSAVE
      attr_reader :ASPIRATION_CARD
      attr_reader :ASPIRATION_PLUS_CARD

      attr_reader :GET_ASPIRATION_BTN
      attr_reader :GET_ASPIRATION_PLUS_BTN
      attr_reader :ASPIRATION_YEARLY_TEXT
      attr_reader :ASPIRATION_MONTHLY_TEXT
      def initialize
  
        @SPENDSAVE = Locator.new(:css, ".dPEQCs:nth-child(1) > .Element-sc-1dc3ws0-0")
        @AFTER_SPENDSAVE = Locator.new(:css, ".plan-original h2")
        @ASPIRATION_CARD = Locator.new(:css, ".plan-original h2")
        @ASPIRATION_PLUS_CARD = Locator.new(:css, ".plan-a-plus h2")

        @GET_ASPIRATION_BTN = Locator.new(:xpath, "//button[text()='Get Aspiration']")
        @GET_ASPIRATION_PLUS_BTN = Locator.new(:xpath, "//button[text()='Get Aspiration Plus']")
        
        @EMAIL_TEXT = Locator.new(:xpath, "//input[@name='email']")
        @ASPIRATION_YEARLY_TEXT = Locator.new(:xpath, "//h3[text()='Yearly ']/../p/b")
        @ASPIRATION_MONTHLY_TEXT = Locator.new(:xpath, "//h3[text()='Monthly']/../p/b")



      end

    end
  end
  