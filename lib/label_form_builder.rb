class LabelFormBuilder < ActionView::Helpers::FormBuilder
helpers = field_helpers + %w(date_select datetime_select time_select) + %w(collection_select select country_select time_zone_select) - %w(hidden_field label fields_for)
helpers.each do |name| define_method(name) do |field, *args|
options = args.last.is_a?(Hash) ? args.pop : {}
@template.content_tag(:p, label(field) + super) end
end end