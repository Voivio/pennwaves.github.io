# src: https://github.com/uslc-lab/uslc-lab.github.io/blob/main/_plugins/hideCustomBibtex.rb

module Jekyll
    module HideCustomBibtex
      def hideCustomBibtex(input)
        keywords = @context.registers[:site].config['filtered_bibtex_keywords']
        keywords.each do |keyword|
          input = input.gsub(/^.*#{keyword}.*$\n/, '')
        end
        return input
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::HideCustomBibtex)