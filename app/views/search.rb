# encoding: utf-8
require 'open-uri'

module Views
  class Search < Mustache
    def images
      parser = Nokogiri::HTML(open(@url.to_url).read)
      imgs = parser.search('img')
      imgs.map{|i| {url: i.attr('src')} }
    end
  end
end


class String
  def to_url
    url = self
    unless url[/^http:\/\//] || url[/^https:\/\//]
      url = 'http://' + url
    end
    url.downcase
  end
end
