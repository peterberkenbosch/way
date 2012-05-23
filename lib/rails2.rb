module ActionView
  class Base
    def way_render_partial options = {}
      partial_content = render_partial_copy options
      partial_template = _pick_partial_template(options[:partial])

      if self.controller && self.controller.params.has_key?('_way')
        partial_content << "app/views/#{partial_template.to_s}"
      end

      partial_content
    end

    alias_method :render_partial_copy, :render_partial
    alias_method :render_partial, :way_render_partial
  end
end
