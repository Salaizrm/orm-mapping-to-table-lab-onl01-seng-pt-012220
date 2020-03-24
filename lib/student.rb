class Student

  attr_writer :id, :name, :grade

  def initialize (id=nil,name,grade)



  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
