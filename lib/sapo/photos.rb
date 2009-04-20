require File.join(File.dirname(__FILE__), '..', 'sapo.rb')
require 'open-uri'
require 'json'

module SAPO
  module Photos
    class Photo
      attr_accessor :title, :description, :link, :published_at, :src
      
      def initialize(attrs = {})
        @title        = attrs[:title]
        @link         = attrs[:link]
        @src          = attrs[:src]
        @published_at = attrs[:published_at]
        @description  = attrs[:description]
      end
    end
    
    # FIXME: add sort and pagination options
    def self.search(options = {})
      if options.is_a?(String)
        output = open("http://services.sapo.pt/Photos/JSON?tag=#{options}").read
      elsif options.is_a?(Hash)
        options = {:user => "", :tag => ""}.merge(options)
        if options[:user] != "" and options[:tag] != ""
          output = open("http://services.sapo.pt/Photos/JSON?u=#{options[:user]}&tag=#{options[:tag]}").read
        elsif options[:user] == "" and options[:tag] != ""
          output = open("http://services.sapo.pt/Photos/JSON?tag=#{options[:tag]}").read
        elsif options[:user] != "" and options[:tag] == ""
          output = open("http://services.sapo.pt/Photos/JSON?u=#{options[:user]}").read
        else
          return []
        end
      else
        return []
      end
      
      json = JSON.parse(output)
      
      return [] if json["rss"]["channel"]["item"].nil?
      
      return json["rss"]["channel"]["item"].map do |p|
        Photo.new(:title => p["title"]["cdata"], :src => p["fotoURL"], :description => p["description"]["cdata"], :published_at => p["pubDate"], :link => p["link"]["value"])
      end
    end
  end
end