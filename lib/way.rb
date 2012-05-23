module ActionView
  class PartialRenderer
    def way_render_partial
      content = render_partial_copy
      if @view.controller && @view.controller.params.has_key?('_way')
        content << "#{@template.inspect}"
      end
      content
    end
    
    alias_method :render_partial_copy, :render_partial
    alias_method :render_partial, :way_render_partial
  end

  class Base
    def render_partial options = {}
      local_assigns = options[:locals] || {}

      case partial_path = options[:partial]
      when String, Symbol, NilClass
        if options.has_key?(:collection)
          render_partial_collection(options)
        else
          partial_template = _pick_partial_template(partial_path)
          partial_content = partial_template.render_partial(self, options[:object], local_assigns)

          if self.controller && self.controller.params.has_key?('_way')
            partial_content << "app/views/#{partial_template.to_s}"
          end

          partial_content
        end
      when ActionView::Helpers::FormBuilder
        builder_partial_path = partial_path.class.to_s.demodulize.underscore.sub(/_builder$/, '')
        local_assigns.merge!(builder_partial_path.to_sym => partial_path)
        render_partial(:partial => builder_partial_path, :object => options[:object], :locals => local_assigns)
      else
        if Array === partial_path ||
          (defined?(ActiveRecord) &&
           (ActiveRecord::Associations::AssociationCollection === partial_path ||
            ActiveRecord::NamedScope::Scope === partial_path))
          render_partial_collection(options.except(:partial).merge(:collection => partial_path))
        else
          object = partial_path
          render_partial(
            :partial => ActionController::RecordIdentifier.partial_path(object, controller.class.controller_path),
            :object => object,
            :locals => local_assigns
          )
        end
      end
    end
  end
end
