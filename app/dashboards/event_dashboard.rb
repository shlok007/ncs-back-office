require "administrate/base_dashboard"

class EventDashboard < Administrate::BaseDashboard
    # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    start_time: Field::DateTime,
    end_time: Field::DateTime,
    display_start_time: Field::DateTime,
    display_end_time: Field::DateTime,
    description: Field::Text,
    contact_info: Field::String,
    venue: Field::Text,
    poster: PaperclipField,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :start_time,
    :end_time,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :start_time,
    :end_time,
    :display_start_time,
    :display_end_time,
    :poster,
  ]
end
