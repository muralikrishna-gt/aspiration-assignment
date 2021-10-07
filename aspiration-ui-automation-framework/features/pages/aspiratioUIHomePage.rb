module Pages
    class AspirationUIHomePage < Locators::AspirationUI
  
      def initialize
        super()
      end
  
      def click_on_spend_save
        @SPENDSAVE.click
        @AFTER_SPENDSAVE.click
      end

      def is_aspriration_card_displayed
        return  "Aspiration".eql?(@ASPIRATION_CARD.text)
      end

      def is_aspiration_plus_card_displayed
        @ASPIRATION_PLUS_CARD.click
        return "Aspiration Plus".eql?(@ASPIRATION_PLUS_CARD.text)

      end
      def check_email_field(string)
        @EMAIL_TEXT.clear_and_send_keys(string)
      end
      
      def click_get_aspiration_btn
        @GET_ASPIRATION_BTN.click
      end
      def click_get_aspiration_plus_btn
        @GET_ASPIRATION_PLUS_BTN.click
      end
      def check_yearly_text(string)
        puts @ASPIRATION_YEARLY_TEXT.text
        return string.eql?(@ASPIRATION_YEARLY_TEXT.text)
        #expect(@ASPIRATION_PLUS_CARD.text).to eq('Aspiration Plus')

      end
      def check_monthly_text(string)
        puts @ASPIRATION_MONTHLY_TEXT.text
        return string.eql?(@ASPIRATION_MONTHLY_TEXT.text)
        #expect(@ASPIRATION_PLUS_CARD.text).to eq('Aspiration Plus')

      end
    end

  end
  