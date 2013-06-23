module Jekyll
  require 'less'
  class LessConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /less/i
    end

    def output_ext(ext)
      ".css"
    end

    def convert(content)
      parser = Less::Parser.new
      tree = parser.parse(content)
      tree.to_css(:compress => true)
    end
  end
end