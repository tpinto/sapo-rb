module Sapo
  module Shopping
    class Listing
      attr_accessor :title, :link, :region, :published_at, :description
      
      def initialize(attrs = {})
        @title        = attrs[:title]
        @link         = attrs[:link]
        @region       = attrs[:region]
        @published_at = attrs[:published_at]
        @description  = attrs[:description]
      end
    end
    
    # FIXME: add sort and pagination options
    def self.search(query = "")
      output = open("http://services.sapo.pt/Shopping/search?q=#{query}").read
      json = JSON.parse(output)
      
      return json["rss"]["channel"]["item"].map do |p|
        Listing.new(:title => p["title"], :link => p["link"], :region => p["se:region"], :published_at => p["pubDate"], :description => p["description"])
      end
    end
  end
end