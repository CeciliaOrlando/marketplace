require "open-uri"
puts "destruyendo datos"
Reservation.destroy_all
Course.destroy_all
Academy.destroy_all
User.destroy_all

# Crear usuarios

puts "creando usuarios"
user1 = User.new(email: "cecilia@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/168267241?v=4")
user1.photo.attach(io: file, filename: "cecilia.png", content_type: "image/png")
user1.save!

user2 = User.create!(email: "sofia@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/168951353?v=4")
user2.photo.attach(io: file, filename: "sofia.png", content_type: "image/png")
user2.save!

user3 = User.create!(email: "david@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/119614171?v=4")
user3.photo.attach(io: file, filename: "david.png", content_type: "image/png")
user3.save!

user4 = User.create!(email: "alejandra@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/159148776?v=4")
user4.photo.attach(io: file, filename: "aleja.png", content_type: "image/png")
user4.save!

# Crear academias

puts "creando academias"
academy1 = Academy.new(name: "Academia de buceo 1", address: "Calle 1 # 1-1", user: user1, rating: 5, review: "Excelente academia de buceo")
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTyBZAFe7F8Yt33xrIvIprLDcVsR30AkO5rw&s")
academy1.photo.attach(io: file, filename: "buceo01.png", content_type: "image/png")
academy1.save!

academy2 = Academy.new(name: "Academia de buceo 2", address: "Calle 2 # 2-2", user: user2, rating: 4, review: "Buena academia de buceo")
file = URI.open("https://arenaldiving.com/wp-content/uploads/2022/04/SCUBA-DIVING-FOR-BEGINNERS.jpg")
academy2.photo.attach(io: file, filename: "buceo02.png", content_type: "image/png")
academy2.save!

academy3 = Academy.new(name: "Academia de buceo 3", address: "Calle 3 # 3-3", user: user3, rating: 3, review: "Regular academia de buceo")
file = URI.open("https://photo620x400.mnstatic.com/530751ddb402f10b2e46ed78a26efcf4/escuela-de-buceo.jpg")
academy3.photo.attach(io: file, filename: "buceo03.png", content_type: "image/png")
academy3.save!

# cursos academia 1

puts "creando cursos academia 1"
course1 = Course.new(name: "Curso de buceo 1", description: "Curso de buceo para niños", price: 100, academy: academy1)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTyBZAFe7F8Yt33xrIvIprLDcVsR30AkO5rw&s")
course1.photos.attach(io: file, filename: "niños_01.png", content_type: "image/png")
course1.save!

course2 = Course.new(name: "Curso de buceo 2", description: "Curso de buceo para niños 2", price: 200, academy: academy1)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTyBZAFe7F8Yt33xrIvIprLDcVsR30AkO5rw&s")
course2.photos.attach(io: file, filename: "niños_02.png", content_type: "image/png")
course2.save!

course3 = Course.new(name: "Curso de buceo 3", description: "Curso de buceo para niños 3", price: 150, academy: academy1)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTyBZAFe7F8Yt33xrIvIprLDcVsR30AkO5rw&s")
course3.photos.attach(io: file, filename: "niños_03.png", content_type: "image/png")
course3.save!

course4 = Course.new(name: "Curso de buceo 4", description: "Curso de buceo para niños 4", price: 300, academy: academy1)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTyBZAFe7F8Yt33xrIvIprLDcVsR30AkO5rw&s")
course4.photos.attach(io: file, filename: "niños_04.png", content_type: "image/png")
course4.save!

# cursos academia 2

puts "creando cursos academia 2"
course5 = Course.new(name: "Curso de buceo 1", description: "Curso de buceo para todos", price: 100, academy: academy2)
file = URI.open("https://arenaldiving.com/wp-content/uploads/2022/04/SCUBA-DIVING-FOR-BEGINNERS.jpg")
course5.photos.attach(io: file, filename: "todos_01.png", content_type: "image/png")
course5.save!

course6 = Course.new(name: "Curso de buceo 2", description: "Curso de buceo para todos 2", price: 200, academy: academy2)
file = URI.open("https://arenaldiving.com/wp-content/uploads/2022/04/SCUBA-DIVING-FOR-BEGINNERS.jpg")
course6.photos.attach(io: file, filename: "todos_02.png", content_type: "image/png")
course6.save!

course7 = Course.new(name: "Curso de buceo 3", description: "Curso de buceo para todos 3", price: 150, academy: academy2)
file = URI.open("https://arenaldiving.com/wp-content/uploads/2022/04/SCUBA-DIVING-FOR-BEGINNERS.jpg")
course7.photos.attach(io: file, filename: "todos_03.png", content_type: "image/png")
course7.save!

course8 = Course.new(name: "Curso de buceo 4", description: "Curso de buceo para todos 4", price: 300, academy: academy2)
file = URI.open("https://arenaldiving.com/wp-content/uploads/2022/04/SCUBA-DIVING-FOR-BEGINNERS.jpg")
course8.photos.attach(io: file, filename: "todos_04.png", content_type: "image/png")
course8.save!

# cursos academia 3

puts "creando cursos academia 3"
course9 = Course.new(name: "Curso de buceo 1", description: "Curso de buceo para adultos 1", price: 100, academy: academy3)
file = URI.open("https://photo620x400.mnstatic.com/530751ddb402f10b2e46ed78a26efcf4/escuela-de-buceo.jpg")
course9.photos.attach(io: file, filename: "todos_01.png", content_type: "image/png")
course9.save!

course10 = Course.new(name: "Curso de buceo 2", description: "Curso de buceo para adultos 2", price: 200, academy: academy3)
file = URI.open("https://photo620x400.mnstatic.com/530751ddb402f10b2e46ed78a26efcf4/escuela-de-buceo.jpg")
course10.photos.attach(io: file, filename: "todos_02.png", content_type: "image/png")
course10.save!

course11 = Course.new(name: "Curso de buceo 3", description: "Curso de buceo para adultos 3", price: 150, academy: academy3)
file = URI.open("https://photo620x400.mnstatic.com/530751ddb402f10b2e46ed78a26efcf4/escuela-de-buceo.jpg")
course11.photos.attach(io: file, filename: "todos_03.png", content_type: "image/png")
course11.save!

course12 = Course.new(name: "Curso de buceo 4", description: "Curso de buceo para adultos 4", price: 300, academy: academy3)
file = URI.open("https://photo620x400.mnstatic.com/530751ddb402f10b2e46ed78a26efcf4/escuela-de-buceo.jpg")
course12.photos.attach(io: file, filename: "todos_04.png", content_type: "image/png")
course12.save!

# reservas

puts "creando reservas"
Reservation.create!(user: user1, course: course1, reservation_date: Date.today, price: course1.price)

Reservation.create!(user: user1, course: course2, reservation_date: Date.today, price: course2.price)

Reservation.create!(user: user1, course: course4, reservation_date: Date.today, price: course4.price)

Reservation.create!(user: user2, course: course5, reservation_date: Date.today, price: course5.price)
