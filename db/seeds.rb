# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t1 = Teacher.create(first_name: 'Timothy', last_name: 'O\'Neill', email: 'timothy@email.com')
s1 = Student.create(first_name: 'Daria', last_name: 'Morgendorffer', email: 'daria@email.com', teacher_id: t1.id)
Parent.create(first_name: 'Helen', last_name: 'Morgendorffer', email: 'helen@email.com', student_id: s1.id)
g1 = Grade.create(assignment_name: "Algebraic Expressions", assignment_date: Date.today, assignment_grade: "A", student_id: s1.id)

timothy = User.create(first_name: 'Timothy', last_name: 'O\'Neill', email: 'timothy@email.com', password: 'Timothy1', role: 'teacher', teacher_id: t1.id)
daria = User.create(first_name: 'Daria', last_name: 'Morgendorffer', email: 'daria@email.com', password: 'Daria1', role: 'student', student_id: s1.id)
helen = User.create(first_name: 'Helen', last_name: 'Morgendorffer', email: 'helen@email.com', password: 'Helen1', role: 'parent', student_id: s1.id)
tom = User.create(first_name: 'Tom', last_name: 'Sloane', email: 'tom@email.com', password: 'Tom1')
