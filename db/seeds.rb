# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# seeds.rb
# seeds.rb
require 'faker'

# Limpiar la base de datos antes de agregar nuevos datos
puts "Limpiando la base de datos..."
Character.destroy_all

# Método para generar datos ficticios de Harry Potter
def generate_harry_potter_data
  20.times do
    name = Faker::HarryPotter.character
    location = Faker::HarryPotter.location
    house = Faker::HarryPotter.house

    Character.create!(
      name: name,
      location: location,
      house: house
    )
  end
end

puts "Generando datos de Harry Potter..."
generate_harry_potter_data

puts "¡Datos de Harry Potter generados con éxito!"

