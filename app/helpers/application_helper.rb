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
end
