# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Galerie.destroy_all
  		results = Cloudinary::Api.resources_by_tag("Viivan", max_results: 110)
  		jon = results.first[1]
  		jon.each do |image|
			beach = Galerie.new(nom: image['public_id'], url: image['url'])
			beach.save!

		end

