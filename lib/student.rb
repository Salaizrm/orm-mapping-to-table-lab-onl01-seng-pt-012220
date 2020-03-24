require_relative "../config/environment.rb"

class Student

  attr_reader :id
  attr_accessor :name, :grade

  def initialize (id=nil, name, grade)
    @id = id
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS student (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
    );
    SQL
    DB[:conn].execute(sql)
  end





  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
