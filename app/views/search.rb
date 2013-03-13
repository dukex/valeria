# encoding: utf-8
require 'open-uri'

module Views
  class Search < Mustache
    def images
      parser = Nokogiri::HTML(open(@url).read)
      imgs = parser.search('img')
      imgs.map{|i| {url: i.attr('src')} }
    end
  end
end

