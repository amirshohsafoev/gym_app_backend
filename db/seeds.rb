# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
PartOfTheBody.destroy_all
UserExercise.destroy_all

bob = User.create(email:"boby@gmail.com", first_name: 'bob',last_name: 'boby', picture_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPNxXxQ0xzsZw7xYo6gttyvSxRLE7fe5TxbF-duOMi_GpRjDLHtQ', age: 30, weight: 320, height: '7 feet 5 in',  password: "encryptedstuff")



chest = PartOfTheBody.create(body_name: "Chest", picture_url: "https://cdn.muscleandstrength.com/sites/default/files/taxonomy/image/videos/chest_0.jpg")

leg = PartOfTheBody.create(body_name: "Leg", picture_url: "https://cdn.muscleandstrength.com/sites/default/files/taxonomy/image/videos/quads_1.jpg")

shoulder = PartOfTheBody.create(body_name: "Shoulder", picture_url: "https://cdn.muscleandstrength.com/sites/default/files/taxonomy/image/videos/shoulders_0.jpg")

abs = PartOfTheBody.create(body_name: "Abs", picture_url: "https://cdn.muscleandstrength.com/sites/default/files/taxonomy/image/videos/abs_0.jpg")

back = PartOfTheBody.create(body_name: "Back", picture_url: "https://cdn.muscleandstrength.com/sites/default/files/taxonomy/image/videos/upperback.jpg")

triceps = PartOfTheBody.create(body_name: "Triceps", picture_url: "https://cdn.muscleandstrength.com/sites/default/files/taxonomy/image/videos/triceps_0.jpg")

biceps = PartOfTheBody.create(body_name: "Biceps", picture_url: "https://cdn.muscleandstrength.com/sites/default/files/taxonomy/image/videos/biceps_0.jpg")

barberllBenchPress = machineFly = Exercise.create(
exercise_name: "Barbell bench press",
description: "Main Muscle Group : Chests",
base_reps: 10,
base_sets: 4,
base_weight: 70,
picture1_url: "http://www.kulturistika.kvalitne.cz/css/cviky/prsa/incline_barbell_press.jpg",
picture2_url: "http://www.kulturistika.kvalitne.cz/css/cviky/prsa/incline_barbell_press.jpg",
part_of_the_body_id: chest.id )

machineFly = Exercise.create(
exercise_name: "Machine Fly",
description: "Main Muscle Group : Chests",
base_reps: 8,
base_sets: 4,
base_weight: 35,
picture1_url: "https://weighttraining.guide/wp-content/uploads/2016/12/Machine-Fly.png",
picture2_url: "https://weighttraining.guide/wp-content/uploads/2016/12/Machine-Fly.png",
part_of_the_body_id: chest.id )

squat = Exercise.create(
exercise_name: "Squat",
description: "Main Muscle Group : Legs",
base_reps: 8,
base_sets: 4,
base_weight: 80,
picture1_url: "https://banner2.kisspng.com/20180617/gcw/kisspng-squat-barbell-exercise-weight-training-lunge-barbell-squat-5b264642bce9a1.3596192015292350107738.jpg",
picture2_url: "https://banner2.kisspng.com/20180617/gcw/kisspng-squat-barbell-exercise-weight-training-lunge-barbell-squat-5b264642bce9a1.3596192015292350107738.jpg",
part_of_the_body_id: leg.id )

legPress = Exercise.create(
exercise_name: "Leg press",
description: "Main Muscle Group : Legs",
base_reps: 10,
base_sets: 4,
base_weight: 75,
picture1_url: "https://i.pinimg.com/originals/4f/50/75/4f5075455e10b91bc811ead8c8745c9a.png",
picture2_url: "https://i.pinimg.com/originals/4f/50/75/4f5075455e10b91bc811ead8c8745c9a.png",
part_of_the_body_id: leg.id )

dumbbellShoulderPress = Exercise.create(
exercise_name: "Dumbbell shoulder press",
description: "Main Muscle Group : Shoulders",
base_reps: 12,
base_sets: 4,
base_weight: 20,
picture1_url: "https://static1.squarespace.com/static/55e406fbe4b0b03c5e7543ae/t/593864c2cd0f68b9f2879b2e/1496868041256/Standing+Dumbbell+Shoulder+Press",
picture2_url: "https://static1.squarespace.com/static/55e406fbe4b0b03c5e7543ae/t/593864c2cd0f68b9f2879b2e/1496868041256/Standing+Dumbbell+Shoulder+Press",
part_of_the_body_id: shoulder.id )

bentOverDumbellRaise = Exercise.create(
exercise_name: "Bent-over dumbbell raise ",
description: "Main Muscle Group : Shoulders",
base_reps: 12,
base_sets: 4,
base_weight: 20,
picture1_url: "http://3.bp.blogspot.com/-z3TZUpRk4go/UmkuvVPNfoI/AAAAAAAAAYk/yCt-yiJvrFg/s1600/Bent_over_rear_delt_row_with_head_on_bench.png",
picture2_url: "http://3.bp.blogspot.com/-z3TZUpRk4go/UmkuvVPNfoI/AAAAAAAAAYk/yCt-yiJvrFg/s1600/Bent_over_rear_delt_row_with_head_on_bench.png",
part_of_the_body_id: shoulder.id )

machine = UserExercise.create(reps: 10, sets: 5, weight: 40, user_id: bob.id, exercise_id: machineFly.id)
userLegPress = UserExercise.create(reps: 10, sets: 5, weight: 40, user_id: bob.id, exercise_id: legPress.id)
puts("done!")
