module ActionView
  class PartialRenderer
    def way_render_partial
      partial_content = render_partial_copy

      if @view.controller && @view.controller.params.has_key?('_way')
        partial_content << "#{@template.inspect}"
      end

      partial_content
    end

    alias_method :render_partial_copy, :render_partial
    alias_method :render_partial, :way_render_partial
  end
end
