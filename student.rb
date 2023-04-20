require './person'
class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
puts '########################## Students ruby file #############################'

akash = Student.new(16, 12, 'Akash')
puts akash.name, akash.can_use_services?, akash.parent_permission?, akash.classroom, akash.play_hooky
