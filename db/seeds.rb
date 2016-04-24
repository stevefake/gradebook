# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t1 = Teacher.create(first_name: 'Timothy', last_name: 'O\'Neill', email: 'timothy@email.com')
t2 = Teacher.create(first_name: 'Anthony', last_name: 'DeMartino', email: 'anthony@email.com')
s1 = Student.create(first_name: 'Daria', last_name: 'Morgendorffer', email: 'daria@email.com', teacher_id: t1.id)
s2 = Student.create(first_name: 'Jane', last_name: 'Lane', email: 'jane@email.com', teacher_id: t2.id)
Parent.create(first_name: 'Helen', last_name: 'Morgendorffer', email: 'helen@email.com', student_id: s1.id)
Parent.create(first_name: 'Amanda', last_name: 'Lane', email: 'amanda@email.com', student_id: s2.id)
g1 = Grade.create(assignment_name: "Algebraic Expressions", assignment_date: Date.today, assignment_grade: "A", student_id: s1.id)
g2 = Grade.create(assignment_name: "African Art", assignment_date: Date.today, assignment_grade: "B", student_id: s2.id)

timothy = User.create(password: 'Timothy1', role: 'teacher', teacher_id: t1.id)
daria = User.create(password: 'Daria1', role: 'student', student_id: s1.id)
helen = User.create(password: 'Helen1', role: 'parent', student_id: s1.id)
anthony = User.create(password: 'Anthony1', role: 'teacher', teacher_id: t2.id)
jane = User.create(password: 'Jane1', role: 'student', student_id: s2.id)
amanda = User.create(password: 'Amanda1', role: 'parent', student_id: s2.id)
tom = User.create(password: 'Tom1')
