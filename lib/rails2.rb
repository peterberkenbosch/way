module ActionView
  class Base
    include Way
    
    def way_render_partial options = {}
      partial_content = render_partial_copy options
      partial_template = _pick_partial_template(options[:partial])

      if show_partial_path? self.controller
        partial_content << "app/views/#{partial_template.to_s}"
      end

      partial_content
    end

    alias_method :render_partial_copy, :render_partial
    alias_method :render_partial, :way_render_partial
  end
end
