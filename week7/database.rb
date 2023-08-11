require 'sqlite3'

# Open a SQLite 3 database file
db = SQLite3::Database.new 'file.db'
# Create a table
db.execute 'DROP TABLE IF EXISTS EMPLOYEE'
result = db.execute('  CREATE TABLE Employee ( empid INTEGER Primary Key autoincrement,   name VARCHAR(30),    experience INT  );')
# Insert some data into it
{ 'Sam K' => 25, 'David D' => 20 }.each do |pair|
  db.execute 'insert into employee(name,experience) values (?, ?)', pair
end
# LAST ID
puts db.last_insert_row_id
# Find some records
stm = db.prepare 'SELECT * FROM employee'
rs = stm.execute
rs.each do |row|
  puts row[0],row[1]
end
stm.close  if stm
db.close if db
