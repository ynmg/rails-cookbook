# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# name description image_url rating

Recipe.destroy_all

puts "Creating recipes..."
egg_fried_rice = Recipe.create!(name: "egg fried rice", description: "Make your own healthy egg-fried rice with our easy recipe. Use leftover rice, or cook and dry it on a plate before using so it doesn't stick to the wok", image_url: "https://www.seriouseats.com/thmb/zO80j7KGl3j2k3vgrNVahBWUQBk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/20230529-SEA-EggFriedRice-AmandaSuarez-hero-c8d95fbf69314b318bc279159f582882.jpg", rating: 4.1)
strawberry_smoothie = Recipe.create!(name: "strawberry smoothie", description: "A creamy breakfast-friendly blend that's high in calcium and low in calories", image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/berry-smoothie-5543fc2.jpg?quality=90&webp=true&resize=440,400", rating: 4)
banana_smoothie = Recipe.create!(name: "banana smoothie", description: "A creamy breakfast-friendly blend that's high in calcium and low in calories", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLw1Ou8CS7Iam0jc9l9MpMeJHLnZ0oA9a_n4kzfVzry4S7q2E1AA&s=10&ec=72940545", rating: 4.5)
avocado_smoothie = Recipe.create!(name: "avocado smoothie", description: "A creamy breakfast-friendly blend that's high in calcium and low in calories", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZnoxoHbPsWUm6TbdR0Ahbv9oiq5XErIGI0oDnqRuFva-WKA4Osw&s=10&ec=72940545", rating: 3.9)

puts "#{Recipe.count} recipes created!"
