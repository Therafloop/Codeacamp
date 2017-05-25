students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]
def students(students)
best_students = []
  students.each do |e|
    e.each do |a|
      if a[1] == 10
        best_students << a[0]
      end 
    end
  end
  best_students
end
p students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

#Pseudocodigo
=begin
def students (Students) 
  best_students = Array.new
    split the list with an .each do |e|
      split "e" with .each do |a| (We haven each student and his number at one array each one)
      	if the number of the student is 10 push the student name to the new array (best_students)
      	end
      end
    end
  array with the student0's name who have the number 10
end
students(lista de estudiantes)