module Sapo
  module AdWords
    class Ad
      attr_accessor :display_url, :destination_url, :description_1, :description_2
    end
    
    def self.search(query)
      output = open("http://services.sapo.pt/AdWords/JSON?q=#{query}&o=json").read
      linhas = output.split("\n")
      linhas[0] = "["
      linhas[linhas.size-1] = "]"
      json_string = linhas.join("\n")
      json = JSON.parse json_string
      return json.to_a.map do |a|
        ad = Ad.new
        ad.display_url = a["l"]
        ad.destination_url = a["u"]
        ad.description_1 = a["t"]
        ad.description_2 = a["d"]
        ad
      end
    end
  end
end