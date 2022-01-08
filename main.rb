require_relative 'ui'

class App
  attr_reader :app_ui
  
  def initialize
    @app_ui = UI.new
  end
end

def main
  app = App.new
  app.app_ui.display_ui
end

main
