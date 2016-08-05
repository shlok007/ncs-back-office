require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    name: Field::String,
    email: Field::String,
    year: Field::Number,
    club: Field::String,
    year: Field::Number,
    linkedin: Field::String,
    github: Field::String,
    admission_no: Field::String,
    contact_no: Field::Number,
    password: Field::String,
    password_confirmation: Field::String,
    profile_pic: PaperclipField,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :email,
    :year,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :email,
    :year,
    :club,
    :linkedin,
    :github,
    :admission_no,
    :contact_no,
    :profile_pic,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :email,
    :year,
    :club,
    :linkedin,
    :github,
    :admission_no,
    :contact_no,
    :password,
    :password_confirmation,
    :profile_pic,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
