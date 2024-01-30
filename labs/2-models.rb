# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# ^ for these, he means to manually click into the schema and model files on the left

#2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new

puts new_salesperson.inspect

new_salesperson["first_name"] = "Nick"
new_salesperson["last_name"] = "Ahern"
new_salesperson["email"] = "husband@anna.com"
new_salesperson.save

puts new_salesperson.inspect

new_salesperson2 = Salesperson.new
new_salesperson2["first_name"] = "Iris"
new_salesperson2["last_name"] = "Wickham"
new_salesperson2["email"] = "sister@anna.com"
new_salesperson2.save

puts new_salesperson2.inspect

# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople"

# 4. modify/update column data for a row in the salespeople table.

Nick = Salesperson.find_by({"last_name" => "Ahern"})
Nick["first_name"] = "Nicholas"
Nick.save
puts Nick["first_name"]

# CHALLENGE:
# 5. write code to display each salesperson's full name

puts "Salespeople: #{Salesperson.all.count}"

Iris = Salesperson.find_by({"first_name" => "Iris"})

puts "#{Nick["first_name"]} #{Nick["last_name"]}"
puts "#{Iris["first_name"]} #{Iris["last_name"]}"