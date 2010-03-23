module Sapo
  module Blogs
    class Post
      attr_accessor :title, :link, :author, :created_at, :description, :blog
    end
    
    # FIXME: add sort and pagination options
    def self.search(query)
      output = open("http://services.sapo.pt/Blogs/JSON/Search?q=#{CGI.escape(query)}").read
      json = JSON.parse(output)
      
      return json["rss"]["channel"]["item"].map do |p|
        post = Post.new
        post.title      = p["title"]
        post.link       = p["link"]
        post.author     = p["author"]
        post.created_at = p["sapo:created"]
        post.description= p["description"]
        post.blog       = p["source"]["url"]
        post
      end
    end
  end
end