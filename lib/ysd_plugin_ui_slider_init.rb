require 'ysd-plugins' unless defined?Plugins::Plugin
require 'ysd_plugin_ui_slider_extension'

Plugins::SinatraAppPlugin.register :ui_slider do

   name=        'ui_slider'
   author=      'yurak sisa'
   description= 'ui slider'
   version=     '0.1'
   hooker       Huasi::UISliderExtension
   sinatra_extension Sinatra::UISlider
   sinatra_helper Sinatra::UISliderHelper
end

