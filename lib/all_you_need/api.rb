require 'pry'
require 'net/http'
require 'open-uri'
require 'json'
require 'openssl'
require_relative "./version.rb"
require_relative "./lover.rb"

class AllYouNeed::Api
      def get_lover
        url = URI("https://love-calculator.p.rapidapi.com/getPercentage?fname=Matthew&sname=Hepburn")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'love-calculator.p.rapidapi.com'
        request["x-rapidapi-key"] = 'ec39b42f4bmsh7e15dcbfc5a5f5ap10cb18jsna05995e367ed'

        response = http.request(request)
        puts response.read_body
        # uri = URI.parse(URL)
        # req = Net::HTTP.get_response(uri)
        # binding.pry
        # req["x-rapidapi-host"] = 'love-calculator.p.rapidapi.com'
        # req["x-rapidapi-key"] = 'ec39b42f4bmsh7e15dcbfc5a5f5ap10cb18jsna05995e367ed'
        # response = req.request(req)
        # response.body
      end
binding.pry
      AllYouNeed::Api.new.get_lover

    #  def new_lover
    #     lover = AllYouNeed::Api.new.get_lover
    #     puts lover
    #  end

end