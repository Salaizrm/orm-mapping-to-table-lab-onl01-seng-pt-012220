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
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
    );
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
    DROP TABLE students;
    SQL
    DB[:conn].execute(sql)
  end

  def save
    sql = <<-SQL
    INSERT INTO students (name,grade) VALUES (?,?);
    SQL
    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT MAX(ID) AS LastID FROM students")[0][0]
  end

  def self.create(name:, grade:)
    students = self.new(name, grade)
    students.save
    students
  end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
