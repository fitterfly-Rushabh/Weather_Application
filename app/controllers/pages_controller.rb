class PagesController < ApplicationController
    def index
        url = "https://weatherbit-v1-mashape.p.rapidapi.com/forecast/3hourly?city=#{params[:query]}"

        headers = {
            "X-RapidAPI-Host"  => "weatherbit-v1-mashape.p.rapidapi.com",
            "X-RapidAPI-Key" => "8a8c80b7e3msh5f4ffa420b51379p153c4ejsn4fbccd00fa2d"
        }

        @response = HTTParty.get(url, :headers => headers)
    end

    def data
        
    end
end
