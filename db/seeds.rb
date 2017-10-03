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

TextArea.create(identifier: "main", section: section_2, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos non quibusdam voluptate amet ullam nemo est, perferendis accusamus repudiandae. Dolor.")