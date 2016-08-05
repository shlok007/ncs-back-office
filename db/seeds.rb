# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'DummyText'
dummy_text = DummyText.new
random = Random.new
users = ["admin" ,"editor"]

users.each do |role|
	User.create(name: "#{role}", email: "#{role}@hackncs.com", password: "12345678", password_confirmation: "12345678", club: "Programming", linkedin: "http://linked.com/in/user_#{role}", github: "http://github.com/user_#{role}", admission_no: "15/CS/#{random.rand(1..140)}")
end

User.first.add_role :admin
User.second.add_role :editor

(1..10).each do |id|
	Student.create(name: "Student ##{id}", email: "Student_#{id}@hackncs.com", year: random.rand(1..4), contact_no: 9717798598, admission_no: "15/CS/#{random.rand(1..120)}", )

	Event.create(name: "Event ##{id}", start_time: Time.now, end_time: Time.now, contact_info: dummy_text.generate_words(3), description: dummy_text.generate_words(10), venue: "Seminar Hall, AB-III")
end