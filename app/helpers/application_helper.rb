# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def error_handling_form_for(record_or_name_or_array, *args, &proc) 
    options = args.detect { |argument| argument.is_a?(Hash) } 
    if options.nil?
      options = {:builder => ErrorHandlingFormBuilder}
      args << options
    end 
    options[:builder] = ErrorHandlingFormBuilder unless options.nil? 
    form_for(record_or_name_or_array, *args, &proc)
  end
  def add_estudiante_link(name) link_to_function name do |page|
  page.insert_html :bottom, :tasks, :partial => 'task', :object => Estudiante.new
  end end
end
