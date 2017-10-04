# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Page.destroy_all
Section.destroy_all
Header.destroy_all
TextArea.destroy_all

page = Page.create(identifier: "home")

section_1 = Section.create(page: page, identifier: "left")

Header.create(identifier: "header-left", section: section_1, content: "Build it and they will come")

section_2 = Section.create(page: page, identifier: "right")

TextArea.create(identifier: "main-1", section: section_2, content: "We're going to get straight to the point; we like to build stuff. What kind of stuff? Places where people can connect, where they can gather. Places where people can find what they're looking for.")
TextArea.create(identifier: "main-2", section: section_2, content: "We love a challenge. Find us a group of people and a problem and we'll help you find, not only a great, but a beautiful solution. ")

