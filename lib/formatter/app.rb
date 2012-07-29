module Formatter
  class App < Sinatra::Base
    set :haml, format: :html5
    set :scss, style: :compressed

    get '/styles.css' do
      headers 'Content-Type' => 'text/css; charset=utf-8'
      scss :styles
    end

    get '/lib.js' do
      headers 'Content-Type' => 'text/javascript'
      coffee :lib
    end

    get '/' do
      haml :index
    end

    post '/convert' do
      @result = Converter.convert(params[:text])
      haml :result
    end
  end
end
