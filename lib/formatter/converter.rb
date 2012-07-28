module Formatter
  module Converter
    FILTERS = [
      ->(text) { Kramdown::Document.new(text, coderay_default_lang: 'ruby', coderay_line_numbers: nil).to_html },
      Typogruby.public_method(:improve)
    ]

    module_function

    def convert(text)
      FILTERS.inject(text) do |result, filter|
        filter.call(result)
      end
    end
  end
end
