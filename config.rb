###
# Compass
###

# Susy grids in Compass
# First: gem install compass-susy-plugin
# require 'susy'

# When using CodeKit an absolute path to any Compass plugins must be used
require '/Users/tyom/.rvm/gems/ruby-1.9.3-p0/gems/susy-1.0.rc.1/lib/susy.rb'

relative_assets = true
project_type    = :stand_alone
line_comments   = false
# output_style    = :compact

# Source
css_dir    = 'source/css'
sass_dir   = 'source/stylesheets'
# js_dir     = 'source/javascripts'
# images_dir = 'source/images'
# fonts_dir  = 'source/fonts'

# Target
http_path        = "/"

# Change Compass configuration
# compass_config do |config|
  # config.output_style = :expanded
# end

# Make sure Middleman exists (this is due to Codekit throwing undefined method errors)
class_name = self.class.name.split('::')[0]
if class_name == "Middleman"
  
  # activate :directory_indexes

  ###
  # Page options, layouts, aliases and proxies
  ###

  # Per-page layout changes:
  #
  # With no layout
  # page "/path/to/file.html", :layout => false
  #
  # With alternative layout
  # page "/path/to/file.html", :layout => :otherlayout
  #
  # A path which all have the same layout
  # with_layout :admin do
  #   page "/admin/*"
  # end

  # Proxy (fake) files
  # page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
  #   @which_fake_page = "Rendering a fake page with a variable"
  # end

  ###
  # Helpers
  ###

  # Automatic image dimensions on image_tag helper
  # activate :automatic_image_sizes

  # Methods defined in the helpers block are available in templates
  # helpers do
  #   def some_helper
  #     "Helping"
  #   end
  # end

  configure :build do
    # For example, change the Compass output style for deployment
    # activate :minify_css

    # Minify Javascript on build
    # activate :minify_javascript

    # Enable cache buster
    # activate :cache_buster

    # Use relative URLs
    activate :relative_assets

    # Compress PNGs after build
    # First: gem install middleman-smusher
    # require "middleman-smusher"
    # activate :smusher

    # Or use a different image path
    # set :http_path, "/Content/images/"
  end
  
  # Alternatively:
  # eval(File.read('./config-mm.rb'))
end