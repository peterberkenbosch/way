module Way
  def show_partial_path? controller
    controller && controller.respond_to?(:params) && controller.params.has_key?('_way')
  end
end
