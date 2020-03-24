class Student

  attr_accessor :id, :name, :grade

  def initialize (id=nil,name,grade)
    @id = id
    @name = name
    @grade = grade
  end

  def self.table
    sql = <<-SQL
    CREATE TABLE IS NOT EXIST song 

    SQL



  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
