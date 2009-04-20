module SAPO
  module Traffic
    class Information
      attr_accessor :title, :description, :image, :link
      
      def initialize(attrs = {})
        @title        = attrs[:title]
        @link         = attrs[:link]
        @image        = attrs[:image]
        @description  = attrs[:description]
      end
    end
    
    # FIXME: add sort and pagination options
    def self.get_info
      output = Net::HTTP.get(URI.parse("http://services.sapo.pt/Traffic/JSON"))
      json = JSON.parse(output)
      
      return json["rss"]["channel"]["item"].map do |p|
        Information.new(:title => p["title"]["cdata"], :link => p["link"]["cdata"], :description => p["description"]["cdata"], :image => p["enclosure"]["url"])
      end
    end
  end
end