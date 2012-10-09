module Sinatra
  module UISliderHelper
    
    #
    # Slider helper to show a slider from the selector
    #
    def slider(selector)
    
      slider_js = <<-SCRIPT
        <script type="text/javascript">
          $(window).load(function() {
            $("#{selector}").nivoSlider();
          });
        </script>
      SCRIPT
      
      return slider_js
    
    end
  
  end
end