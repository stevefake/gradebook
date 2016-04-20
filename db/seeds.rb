# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


timothy = User.create(first_name: 'Timothy', last_name: 'O\'Neill', email: 'timothy@email.com', password_digest: 'Timothy1', role: 'teacher')
daria = User.create(first_name: 'Daria', last_name: 'Morgendorffer', email: 'daria@email.com', password_digest: 'Daria1', role: 'student')
helen = User.create(first_name: 'Helen', last_name: 'Morgendorffer', email: 'helen@email.com', password_digest: 'Helen1', role: 'parent')
tom = User.create(first_name: 'Tom', last_name: 'Sloane', email: 'tom@email.com', password_digest: 'Tom1')

t1 = Teacher.create(first_name: 'Timothy', last_name: 'O\'Neill', email: 'timothy@email.com', password_digest: 'Timothy1')
s1 = Student.create(first_name: 'Daria', last_name: 'Morgendorffer', email: 'daria@email.com', password_digest: 'Daria1', teacher_id: t1.id)
Parent.create(first_name: 'Helen', last_name: 'Morgendorffer', email: 'helen@email.com', password_digest: 'Helen1', student_id: s1.id)
g1 = Grade.create(assignment_name: "Algebraic Expressions", assignment_date: Date.today, assignment_grade: "A", student_id: s1.id)
