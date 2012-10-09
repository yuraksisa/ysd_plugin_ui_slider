require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Slider Extension
#
module Huasi

  class UISliderExtension < Plugins::ViewListener
  
    # ========= Page Building ============

    #
    # It gets the style sheets defined in the module
    #
    # @param [Context]
    #
    # @return [Array]
    #   An array which contains the css resources used by the module
    #
    def page_style(context={})
      ['/slider/themes/default/default.css',
       '/slider/themes/light/light.css',
       '/slider/themes/dark/dark.css',
       '/slider/themes/bar/bar.css',
       '/slider/css/nivo-slider.css']   
    end
 
    #
    # It gets the scripts used by the module
    #
    # @param [Context]
    #
    # @return [Array]
    #   An array which contains the css resources used by the module
    #
    def page_script(context={})
    
      ['/slider/js/jquery.nivo.slider.pack.js']  
         
    end    
         
  end
  
end