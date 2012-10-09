require 'tempfile'
require 'mime/types'

#
# Routes
#
module Sinatra
    module UISlider
    
      def self.registered(app)
     
        # Add the local folders to the views and translations     
        app.settings.translations = Array(app.settings.translations).push(File.expand_path(File.join(File.dirname(__FILE__), '..', 'i18n')))       
                
        #
        # Serves static content from the extension
        #
        app.get "/slider/*" do
            
           serve_static_resource(request.path_info.gsub(/^\/slider/,''), File.join(File.dirname(__FILE__), '..', 'static'), 'slider')
            
        end  
                       
       end
       
     end # Comment
end # Sinatra