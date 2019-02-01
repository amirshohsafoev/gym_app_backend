# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
PartOfTheBody.destroy_all


bob = User.create(email:"boby@gmail.com", first_name: 'bob',last_name: 'boby', picture_url: 'https://www.google.com/imgres?imgurl=http
s%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F378800000185757087%2F7e436842e9e0c26e0ef36796161060e5_400x400.jpeg&imgrefu
rl=https%3A%2F%2Ftwitter.com%2Ffsbigbob&docid=ETPK-ciZbMZ-lM&tbnid=0EqX-9kumHYH6M%3A&vet=10ahUKEwi0oYuKx5jgAhUExoMKHS
hzD5MQMwhGKAwwDA..i&w=400&h=400&bih=1112&biw=2133&q=bob&ved=0ahUKEwi0oYuKx5jgAhUExoMKHShzD5MQMwhGKAwwDA&iact=mrc&uact
=8', age: 30, weight: 320, height: '7 feet 5 in',  password_digest: "encryptedstuff")



chest = PartOfTheBody.create(body_name: "chest", picture_url: "https://www.google.com/imgres?imgurl=http%3A%2F%2
Floverszone.club%2Fwp-content%2Fuploads%2F2018%2F03%2Fanatomy-of-chest-chest-muscles-major-and-minor-anatomy-muscles-
isolated-on-white-illustration-anatomy-gym-chester.jpg&imgrefurl=http%3A%2F%2Floverszone.club%2Fanatomy-of-chest%2F&d
ocid=EWKCwPK1wKCgtM&tbnid=jj0UmO_skF3kFM%3A&vet=10ahUKEwjDsZyJiJngAhUNWN8KHRwVCNAQMwidAShRMFE..i&w=450&h=450&bih=1112
&biw=2133&q=%20chest%20muscles%20gym%20anatomy%20&ved=0ahUKEwjDsZyJiJngAhUNWN8KHRwVCNAQMwidAShRMFE&iact=mrc&uact=8")

machineFly = Exercise.create(exercise_name: "Machine Fly", description: "Main Muscle Group : Chest

Detailed Muscle Group : Outer Chest

Type : Strength

Mechanics : Compound

Equipment : Machine - Strength",
base_reps: 8, base_sets: 4, base_weight: 35, picture1_url: "https://www.jefit.com/images/exercises/800_600/180.jpg", picture2_url: "https://www.jefit.com/images/exercises/800_600/181.jpg", part_of_the_body_id: chest.id )

machine = UserExercise.create(reps: 10, sets: 5, weight: 40, user_id: bob.id, exercise_id: machineFly.id)
puts("done!")
