module SAPO
  module Auto
    class Car
      attr_accessor :category, :title, :link, :image
    end
    
    # FIXME: add sort and pagination options
    def self.search(options)
      options = {:brand => "", :model => ""}.merge(options) if options.is_a? Hash
      
      return [] if options[:brand] == "" and options[:model] == ""

      if options.is_a?(String)
        output = Net::HTTP.get(URI.parse("http://services.sapo.pt/Auto/JSON?q=#{CGI.escape(options)}"))
      else
        if options[:brand] != "" and options[:model] != ""
          output = Net::HTTP.get(URI.parse("http://services.sapo.pt/Auto/JSON?q=Brand:#{options[:brand]}+Model:#{CGI.escape(options[:model])}"))
        elsif options[:brand] != ""
          output = Net::HTTP.get(URI.parse("http://services.sapo.pt/Auto/JSON?q=#{options[:brand]}"))
        end
      end
        
      json = JSON.parse(output)
      
      return [] if json["rss"]["channel"]["item"].nil?
      
      return json["rss"]["channel"]["item"].map do |c|
        car = Car.new
        car.category  = c["category"]
        car.title     = c["title"]
        car.link      = c["link"]
        car.image     = c["enclosure"]["url"]
        car
      end
    end
  end
end