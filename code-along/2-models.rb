# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Firm.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

puts "There are #{Firm.all.count} companies"

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table

new_company = Firm.new

#puts new_company.inspect

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://www.apple.com"
new_company.save

puts new_company.inspect

puts "There are #{Firm.all.count} companies"

new_company2 = Firm.new
new_company2["name"] = "Amazon"
new_company2["city"] = "Seattle"
new_company2["state"] = "WA"
new_company2.save

#puts "There are #{Firm.all.count} companies"

new_company3 = Firm.new
new_company3["name"] = "Twitter"
new_company3["city"] = "San Francisco"
new_company3["state"] = "CA"
new_company3["url"] = "https://www.twitter.com"
new_company3.save

puts "There are #{Firm.all.count} companies"

# 3. query companies table to find all row with California company

all_companies = Firm.all
#puts all_companies.inspect

cali_companies = Firm.where({"state"=>"CA"})
#puts cali_companies.inspect

#puts "Companies in California: #{cali_companies.count}"

# 4. query companies table to find single row for Apple

apple = Firm.find_by({"name" => "Apple"})
#puts apple.inspect

# 5. read a row's column value

#can only do this if you pre-define 'apple' above
#puts apple["url"]

# 6. update a row's column value
amazon = Firm.find_by({"name" => "Amazon"})
amazon["url"] = "https://www.amazon.com"
# SQL code needed to update record: UPDATE companies SET URL = "amazon.com" WHERE
amazon.save

# 7. delete a row

twitter = Firm.find_by({"name" => "Twitter"})
twitter.destroy

puts "There are #{Firm.all.count} companies"
