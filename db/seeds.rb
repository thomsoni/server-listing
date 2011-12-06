# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Server.delete_all

Server.find_or_create_by_name(:name => "FS2", :ip => "0.0.0.0", :location => "Unassigned")
Server.find_or_create_by_name(:name => "FS3", :ip => "10.2.1.3", :location => "Computer Room Rack #3")
Server.find_or_create_by_name(:name => "FS4", :ip => "10.2.1.4", :location => "Computer Room Rack #3")
Server.find_or_create_by_name(:name => "FS5", :ip => "10.2.1.5", :location => "Computer Room Rack #1")
Server.find_or_create_by_name(:name => "FS6", :ip => "0.0.0.0", :location => "Unassigned")
Server.find_or_create_by_name(:name => "FS7", :ip => "10.2.1.1", :location => "Computer Room Rack #3")
Server.find_or_create_by_name(:name => "FS8", :ip => "10.2.1.8", :location => "Computer Room Rack #3")
Server.find_or_create_by_name(:name => "FS9", :ip => "0.0.0.0", :location => "Unassigned")
Server.find_or_create_by_name(:name => "FS10", :ip => "10.2.1.10", :location => "Computer Room Rack #3")
Server.find_or_create_by_name(:name => "FS11", :ip => "0.0.0.0", :location => "Unassigned")
Server.find_or_create_by_name(:name => "FS12", :ip => "10.2.1.12", :location => "Computer Room Rack #1")
Server.find_or_create_by_name(:name => "FS13", :ip => "10.2.1.13", :location => "Computer Room Rack #2")
Server.find_or_create_by_name(:name => "FS14", :ip => "10.2.1.14", :location => "Computer Room Rack #1")
Server.find_or_create_by_name(:name => "FS15", :ip => "10.2.1.15", :location => "Computer Room Rack #1")
Server.find_or_create_by_name(:name => "FS16", :ip => "10.2.1.16", :location => "Computer Room Rack #3")
Server.find_or_create_by_name(:name => "FS17", :ip => "10.2.1.17", :location => "Computer Room Rack #3")
Server.find_or_create_by_name(:name => "FS18", :ip => "10.2.1.18", :location => "Computer Room Rack #3")
Server.find_or_create_by_name(:name => "FS19", :ip => "10.2.1.19", :location => "Computer Room Rack #1")
Server.find_or_create_by_name(:name => "FS20", :ip => "10.2.1.86", :location => "Computer Room Rack #3")


# Server.find_or_create_by_name(:name =>"FS3", ip: => "10.2.1.3l", location => "Unassigned", osver =>
