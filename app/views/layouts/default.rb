# encoding: utf-8

module Views
  module Layouts
    class Default < Mustache
      def title
        @title || "Valéria"
      end
    end
  end
end
